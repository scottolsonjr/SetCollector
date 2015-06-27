--
-- Item Tooltips
--

local _L = SetCollectorLocalization
local origTooltips = {};

local function T17(itemID, bonusID)
	local itemString = ""
	if itemID ~= nil and bonusID ~= nil then
		itemString = "item:"..itemID..":0:0:0:0:0:0:0:0:0:491:1:"..bonusID
	else
		itemString = itemID
	end
	return itemString
end

local function GetIDFromLink(link)
	if link == nil then return 0; end
	local id = string.match(link, "item:(%d+)");
	return tonumber(id);
end

local function GetBonusFromLink(link)
	if link == nil then return 0; end
	local bonus = string.match(link, ":1:(%d+)");
	return bonus;
end

local function OnTooltipSetItemHook(tooltip, ...)
	local itemName, itemLink = tooltip:GetItem()
	local itemID, itemString
	
	--tooltip:AddLine(itemLink:gsub("|","!"), 1, 1, 0);		-- For troubleshooting itemLink and itemString issues
	
	if itemLink then
		itemID = T17(GetIDFromLink(itemLink),GetBonusFromLink(itemLink))
		if not SetCollectorDB.Items[itemID] then
			itemID = GetIDFromLink(itemLink)
		end
	end
	
	if (itemID and SetCollectorDB.Items[itemID]) then
		local collection = SetCollectorDB.Items[itemID].collection
		local set = SetCollectorDB.Items[itemID].set
		local variant = SetCollectorDB.Items[itemID].variant
		local text, setID, roleText, variantText
		
		if (SetCollectorDB[collection].Sets[set].TooltipID) then
			text = _L[SetCollectorDB[collection].Sets[set].TooltipID] or SetCollectorDB[collection].Sets[set].TooltipID
		else
			if text then text = text.._L[SetCollectorDB[collection].Sets[set].Title] or _L["MISSING_LOCALIZATION"]; else text = _L[SetCollectorDB[collection].Sets[set].Title] or _L["MISSING_LOCALIZATION"]; end
		end
		
		if (SetCollectorDB[collection].Sets[set].Role and SetCollectorDB[collection].Sets[set].Role ~= "Any") then
			roleText = _L[SetCollectorDB[collection].Sets[set].Role] or SetCollectorDB[collection].Sets[set].Role or _L["MISSING_LOCALIZATION"]
			if text then text = text.." "..roleText; else text = " "..roleText; end
		end
		
		if (#SetCollectorDB[collection].Sets[set].Variants > 1) then
			variantText = _L[SetCollectorDB[collection].Sets[set].Variants[variant].Title] or _L["MISSING_LOCALIZATION"]
			if text then text = text.." ["..variantText.."]"; else text = " ["..variantText.."]"; end
		end
		
		-- Display count
		--if (SetCollectorDB[collection].Sets[set].Variants[variant].Count and SetCollectorDB[collection].Sets[set].Variants[variant].Count > 0) then
		--	if text then text = text.." (?/"..SetCollectorDB[collection].Sets[set].Variants[variant].Count..")"; else text = " (?/"..SetCollectorDB[collection].Sets[set].Variants[variant].Count..")"; end
		--end
		
		if ( text and text ~= "" ) then
			tooltip:AddLine(ITEM_SET_BONUS:format(text), 1, 1, 0);
		end
	end
	if origTooltips[tooltip] then
		return origTooltips[tooltip](tooltip, ...);
	end
end

local hookTooltips = {};
function SetCollector_SetupTooltips()
	hookTooltips[GameTooltip] = 1; -- mouseover
	hookTooltips[ItemRefTooltip] = 1; -- clicked
	if (AtlasLootTooltip) then hookTooltips[AtlasLootTooltip] = 1; end
	
	for tt in pairs(hookTooltips) do
		local origHook = tt:GetScript("OnTooltipSetItem");
		if (origHook ~= OnTooltipSetItemHook) then
			origTooltips[tt] = origHook;
			tt:SetScript("OnTooltipSetItem", OnTooltipSetItemHook);
		end
	end
end