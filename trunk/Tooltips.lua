local origTooltips = {};
local L = LibStub("AceLocale-3.0"):GetLocale("SetCollector", true)

--
-- Local Functions
--

local InventorySlots = {
    ['INVTYPE_HEAD'] = 1,
    ['INVTYPE_SHOULDER'] = 3,
    ['INVTYPE_BODY'] = 4,
    ['INVTYPE_CHEST'] = 5,
    ['INVTYPE_ROBE'] = 5,
    ['INVTYPE_WAIST'] = 6,
    ['INVTYPE_LEGS'] = 7,
    ['INVTYPE_FEET'] = 8,
    ['INVTYPE_WRIST'] = 9,
    ['INVTYPE_HAND'] = 10,
    ['INVTYPE_CLOAK'] = 15,
    ['INVTYPE_WEAPON'] = 16,
    ['INVTYPE_SHIELD'] = 17,
    ['INVTYPE_2HWEAPON'] = 16,
    ['INVTYPE_WEAPONMAINHAND'] = 16,
    ['INVTYPE_RANGED'] = 16,
    ['INVTYPE_RANGEDRIGHT'] = 16,
    ['INVTYPE_WEAPONOFFHAND'] = 17,
    ['INVTYPE_HOLDABLE'] = 17,
    ['INVTYPE_TABARD'] = 19,
}

local model = CreateFrame("DressUpModel","SetCollectorTooltipDressUpModel",UIParent)

local function GetAppearanceInfo(itemLink)
	if itemLink then
    local itemID, _, _, slotName = GetItemInfoInstant(itemLink)
    local slot = InventorySlots[slotName]

    if not slot or not IsDressableItem(itemLink) then return end

    model:SetUnit('player')
    model:Undress()
    model:TryOn(itemLink, slot)
    local sourceID = model:GetSlotTransmogSources(slot)
    if sourceID then
      local appearanceID = select(2, C_TransmogCollection.GetAppearanceSourceInfo(sourceID))
      return appearanceID, sourceID, itemID
    end
  end
end


local function OnTooltipSetItemHook(tooltip, ...)
	local appearanceID, sourceID, itemID, collection, variant, set
	local debug = SetCollector:GetDebug();
	local itemName, itemLink = tooltip:GetItem();
	
	appearanceID, sourceID, itemID = SetCollector:GetAppearanceInfo(itemLink);
	if appearanceID then
		if SetCollector.db.global.collections.Appearances[appearanceID] then
		
			-- Need to update this for when an appearance is in multiple collections, sets, or variants
			collection = SetCollector.db.global.collections.Appearances[appearanceID].collection
			variant = SetCollector.db.global.collections.Appearances[appearanceID].variant
			set = SetCollector.db.global.collections.Appearances[appearanceID].set
			
			tooltip:AddLine(" ")
			local tip = L[SetCollector.db.global.collections[collection].Sets[set].Title]
			tooltip:AddLine(tip)
		end
		if debug then
			tooltip:AddLine(" ")
			tooltip:AddLine("SetCollector Debug")
			tooltip:AddDoubleLine("Appearance ID:",appearanceID)		-- Make double line
			tooltip:AddDoubleLine("Source ID:",sourceID)
			tooltip:AddDoubleLine("Item ID:",itemID)
			tooltip:AddLine(" ")
			tooltip:AddLine("All Available Sources:")
			local sources = SetCollector:GetAppearanceSources(appearanceID)
			if sources then
				for i=1, #sources do
					local link = select(6, C_TransmogCollection.GetAppearanceSourceInfo(sources[i].sourceID))
					tooltip:AddDoubleLine(link,sources[i].sourceID)
				end
			else
				tooltip:AddLine("None")
			end
		end
		if debug and SetCollector.db.global.collections.Appearances[appearanceID] then
			tooltip:AddLine(" ");
			tooltip:AddLine("Collection ID: "..collection)
			tooltip:AddLine("Variant ID: "..variant)
			tooltip:AddLine("Set ID: "..set)
		end
	end
	
	if origTooltips[tooltip] then
		return origTooltips[tooltip](tooltip, ...)
	end
end

local hookTooltips = {}
hookTooltips[GameTooltip] = 1; -- mouseover
hookTooltips[ItemRefTooltip] = 1; -- clicked
if (AtlasLootTooltip) then hookTooltips[AtlasLootTooltip] = 1; end



--
-- Global Functions
--

for tt in pairs(hookTooltips) do
	local origHook = tt:GetScript("OnTooltipSetItem");
	if (origHook ~= OnTooltipSetItemHook) then
		origTooltips[tt] = origHook;
		tt:SetScript("OnTooltipSetItem", OnTooltipSetItemHook);
	end
end