--
-- LOCAL VARIABLES
--

local _L = SetCollectorLocalization
	BINDING_HEADER_SETCOLLECTOR = _L["ADDON_NAME"]
	BINDING_NAME_SETCOLLECTOR 	= _L["BINDING_TOGGLE_UI"]
	
local WOW_VERSION = select(4,GetBuildInfo())
local DB_VERSION = WOW_VERSION
local MIN_DB_RELEASE_VERSION = 32							-- Sets the minimum release compatibility

local icon = LibStub("LibDBIcon-1.0")
local HelpPlateSeen = false										-- Replace with CVar

local ANY					=	{ Code = "Z", Description = "Any" }

local DEATHKNIGHT = "DEATHKNIGHT"
local DRUID 			= "DRUID"
local HUNTER 			= "HUNTER"
local MAGE 				= "MAGE"
local MONK 				= "MONK"
local PALADIN 		= "PALADIN"
local PRIEST 			= "PRIEST"
local ROGUE 			= "ROGUE"
local SHAMAN 			= "SHAMAN"
local WARLOCK 		= "WARLOCK"
local WARRIOR 		= "WARRIOR"

local ALLIANCE 		= { Code = "A", Description = "Alliance" }
local HORDE 			= { Code = "H", Description = "Horde" }

local TANK 				= { Code = "T", Description = "TANK" }
local HEALER 			= { Code = "H", Description = "HEALER" }
local CASTER 			= { Code = "C", Description = "CASTER" }
local RANGED 			= { Code = "R", Description = "RANGED" }
local MELEE 			= { Code = "M", Description = "MELEE" }

local COLLECTION_LIST_WIDTH = 260

local WHITE		= "|cFFFFFFFF"

local CURRENT_FILTER = 0
local SHOW_ONLY_FAVORITES = false
local COLLECTION_COLLAPSED = { false, false, false, false, false, false }			-- Currently there are six possible collections

local SELECTED_BUTTON = nil

local SORT_BY = "key"					-- Default Sort Value
local SORT_DIR = "DESC"				-- Default Sort Direction

local EQUIPMENT = {
	INVSLOT_AMMO,
	INVSLOT_HEAD,
	INVSLOT_NECK,
	INVSLOT_SHOULDER,
	INVSLOT_BODY, --shirt
	INVSLOT_CHEST,
	INVSLOT_WAIST,
	INVSLOT_LEGS,
	INVSLOT_FEET,
	INVSLOT_WRIST,
	INVSLOT_HAND,
	INVSLOT_FINGER1,
	INVSLOT_FINGER2,
	INVSLOT_TRINKET1,
	INVSLOT_TRINKET2,
	INVSLOT_BACK,
	INVSLOT_MAINHAND,
	INVSLOT_OFFHAND,
	INVSLOT_RANGED,
	INVSLOT_TABARD
}

local BAGS = { 
	BACKPACK_CONTAINER, 
	BACKPACK_CONTAINER+1, 
	BACKPACK_CONTAINER+2, 
	BACKPACK_CONTAINER+3, 
	BACKPACK_CONTAINER+4 
}

local BANK = { 
	BANK_CONTAINER, 
	ITEM_INVENTORY_BANK_BAG_OFFSET+1,
	ITEM_INVENTORY_BANK_BAG_OFFSET+2,
	ITEM_INVENTORY_BANK_BAG_OFFSET+3,
	ITEM_INVENTORY_BANK_BAG_OFFSET+4,
	ITEM_INVENTORY_BANK_BAG_OFFSET+5,
	ITEM_INVENTORY_BANK_BAG_OFFSET+6,
	ITEM_INVENTORY_BANK_BAG_OFFSET+7
}

local VOID_STORAGE_MAX = 80;
local VOID_STORAGE_PAGES = 2;	-- Available in 6.0

--
-- LOCAL FUNCTIONS
--

local function pairsByKeys(t, d)
	local a = {}
	for n in pairs(t) do table.insert(a, n) end
	if d == "ASC" then
	  table.sort(a, function(a,b) return a<b end)
	else
	  table.sort(a, function(a,b) return a>b end)
	end
	local i = 0      -- iterator variable
	local iter = function ()   -- iterator function
		i = i + 1
		if a[i] == nil then return nil
		else return a[i], t[a[i]]
		end
	end
	return iter
end

local function SortedList(t, f, d)
	if f == "key" then return pairsByKeys(t, d)		-- Allow for exlicit request to sort by key
	-- Future sort alternatives here
	else return pairsByKeys(t, d)									-- Default to sort by key
	end
end

local function CreateMinimapButton()
	local myLDB = LibStub("LibDataBroker-1.1"):NewDataObject("SetCollectorMinimap", {
		type = "data source",
		text = "Set Collector",
		icon = "Interface\\Icons\\INV_Gauntlets_Mail_RaidShaman_J_01",
		OnClick = function() SetCollector_ToggleUI() end,		
		OnTooltipShow = function(tt)
			tt:AddLine(WHITE.._L["ADDON_NAME"])
			tt:AddLine(_L["MINIMAP_TOOLTIP"])
		end,
	})
  icon:Register("SetCollectorMinimap", myLDB, SetCollectorCharacterDB.minimap)
end

local function SetHighlight(button, ...)
	local collection 	= button.Collection
	local set 				= button.Set
	if ( button ) then SetCollector_UnsetHighlight(SELECTED_BUTTON) end
	button.Text:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
	button.Texture:Show()
	SELECTED_BUTTON = button
end

function SetCollector_UnsetHighlight(button, ...)
	if ( button ) then			
		button.Text:SetTextColor(1.0, 0.82, 0);
		button.Texture:Hide()
	end
	SELECTED_BUTTON = nil
end

local function SetFilterOptions(classIndex)
	CURRENT_FILTER = classIndex
end

local function GetFilterOptions()
	if CURRENT_FILTER == 0 then
		local currentSpec = GetSpecialization();
		if currentSpec == nil then currentSpec = 0 end
		CURRENT_FILTER = currentSpec + 2
	end
	return CURRENT_FILTER;
end

local function GetSetSpecializationRole(spec)
	if 		 spec == 62 	then return CASTER.Description 	-- Arcane Mage
	elseif spec == 63 	then return CASTER.Description	-- Fire Mage
	elseif spec == 64 	then return CASTER.Description	-- Frost Mage
	elseif spec == 65 	then return HEALER.Description	-- Holy Paladin
	elseif spec == 66 	then return TANK.Description		-- Protection Paladin
	elseif spec == 70 	then return MELEE.Description		-- Retribution Paladin
	elseif spec == 71 	then return MELEE.Description		-- Arms Warrior
	elseif spec == 72 	then return MELEE.Description		-- Fury Warrior
	elseif spec == 73 	then return TANK.Description		-- Protection Warrior
	elseif spec == 102 	then return CASTER.Description	-- Balance Druid
	elseif spec == 103 	then return MELEE.Description		-- Feral Combat Druid
	elseif spec == 104 	then return TANK.Description		-- Guardian Druid
	elseif spec == 105 	then return HEALER.Description	-- Restoration Druid
	elseif spec == 250 	then return TANK.Description		-- Blood Death Knight
	elseif spec == 251 	then return MELEE.Description		-- Frost Death Knight
	elseif spec == 252 	then return MELEE	.Description	-- Unholy Death Knight
	elseif spec == 253 	then return RANGED.Description	-- Beast Mastery Hunter
	elseif spec == 254 	then return RANGED.Description	-- Marksmanship Hunter
	elseif spec == 255 	then return RANGED.Description	-- Survival Hunter
	elseif spec == 256 	then return HEALER.Description	-- Discipline Priest
	elseif spec == 257 	then return HEALER.Description	-- Holy Priest
	elseif spec == 258 	then return CASTER.Description	-- Shadow Priest
	elseif spec == 259 	then return MELEE.Description		-- Assassination Rogue
	elseif spec == 260 	then return MELEE.Description		-- Combat Rogue
	elseif spec == 261 	then return MELEE.Description		-- Subtlety Rogue
	elseif spec == 262 	then return CASTER.Description	-- Elemental Shaman
	elseif spec == 263 	then return MELEE.Description		-- Enhancement Shaman
	elseif spec == 264 	then return HEALER.Description	-- Restoration Shaman
	elseif spec == 265 	then return CASTER.Description	-- Affliction Warlock
	elseif spec == 266 	then return CASTER.Description	-- Demonology Warlock
	elseif spec == 267 	then return CASTER.Description	-- Destruction Warlock
	elseif spec == 268 	then return TANK.Description		-- Brewmaster Monk
	elseif spec == 269 	then return MELEE.Description		-- Windwalker Monk
	elseif spec == 270 	then return HEALER.Description	-- Mistweaver Monk
	else return ANY.Description													-- No specialization selected yet
	end
end

local AddTutorial = {
	FramePos = { x = 0,	y = -30 },
	FrameSize = { width = 638, height = 496	},
	[1] = { ButtonPos = { x = 500,	y = 10 }, 	HighLightBox = { x = 497, y = 2, width = 200, height = 30 },		ToolTipDir = "LEFT",	ToolTipText = _L["TUTORIAL_1"] },
	[2] = { ButtonPos = { x = 120,	y = -405 }, HighLightBox = { x = 8, y = -30, width = 252, height = 518 },		ToolTipDir = "DOWN",	ToolTipText = _L["TUTORIAL_2"] },
	[3] = { ButtonPos = { x = 310,	y = -31 }, 	HighLightBox = { x = 285, y = -30, width = 412, height = 50 },	ToolTipDir = "LEFT",	ToolTipText = _L["TUTORIAL_3"] },
	[4] = { ButtonPos = { x = 476,	y = -405 }, HighLightBox = { x = 285, y = -83, width = 412, height = 465 },	ToolTipDir = "DOWN",	ToolTipText = _L["TUTORIAL_4"] },
}

local function SetVariantTab(self, tab)
	PanelTemplates_SetTab(self, tab);
	--SetCVar("setCollectorTab", tab);
	SetCollector_UpdateSelectedVariantTab(self);
end

local function AddSetCollectorUI(frame)

	frame.Title:SetText(_L["ADDON_NAME"])
	frame:SetWidth(703)
	frame:SetHeight(606)
	frame:SetPoint("TOPLEFT",17,-115)

	tinsert(UISpecialFrames, frame:GetName())											-- Hides frame when Escape is pressed or Game menu selected.
  frame:SetAttribute("UIPanelLayout-defined", true)			-- Allows frame to shift other frames when opened or be shifted when others are opened.
  frame:SetAttribute("UIPanelLayout-enabled", true)			-- http://www.wowwiki.com/Creating_standard_left-sliding_frames
  frame:SetAttribute("UIPanelLayout-area", "left")
  frame:SetAttribute("UIPanelLayout-pushable", 3)
  frame:SetAttribute("UIPanelLayout-width", width)
  frame:SetAttribute("UIPanelLayout-whileDead", true)
	  	
	local helpButton = CreateFrame("Button","$parentTutorialButton",frame,"MainHelpPlateButton")
	helpButton:SetPoint("TOPLEFT",frame, 39, 20)
	helpButton:SetScript("OnClick", SetCollector_ToggleTutorial)
	
	-- Add Left Inset (ScrollFrame)
	local leftInset = CreateFrame("Frame","$parentLeftInset",frame,"InsetFrameTemplate")
	leftInset:SetWidth(COLLECTION_LIST_WIDTH)
	leftInset:SetHeight(496)
	leftInset:SetPoint("TOPLEFT", 4, -60)
	leftInset:SetPoint("BOTTOMLEFT", 4, 26)
	leftInset:SetAttribute("parentKey","LeftInset")
	leftInset:SetAttribute("useParentLevel","true")
	
	local scrollFrame = CreateFrame("ScrollFrame","SetCollectorScrollFrame",frame,"CollectionsScrollFrameTemplate")
	scrollFrame:SetPoint("TOPLEFT","$parentLeftInset","TOPLEFT",2,-5)
	scrollFrame:SetPoint("BOTTOMRIGHT","$parentLeftInset","BOTTOMRIGHT", -4, 3)
	
	-- Add Right Inset (Model)
	local rightInset = CreateFrame("Frame","$parentRightInset",frame,"InsetFrameTemplate")
	rightInset:SetPoint("TOPRIGHT", -6, -60)
	rightInset:SetPoint("BOTTOMLEFT", leftInset, "BOTTOMRIGHT", 20, 0)
	rightInset:SetAttribute("parentKey","RightInset")
	rightInset:SetAttribute("useParentLevel","true")
	
	local setDisplay = CreateFrame("Frame","SetDisplay",rightInset)
	setDisplay:SetPoint("TOPLEFT",rightInset,"TOPLEFT", 3, -3)
	setDisplay:SetPoint("BOTTOMRIGHT",rightInset,"BOTTOMRIGHT", -3, 3)
	setDisplay:SetAttribute("parentKey","SetDisplay")
	setDisplay.Texture = setDisplay:CreateTexture("setTexture","BACKGROUND")
	setDisplay.Texture:SetAllPoints(setDisplay)
	setDisplay.Texture:SetTexture("Interface\\PetBattles\\MountJournal-BG",false)
	setDisplay.Texture:SetTexCoord(0,0.78515625,0,1)
	
	local shadowOverlay = CreateFrame("Frame",nil,setDisplay,"ShadowOverlayTemplate")
	shadowOverlay:SetAllPoints(true)
	shadowOverlay:SetAttribute("useParentLevel","true")
	shadowOverlay:SetAttribute("parentKey","ShadowOverlay")
	
	local progressDisplay = CreateFrame("Button","SummaryButton",setDisplay)
	progressDisplay:SetWidth(56)
	progressDisplay:SetHeight(56)
	progressDisplay:SetPoint("TOPRIGHT","$parent","TOPRIGHT",-10,-3)
	progressDisplay.Summary = progressDisplay:CreateFontString("$parentSummary","OVERLAY","GameFontNormalLarge")
	progressDisplay.Summary:SetPoint("CENTER", 0, 2)
	progressDisplay.Summary:SetText(" ")
	progressDisplay.Background = progressDisplay:CreateTexture("$parentBackground","BACKGROUND")
	progressDisplay.Background:SetTexture(0,0,0,0)
	progressDisplay.Background:SetPoint("TOPLEFT",3,-3)
	progressDisplay.Background:SetPoint("BOTTOMRIGHT",-3,3)
	progressDisplay.Texture = progressDisplay:CreateTexture("$parentTexture","OVERLAY")
	progressDisplay.Texture:SetAtlas("collections-itemborder-uncollected")
	progressDisplay.Texture:SetPoint("TOPLEFT",0,0)
	progressDisplay.Texture:SetPoint("BOTTOMRIGHT",0,0)
	progressDisplay:SetFrameLevel(10)
	progressDisplay:SetScript("OnClick", function(self) SetCollectorSummaryButton_OnClick(self) end)
	progressDisplay:Hide()
	
	local modelFrame = CreateFrame("DressUpModel","$parentModelFrame",setDisplay,"ModelWithZoomTemplate") --"ModelWithControlsTemplate")
	modelFrame:SetPoint("TOPLEFT", setDisplay, "TOPLEFT", 0, 0)
	modelFrame:SetPoint("BOTTOMRIGHT", setDisplay, "BOTTOMRIGHT", 0, 0)
	modelFrame:SetAttribute("parentKey","ModelFrame")
	modelFrame:SetAttribute("useParentLevel","true")
	
	local prevItem
	for i=1, #EQUIPMENT do
	local itemButton = CreateFrame("Button","$parentItem"..i,modelFrame,"SetCollectorItemTemplate")
		if i == 1 then
			itemButton:SetPoint("TOPLEFT",modelFrame,"TOPLEFT", 7, -73)
		elseif i == 11 then
			itemButton:SetPoint("TOPRIGHT",modelFrame,"TOPRIGHT", -7, -73)
		else
			itemButton:SetPoint("TOPLEFT",prevItem,"BOTTOMLEFT", 0, -7)
		end
		itemButton:Hide()
		prevItem = itemButton
	end
	
	for i=1, 5 do
		local variantTab = CreateFrame("Button","$parentTab"..i,setDisplay,"CharacterFrameTabButtonTemplate")
		variantTab:SetID(i)
		variantTab:SetText(i)
		if i == 1 then
			variantTab:SetPoint("TOPLEFT", SetDisplay, "TOPLEFT", 5, 0)
		else
			local prev = i - 1
			variantTab:SetPoint("LEFT", "$parentTab"..prev, "RIGHT", -16, 0)
		end
		variantTab:SetScript("OnClick",function() 
			SetVariantTab(SetDisplay, i);
			PlaySound("UI_Toybox_Tabs");
		end)
		variantTab:Hide()
	end
	PanelTemplates_SetNumTabs(SetDisplay, 5)
	SetVariantTab(SetDisplay, 1)
	
	-- Add Filter Button
	local filterButton = CreateFrame("Frame","$parentSetFilter",frame,"UIDropDownMenuTemplate")
	filterButton:SetPoint("TOPRIGHT",frame,"TOPRIGHT",-125,-28)
	filterButton:SetAttribute("enableMouse","true")
	filterButton:SetAttribute("parentKey","setFilter")
	
end

local function GetCollectionButton(index)
	local collections = SetCollector.CollectionsFrame.Contents.Collections;
	if ( not collections[index] ) then
		local collection = CreateFrame("BUTTON", nil, SetCollector.CollectionsFrame.Contents, "SetCollectorCollectionTemplate");
		collections[index] = collection;
	end
	return collections[index];
end

local function GetSetButton(index)
	local sets = SetCollector.CollectionsFrame.Contents.Sets;
	if ( not sets[index] ) then
		local set = CreateFrame("BUTTON", nil, SetCollector.CollectionsFrame.Contents, "SetCollectorSetTemplate");
		sets[index] = set;
	end
	return sets[index];
end

local function ClearVariantTabs()
		for i=1, 5 do
			local variantTab = _G["SetDisplayTab"..i]
			variantTab:SetText(i)
			variantTab.Collection = collection
			variantTab.Set = set
			variantTab.Preview = false
			variantTab:Hide()
		end
		PanelTemplates_SetNumTabs(SetDisplay, 5)
end

local function SetVariantTabs(collection, set)
	local Collections = SetCollectorDB
	if ( collection and set and #Collections[collection].Sets[set].Variants > 1 ) then
		for i=1, 5 do
			local variantTab = _G["SetDisplayTab"..i]
			if ( Collections[collection].Sets[set].Variants[i] ) then
				variantTab:SetText(_L[Collections[collection].Sets[set].Variants[i].Title])
				variantTab.Collection = collection
				variantTab.Set = set
				variantTab.Preview = false
				variantTab:Show()
			else
				variantTab:Hide()
			end
			PanelTemplates_TabResize(variantTab, 0, nil, 36, variantTab:GetParent().maxTabWidth or 88)
		end
		PanelTemplates_SetNumTabs(SetDisplay, #Collections[collection].Sets[set].Variants)
		SetVariantTab(SetDisplay, 1)
	else
		for i=1, 5 do
			local variantTab = _G["SetDisplayTab"..i]
			variantTab:SetText(i)
			variantTab.Collection = collection
			variantTab.Set = set
			variantTab.Preview = false
			variantTab:Hide()
		end
		PanelTemplates_SetNumTabs(SetDisplay, 5)
		SetVariantTab(SetDisplay, 1)
	end
end

local function SetItemButton(button, itemID, count)
	if button and itemID then
		local sName, sLink, iRarity, iLevel, iMinLevel, sType, sSubType, iStackCount, sLocation, sTexture = GetItemInfo(itemID)
		if sTexture then
			button.link = sLink
			button.icon:SetTexture(sTexture)
			if count == 0 or count == nil then
				button.icon:SetDesaturated(true)
				button.count:SetText("")
				button.count:Hide()
				button.glow:Hide()
			else
				button.icon:SetDesaturated(false)
				button.count:SetText(count)
				button.count:Show()
				button.glow:SetVertexColor(GetItemQualityColor(iRarity))
				button.glow:Show()
			end
			button:Show()
		end
	else
		button:Hide()
	end
end

local function ClearItemButtons(button)
	if button then
		for i=button, #EQUIPMENT do
			_G["SetDisplayModelFrameItem"..i]:Hide()
		end
	else
		for i=1, #EQUIPMENT do
			_G["SetDisplayModelFrameItem"..i]:Hide()
		end
	end
end

local function CollectionsUpdate()
	prevButton = nil
	rowIndex = 0
	
  -- Class and Faction Filters
  local _, class = UnitClass("player")
	local faction, localizedFaction = UnitFactionGroup("player")
	
  -- Specialization/Role Filter
  local specID = 0
	local currFilter = GetFilterOptions()

	if currFilter == LE_LOOT_FILTER_CLASS then
		local currentSpec = GetSpecialization()
		local specID = currentSpec and select(1, GetSpecializationInfo(currentSpec)) or "None"
		local role = GetSetSpecializationRole(specID)
	else -- Spec
		local id = GetSpecializationInfo(currFilter - LE_LOOT_FILTER_SPEC1 + 1)
		specID = id
	end
  local role = GetSetSpecializationRole(specID)
  
  local Collections = SetCollectorDB
  local Log = SetCollectorCharacterDB
	
	for i=1, #Collections do
		rowIndex = rowIndex + 1
		button = GetCollectionButton(rowIndex)
		if ( COLLECTION_COLLAPSED[i] == true ) then
			button:SetText(_L[Collections[i].Title].."...")
		else
			button:SetText(_L[Collections[i].Title])
		end
		button.Collection = i
		button:ClearAllPoints()
		if ( prevButton ) then
			button:SetPoint("TOPLEFT", prevButton, "BOTTOMLEFT", 0, 0)
		else
			button:SetPoint("TOPLEFT", 1, -6)
		end
		button:Show()
		local archivePrevButton = prevButton
		local setsDisplayed = 0
		prevButton = button
		for j,value in SortedList(Collections[i].Sets, SORT_BY, SORT_DIR) do
			local acquired = 0
			if (Collections[i].Sets[j].Class == ANY.Description or Collections[i].Sets[j].Class == class or class == "Any") then
				rowIndex = rowIndex + 1
				titleButton = GetSetButton(rowIndex)
				titleButton.Text:SetText(_L[Collections[i].Sets[j].Title] or _L["MISSING_LOCALIZATION"])			-- Putting Text into FontString allows for Wrapping using SetWidth
				titleButton.Text:SetWidth(COLLECTION_LIST_WIDTH - 32)
				if (i == 7) then
					titleButton.SubText:SetText("|cff999999".."SubText Here".."|r")
				end
				local height = titleButton.Text:GetHeight() + titleButton.SubText:GetHeight() + 10
				titleButton:SetHeight(height)
				titleButton.Collection = i
				titleButton.Set = j
				titleButton:ClearAllPoints()
				titleButton:SetPoint("TOPLEFT", prevButton, "BOTTOMLEFT", 0, 0)
				if not Log.Sets[j] then
					Log.Sets[j] = { Favorite = false, Tracking = false }
				end
				if Log.Sets[j] and Log.Sets[j].Favorite == true then
					titleButton.Favorite:Show()
				end
				if Log.Sets[j] and Log.Sets[j].Tracking == true then
					titleButton.Check:Show()
				end
				titleButton:Hide()
				if (Collections[i].Sets[j].Role == ANY.Description or Collections[i].Sets[j].Role == role or role == "Any") then
					if (Collections[i].Sets[j].Faction == ANY.Description or Collections[i].Sets[j].Faction == faction or faction == "Any") then
						-- Preload Item Info into Cache
						for k=1, #Collections[i].Sets[j].Variants do
							for l=1, #Collections[i].Sets[j].Variants[k].Items do
								local itemID = Collections[i].Sets[j].Variants[k].Items[l]
								local name, link = GetItemInfo(itemID)
								if ( not Log.Items[itemID] ) then
									Log.Items[itemID] = { Count = 0; }
								end
								if (Log.Items[itemID] and Log.Items[itemID].Count > 0) then 
									acquired = acquired + Log.Items[itemID].Count
								end
							end
						end
						if ( SHOW_ONLY_FAVORITES == true and Log.Sets[j].Favorite == false ) then
							-- Keep it hidden
						elseif ( COLLECTION_COLLAPSED[i] == true ) then
							-- Keep it hidden but...
							setsDisplayed = setsDisplayed + 1
						else
							titleButton:Show()
							prevButton = titleButton
							setsDisplayed = setsDisplayed + 1
						end
					end
				end
			end
		end
		if ( setsDisplayed == 0 ) then					-- Hides the Collections button when no sets are displayed
			button:Hide()
			prevButton = archivePrevButton
		end
	end
end

local function UpdatePortrait()
	local portrait = SetCollectorPortrait
	local masteryIndex = GetSpecialization();
	if (masteryIndex == nil) then
		local _, class = UnitClass("player");
		portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles");
		portrait:SetTexCoord(unpack(CLASS_ICON_TCOORDS[class]));
	else
		local _, _, _, icon = GetSpecializationInfo(masteryIndex);
		portrait:SetTexCoord(0, 1, 0, 1);
		SetPortraitToTexture(portrait, icon);	
	end
end

local function SetCollector_Scan(selection)
	local inLockdown = InCombatLockdown()
	if (inLockdown == nil or inLockdown == false) then
		local show, success
		if selection == "Equipment" then 
			show = { containers = 1, slots = function() return #EQUIPMENT end, itemID = function(i,j) return GetInventoryItemID("player", EQUIPMENT[j]) end }
		elseif selection == "Bags" then 
			show = { containers = #BAGS, slots = function(i) return GetContainerNumSlots(BAGS[i]) end, itemID = function(i,j) return GetContainerItemID(BAGS[i],j) end }
		elseif selection == "Bank" then 
			show = { containers = #BANK, slots = function(i) return GetContainerNumSlots(BANK[i]) end, itemID = function(i,j) return GetContainerItemID(BANK[i],j) end }
		elseif selection == "Void" then 
			-- Special tasks for Void Storage
			local isReady = IsVoidStorageReady()
			if isReady == true then 	-- 6.0 method
				show = { containers = VOID_STORAGE_PAGES, slots = function() return VOID_STORAGE_MAX end, itemID = function(i,j) return GetVoidItemInfo(i,j) end }
			elseif isReady == 1 then 	-- 5.4 method
				show = { containers = 1, slots = function() return VOID_STORAGE_MAX end, itemID = function(i,j) return GetVoidItemInfo(j) end }
			else 
				print(_L["VOID_STORAGE_NOT_READY"]); return;
			end	
		else return
		end
		
		for key, value in pairs(SetCollectorCharacterDB.Items) do
			for i=1, show.containers do
				local numberOfSlots = show.slots(i)
				for j=1, numberOfSlots do
					local itemID = show.itemID(i,j)
					if key == itemID then
						value.Count = 1
					end
					--if success == nil then print(selection.." scan successful"); success = true; end
				end
			end
		end
		
		if SetCollector:IsVisible() then
			CollectionsUpdate()
			-- Update displayed details too
			--print("Set Collector: Scan complete. Updating display.")
		end
	end
end

local function SetCollector_ScanVoid()
	SetCollector_Scan("Void")							-- C_Timer does not allow for passing parameters in callback
end


--
-- GLOBAL FUNCTIONS
--

function SetCollector_ToggleUI()
	if (SetCollector:IsVisible()) then
		HideUIPanel(SetCollector)
	else
		ShowUIPanel(SetCollector)
		--[[if Session.InitialScanComplete == false then
			SetCollector_Scan("Equipment")
			SetCollector_Scan("Bags")
			Session.InitialScanComplete = true
		end]]--
	end
end

function SetCollector_ToggleMinimapButton()
	SetCollectorCharacterDB.minimap.hide = not SetCollectorCharacterDB.minimap.hide
	if SetCollectorCharacterDB.minimap.hide then
		icon:Hide("SetCollectorMinimap")
	else
		icon:Show("SetCollectorMinimap")
	end
end

function SetCollector_GetTutorial()
	local helpPlate, mainHelpButton
	helpPlate = AddTutorial
	mainHelpButton = SetCollector.MainHelpButton
	return helpPlate, mainHelpButton
end

function SetCollector_ToggleTutorial()
	local helpPlate, mainHelpButton = SetCollector_GetTutorial()
		
	if ( helpPlate and not HelpPlate_IsShowing(helpPlate) and SetCollector:IsShown()) then
		HelpPlate_Show( helpPlate, SetCollector, mainHelpButton, HelpPlateSeen)
		SetCollector_HELP_VISIBLE = true
		HelpPlateSeen = true
	else
		HelpPlate_Hide(true) 								-- True indicates to animate the hide. Blank or flase suppresses the animation.
	  SetCollector_HELP_VISIBLE = false
	end
end

function SetCollector_UpdateSelectedVariantTab(self)
	local selected = PanelTemplates_GetSelectedTab(self);
	if ( SetCollector:IsShown() ) then
		SetDisplayModelFrame:Dress()
		local collection = _G["SetDisplayTab"..selected].Collection
		local set = _G["SetDisplayTab"..selected].Set
		if ( collection and set ) then
	  	local Collections = SetCollectorDB
	  	local Log = SetCollectorCharacterDB
			local num = #Collections[collection].Sets[set].Variants[selected].Items
			local acq = 0
			for i=1, num do
				local itemID = Collections[collection].Sets[set].Variants[selected].Items[i]
			 	SetDisplayModelFrame:TryOn(itemID)
			 	if (Log.Items[itemID] and Log.Items[itemID].Count > 0) then acq = acq + Log.Items[itemID].Count; end
			 	SetItemButton(_G["SetDisplayModelFrameItem"..i], itemID, Log.Items[itemID].Count)
			end
			ClearItemButtons(num + 1)
			SummaryButtonSummary:SetText(string.format(_L["ITEMS_COLLECTED"],acq,num))
			SummaryButton:Show()
		else
			SummaryButton:Hide()
		end
	end
end

function SetCollector_OnLoad(self)
	AddSetCollectorUI(self)
	self:RegisterEvent("ADDON_LOADED")
	self:RegisterEvent("PLAYER_LOGIN")
end

function SetCollector_OnEvent(self, event, ...)
	local arg1, arg2, arg3, arg4 = ...
	if event == "ADDON_LOADED" and string.lower(arg1) == string.lower("SetCollector") then
		if (SetCollectorDB and (SetCollectorDB["release"] == nil or SetCollectorDB["release"] < MIN_DB_RELEASE_VERSION)) then
			SetCollectorSetupDB(MIN_DB_RELEASE_VERSION, true)
		else
			SetCollectorSetupDB(MIN_DB_RELEASE_VERSION, false)
		end
		
	elseif event == "PLAYER_LOGIN" then
		local _, class = UnitClass("player")
		SetCollectorSetupCharacterDB(class,MIN_DB_RELEASE_VERSION)
		CollectionsUpdate()
		UIDropDownMenu_Initialize(SetCollectorSetFilter, SetCollector_InitFilter)
		SetDisplayModelFrame:SetUnit("PLAYER")
		CreateMinimapButton()
		
		-- Initial Scan
		SetCollector_Scan("Equipment")
		SetCollector_Scan("Bags")
		
		-- Register New Events
		self:RegisterEvent("BAG_UPDATE")
		self:RegisterEvent("BANKFRAME_OPENED")
		self:RegisterEvent("VOID_STORAGE_OPEN")
		self:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
		self:RegisterEvent("PLAYER_REGEN_DISABLED")
		self:RegisterEvent("PLAYER_REGEN_ENABLED")
  	self:UnregisterEvent("PLAYER_LOGIN")
		
	elseif event == "BAG_UPDATE" then
		SetCollector_Scan("Equipment")
		SetCollector_Scan("Bags")
		
	elseif event == "BANKFRAME_OPENED" then
		SetCollector_Scan("Bank")
	
	elseif event == "VOID_STORAGE_OPEN" then
	  local isReady = IsVoidStorageReady()
		if isReady == false then
			C_Timer.After(2, SetCollector_ScanVoid)
		else
			SetCollector_Scan("Void")
		end
	
	elseif event == "PLAYER_SPECIALIZATION_CHANGED" then
		local i = GetSpecialization()
		if i == nil then i = 0 end
		SetCollector_SetFilter(nil, LE_LOOT_FILTER_SPEC1 + i - 1)
	
	elseif event == "PLAYER_REGEN_DISABLED" then
		SetCollector:UnregisterEvent("BAG_UPDATE")
	
	elseif event == "PLAYER_REGEN_ENABLED" then
		SetCollector:RegisterEvent("BAG_UPDATE")
		--SetCollector_Scan("Bags")
	end
end

function SetCollector_OnShow(self)
	UpdatePortrait()
	SetCollector_UpdateFilterString()
end

function SetCollector_OnHide(self)
	HelpPlate_Hide()
	SummaryButton:Hide()
	SetVariantTabs()
	ClearItemButtons()
	SetCollector_UnsetHighlight(SELECTED_BUTTON)
end

function SetCollectorCollectionButton_OnClick(self)
	COLLECTION_COLLAPSED[self.Collection] = not COLLECTION_COLLAPSED[self.Collection]
	CollectionsUpdate()
end

function SetCollectorSetButton_OnClick(self, button, ...)
	if ( button == "LeftButton" ) then
		if ( self ~= SELECTED_BUTTON ) then
			SetVariantTabs(self.Collection, self.Set)
			SetHighlight(self)
		else
			SetVariantTabs()
			ClearItemButtons()
			SetCollector_UnsetHighlight(self)
		end
	elseif ( button == "RightButton" ) then
  	local Log = SetCollectorCharacterDB
  	if ( Log.Sets[self.Set].Favorite == false ) then
  		Log.Sets[self.Set].Favorite = true
  		self.Favorite:Show()
  	else
  		Log.Sets[self.Set].Favorite = false
  		self.Favorite:Hide()
  	end
  else
  	print(button)
	end
end
function SetCollectorSetButton_OnEnter(self)
	if ( self.Collection and self.Set ) then 
		local Collection = SetCollectorDB
		self.Text:SetFontObject("GameFontHighlightLeft")
		local collection = Collection[self.Collection].Title
		local set = _L[Collection[self.Collection].Sets[self.Set].Title] or _L["MISSING_LOCALIZATION"]
	
		GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT", -16, 16)
		GameTooltip:SetText(set, 1, 1, 1)
		for i=1, #Collection[self.Collection].Sets[self.Set].Variants do
			local collected = 0
			for j=1, #Collection[self.Collection].Sets[self.Set].Variants[i].Items do
				local itemID = Collection[self.Collection].Sets[self.Set].Variants[i].Items[j]
				if SetCollectorCharacterDB.Items[itemID] then collected = collected + SetCollectorCharacterDB.Items[itemID].Count; end
			end
			local line = ""
			if Collection[self.Collection].Sets[self.Set].Variants[i].Count and _L[Collection[self.Collection].Sets[self.Set].Variants[i].Title] then
				line = "- "..collected.."/"..Collection[self.Collection].Sets[self.Set].Variants[i].Count.." ".._L[Collection[self.Collection].Sets[self.Set].Variants[i].Title]
			elseif Collection[self.Collection].Sets[self.Set].Variants[i].Count and not _L[Collection[self.Collection].Sets[self.Set].Variants[i].Title] then
				line = "- "..collected.."/"..Collection[self.Collection].Sets[self.Set].Variants[i].Count.." ".._L["MISSING_LOCALIZATION"]
			elseif not Collection[self.Collection].Sets[self.Set].Variants[i].Count and _L[Collection[self.Collection].Sets[self.Set].Variants[i].Title] then
				line = "- "..collected.."/? ".._L[Collection[self.Collection].Sets[self.Set].Variants[i].Title]
			else
				line = "- "..collected.."/? ".._L["MISSING_LOCALIZATION"]
			end
			GameTooltip:AddLine(line)
		end
		local rightclick = _L["RIGHT_CLICK_FAVORITE"] or _L["MISSING_LOCALIZATION"]
		GameTooltip:AddLine(rightclick, 1, 1, 1)
		GameTooltip:Show()
	end
end
function SetCollectorSetButton_OnLeave(self)
	self.Text:SetFontObject("GameFontNormalLeft")
	GameTooltip:Hide()
end
function SetCollectorSetButton_OnMouseDown(self)
	-- Do nothing at this time.
end
function SetCollectorSetButton_OnMouseUp(self)
	-- Do nothing at this time.
end

function SetCollectorSummaryButton_OnClick(self)
	-- Do nothing at this time.
end

function SetCollector_Item_OnEnter(self, motion)
	if self.link then
		GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT")
		GameTooltip:SetHyperlink(self.link)
		GameTooltip:Show()
	end
end
function SetCollector_Item_OnLeave(self, motion)
	GameTooltip:Hide()
end

function SetCollector_SetFilter(self, classIndex)
	if ( classIndex == "favorites" ) then
		if SHOW_ONLY_FAVORITES == false then
			SHOW_ONLY_FAVORITES = true
		else
			SHOW_ONLY_FAVORITES = false
		end
	else
		SetFilterOptions(classIndex);
	end
	if SetCollector:IsShown() then
		CollectionsUpdate();
		SetCollector_UpdateFilterString()
	
		-- Clear Selection
		SetCollector_UnsetHighlight(SELECTED_BUTTON)
		SELECTED_BUTTON = nil
		SetVariantTabs()
	end
end

function SetCollector_UpdateFilterString()
	local name = ALL;
	local currFilter = GetFilterOptions();

	if currFilter == LE_LOOT_FILTER_CLASS then
		name = UnitClass("player");
	else -- Spec
		local _, specName, _, icon = GetSpecializationInfo(currFilter - LE_LOOT_FILTER_SPEC1 + 1);
		name = specName;
	end
	
	UIDropDownMenu_SetText(SetCollectorSetFilter, name);
end

function SetCollector_InitFilter()
	local info = UIDropDownMenu_CreateInfo();
	local currFilter = GetFilterOptions();
	local className = UnitClass("player");
	
	SetCollector_UpdateFilterString()
	
	info.func = SetCollector_SetFilter;
	
	info.text = className;
	info.checked = (currFilter ~= LE_LOOT_FILTER_ALL);
	info.arg1 = LE_LOOT_FILTER_CLASS;
	UIDropDownMenu_AddButton(info);
	
	local numSpecs = GetNumSpecializations();
	for i = 1, numSpecs do
		local _, name, _, icon = GetSpecializationInfo(i);
		info.text = name;
		info.arg1 = LE_LOOT_FILTER_SPEC1 + i - 1;
		info.checked = currFilter == (LE_LOOT_FILTER_SPEC1 + i - 1);
		info.leftPadding = 10;
		UIDropDownMenu_AddButton(info);
	end

	info.text = ALL_SPECS;
	info.checked = currFilter == LE_LOOT_FILTER_CLASS;
	info.arg1 = LE_LOOT_FILTER_CLASS;
	info.func = SetCollector_SetFilter;
	UIDropDownMenu_AddButton(info);
	
	info.leftPadding = nil;
	info.text = FAVORITES_FILTER;
	info.checked = SHOW_ONLY_FAVORITES;
	info.arg1 = "favorites";
	UIDropDownMenu_AddButton(info);
end


--
-- Create Slash Command
--

local CommandTable = {
	["show"] = function()
		ShowUIPanel(SetCollector)
	end,
	["hide"] = function()
		HideUIPanel(SetCollector)
	end,
	["sort"] = {
		["asc"] = function()
			SORT_DIR = "ASC"
			CollectionsUpdate()
		end,
		["desc"] = function()
			SORT_DIR = "DESC"
			CollectionsUpdate()
		end,
		["help"] = _L["SLASH_HELP_SORT"],
		["empty"] = function()
			if SORT_DIR == "DESC" then SORT_DIR = "ASC" else SORT_DIR = "DESC" end
			CollectionsUpdate()
		end
	},
	["button"] = {
		["show"] = function()
			icon:Show("SetCollectorMinimap")
		end,
		["hide"] = function()
			icon:Hide("SetCollectorMinimap")
		end,
		["help"] = _L["SLASH_HELP_BUTTON"],
		["empty"] = function()
			SetCollector_ToggleMinimapButton()
		end
	},
	["resetdb"] = function()
		SetCollectorSetupDB(MIN_DB_RELEASE_VERSION, true)
		CollectionsUpdate()
	end,
	["resetchardb"] = function()
		local _, class = UnitClass("player")
		SetCollectorSetupCharacterDB(class, MIN_DB_RELEASE_VERSION, true)
		CollectionsUpdate()
	end,
	["link"] = function(itemID)
		local _, itemLink = GetItemInfo(itemID)
		print(itemLink or _L["ITEMLINK_ERROR"])
	end,
	["help"] = _L["SLASH_HELP"],
	["empty"] = function()
		SetCollector_ToggleUI()
	end
}

local function DispatchCommand(message, commandTable)
	local command, parameters = string.split(" ", message, 2)
	local entry = commandTable[command:lower()]
	local which = type(entry)
	if which == "function" then
		entry(parameters)
	elseif which == "table" then
		DispatchCommand(parameters or " ", entry)
	elseif which == "string" then
		print(entry)
	elseif message == "" or message == " " then
		DispatchCommand("empty", commandTable)
	elseif message ~= "help" then
		DispatchCommand("help", commandTable)
	end
end

SLASH_SetCollector1 = "/SetCollector"
SlashCmdList["SetCollector"] = function(message)
	DispatchCommand(message, CommandTable)
end