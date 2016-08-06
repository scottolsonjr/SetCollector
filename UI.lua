local L = LibStub("AceLocale-3.0"):GetLocale("SetCollector", true)
local icon = LibStub("LibDBIcon-1.0")

local COLLECTION_LIST_WIDTH = 260

local WHITE		= "|cFFFFFFFF"

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

local CURRENT_FILTER 				= 0
local SHOW_ONLY_FAVORITES 	= false
local SHOW_ONLY_OBTAINABLE 	= false
local SHOW_ONLY_TRANSMOG 		= false

local COLLECTION_COLLAPSED 	= { false, false, false, false, false, false, false, false }			-- Currently there are eight possible collections

local SELECTED_BUTTON = nil

local SORT_BY = "key"					-- Default Sort Value
local SORT_DIR = "DESC"				-- Default Sort Direction

--
--  Setup Frame
--

local frame = CreateFrame("Frame", "SetCollectorFrame", UIParent, "ButtonFrameTemplate")

local title = CreateFrame("Frame", "$parentTitle", frame)
title:SetWidth(300)
title:SetHeight(14)
title:SetPoint("TOP", 0, -4)
title:SetFrameLevel(100)
title:SetAttribute("parentKey", "Title")

frame:SetWidth(703)
frame:SetHeight(606)
frame:SetPoint("TOPLEFT",17,-115)
	
frame.TitleText:SetText(L["ADDON_NAME"])

tinsert(UISpecialFrames, frame:GetName())							-- Hides frame when Escape is pressed or Game menu selected.
frame:SetAttribute("UIPanelLayout-defined", true)			-- Allows frame to shift other frames when opened or be shifted when others are opened.
frame:SetAttribute("UIPanelLayout-enabled", true)			-- http://www.wowwiki.com/Creating_standard_left-sliding_frames
frame:SetAttribute("UIPanelLayout-area", "left")
frame:SetAttribute("UIPanelLayout-pushable", 5)
frame:SetAttribute("UIPanelLayout-width", width)
frame:SetAttribute("UIPanelLayout-whileDead", true)
  	
local helpButton = CreateFrame("Button","$parentTutorialButton",frame,"MainHelpPlateButton")
helpButton:SetPoint("TOPLEFT",frame, 39, 20)



--
--  ScrollFrame
--

local leftInset = CreateFrame("Frame","$parentLeftInset",frame,"InsetFrameTemplate")
leftInset:SetWidth(COLLECTION_LIST_WIDTH)
leftInset:SetHeight(496)
leftInset:SetPoint("TOPLEFT", 4, -60)
leftInset:SetPoint("BOTTOMLEFT", 4, 26)
leftInset:SetAttribute("parentKey","LeftInset")
leftInset:SetAttribute("useParentLevel","true")

local scrollFrame = CreateFrame("ScrollFrame","SetCollectorScrollFrame",frame,"SetCollectorCollectionsScrollFrameTemplate")
scrollFrame:SetPoint("TOPLEFT","$parentLeftInset","TOPLEFT",2,-5)
scrollFrame:SetPoint("BOTTOMRIGHT","$parentLeftInset","BOTTOMRIGHT", -4, 3)

local function GetCollectionButton(index)
	local buttons = SetCollectorFrame.CollectionsFrame.Contents.Collections;
	if ( not buttons[index] ) then
		local button = CreateFrame("BUTTON", nil, SetCollectorFrame.CollectionsFrame.Contents, "SetCollectorCollectionTemplate");
		buttons[index] = button;
	end
	return buttons[index];
end

function SetCollectorCollectionButton_OnClick(self)
	COLLECTION_COLLAPSED[self.Collection] = not COLLECTION_COLLAPSED[self.Collection]
	SetCollector:UpdateCollections()
end

local function GetSetButton(index)
	local buttons = SetCollectorFrame.CollectionsFrame.Contents.Sets;
	if ( not buttons[index] ) then
		local button = CreateFrame("BUTTON", nil, SetCollectorFrame.CollectionsFrame.Contents, "SetCollectorSetTemplate");
		buttons[index] = button;
	end
	return buttons[index];
end

local function SetHighlight(button, ...)
	local collection 	= button.Collection
	local set 				= button.Set
	if ( button ) then SetCollectorLegacy_UnsetHighlight(SELECTED_BUTTON) end
	button.Text:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
	button.Texture:Show()
	SELECTED_BUTTON = button
end

local function UnsetHighlight(button, ...)
	if ( button ) then			
		button.Text:SetTextColor(1.0, 0.82, 0);
		button.Texture:Hide()
	end
	SELECTED_BUTTON = nil
end

function SetCollectorSetButton_OnClick(self, button, ...)
	if ( button == "LeftButton" ) then
		if ( self ~= SELECTED_BUTTON ) then
			--SetVariantTabs(self.Collection, self.Set)
			SetHighlight(self)
		else
			--SetVariantTabs()
			--ClearItemButtons()
			UnsetHighlight(self)
		end
	elseif ( button == "RightButton" ) then
  	--[[if ( self == SELECTED_BUTTON ) then
	  	local Log = SetCollectorLegacyCharacterDB
	  	if ( Log.Sets[self.Set].Favorite == false ) then
	  		Log.Sets[self.Set].Favorite = true
	  		for i=1, #SetCollectorLegacyCharacterDB.Sets[self.Set].Variants do
	  			SetCollectorLegacyCharacterDB.Sets[self.Set].Variants[i].Favorite = true
	  		end
	  		self.Favorite:Show()
	  	else
	  		Log.Sets[self.Set].Favorite = false
	  		for i=1, #SetCollectorLegacyCharacterDB.Sets[self.Set].Variants do
	  			SetCollectorLegacyCharacterDB.Sets[self.Set].Variants[i].Favorite = false
	  		end
	  		self.Favorite:Hide()
	  	end
			SetVariantTabs(self.Collection, self.Set)
		else
	  	local Log = SetCollectorLegacyCharacterDB
	  	if ( Log.Sets[self.Set].Favorite == false ) then
	  		Log.Sets[self.Set].Favorite = true
	  		for i=1, #SetCollectorLegacyCharacterDB.Sets[self.Set].Variants do
	  			SetCollectorLegacyCharacterDB.Sets[self.Set].Variants[i].Favorite = true
	  		end
	  		self.Favorite:Show()
	  	else
	  		Log.Sets[self.Set].Favorite = false
	  		for i=1, #SetCollectorLegacyCharacterDB.Sets[self.Set].Variants do
	  			SetCollectorLegacyCharacterDB.Sets[self.Set].Variants[i].Favorite = false
	  		end
	  		self.Favorite:Hide()
	  	end
		end]]--
  else
  	print(button)
	end
end

function SetCollectorSetButton_OnEnter(self)
	if ( self.Collection and self.Set ) then 
		self.Text:SetFontObject("GameFontHighlightLeft")
		
		--[[local Collection = SetCollectorLegacyDB
		local collection = Collection[self.Collection].Title
		local set = _L[Collection[self.Collection].Sets[self.Set].Title] or _L["MISSING_LOCALIZATION"]
	
		GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT", -16, 16)
		GameTooltip:SetText(set, 1, 1, 1)
		for i=1, #Collection[self.Collection].Sets[self.Set].Variants do
			local collected = 0
			if ( SHOW_ONLY_OBTAINABLE == true and Collection[self.Collection].Sets[self.Set].Variants[i].Obtainable == false ) then
				-- Don't list
			elseif ( SHOW_ONLY_TRANSMOG == true and Collection[self.Collection].Sets[self.Set].Variants[i].Transmogrifiable == false ) then
				-- Don't list
			else
				for j=1, #Collection[self.Collection].Sets[self.Set].Variants[i].Items do
					local itemID = Collection[self.Collection].Sets[self.Set].Variants[i].Items[j]
					local count = 0
					count = count + GetItemCount(itemID, true)
					if SetCollectorLegacyCharacterDB.Items[itemID] then			-- Get Void Storage Count
						count = count + SetCollectorLegacyCharacterDB.Items[itemID].Count
					end
					if count > 0 then collected = collected + 1; end
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
				if Collection[self.Collection].Sets[self.Set].Variants[i] and not Collection[self.Collection].Sets[self.Set].Variants[i].Transmogrifiable then
					local text = _L["NOTRANSMOG"] or _L["MISSING_LOCALIZATION"]
					line = line.." ("..text..")"
				end
				if Collection[self.Collection].Sets[self.Set].Variants[i] and not Collection[self.Collection].Sets[self.Set].Variants[i].Obtainable then
					local text = _L["NOOBTAIN"] or _L["MISSING_LOCALIZATION"]
					line = line.." ("..text..")"
				end
				GameTooltip:AddLine(line)
			end
		end
		local rightclick = _L["RIGHT_CLICK_FAVORITE"] or _L["MISSING_LOCALIZATION"]
		GameTooltip:AddLine(rightclick, 1, 1, 1)
		GameTooltip:Show()]]--
	end
end

function SetCollectorSetButton_OnLeave(self)
	self.Text:SetFontObject("GameFontNormalLeft")
	GameTooltip:Hide()
end

function SetCollector:UpdateScrollFrame(collections, DEBUG)
	if DEBUG then SetCollector:Print("Updating ScrollFrame") end
	if collections then
		if DEBUG then SetCollector:Print("Received list of collections.") end
		prevButton = nil
		rowIndex = 1
		
		for i=1, #collections do
			rowIndex = rowIndex + 1
			button = GetCollectionButton(rowIndex)
			if ( COLLECTION_COLLAPSED[i] == true ) then
				button:SetText(L[collections[i].Title].."...")
			else
				button:SetText(L[collections[i].Title])
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
			
			if collections[i].sets then
				local sortedList = SetCollector:SortList(collections[i].sets, SORT_BY, SORT_DIR)
				for j,value in sortedList do
					
					rowIndex = rowIndex + 1
					titleButton = GetSetButton(rowIndex)
					titleButton.Text:SetText(L[collections[i].sets[j].Title] or L["MISSING_LOCALIZATION"])			-- Putting Text into FontString allows for Wrapping using SetWidth
					titleButton.Text:SetWidth(COLLECTION_LIST_WIDTH - 32)
					
					if (i == 10) then
						titleButton.SubText:SetText("|cff999999".."SubText Here".."|r")
					end
					
					local height = titleButton.Text:GetHeight() + titleButton.SubText:GetHeight() + 10
					titleButton:SetHeight(height)
					titleButton.Collection = i
					titleButton.Set = j
					titleButton:ClearAllPoints()
					titleButton:SetPoint("TOPLEFT", prevButton, "BOTTOMLEFT", 0, 0)
					titleButton:Hide()
					
					if not COLLECTION_COLLAPSED[i] then
						titleButton:Show()
						prevButton = titleButton
						setsDisplayed = setsDisplayed + 1
					end
				end	
			end
			if setsDisplayed == 0 and not COLLECTION_COLLAPSED[i] then					-- Hides the Collections button when no sets are displayed
				button:Hide()
				prevButton = archivePrevButton
			end
		end
	end
end



--
--  Model
--

local rightInset = CreateFrame("Frame","$parentRightInset",frame,"InsetFrameTemplate")
rightInset:SetPoint("TOPRIGHT", -6, -60)
rightInset:SetPoint("BOTTOMLEFT", leftInset, "BOTTOMRIGHT", 20, 0)
rightInset:SetAttribute("parentKey","RightInset")
rightInset:SetAttribute("useParentLevel","true")

local setDisplay = CreateFrame("Frame","SetCollectorSetDisplay",rightInset)
setDisplay:SetPoint("TOPLEFT",rightInset,"TOPLEFT", 3, -3)
setDisplay:SetPoint("BOTTOMRIGHT",rightInset,"BOTTOMRIGHT", -3, 3)
setDisplay:SetAttribute("parentKey","SetCollectorSetDisplay")
setDisplay.Texture = setDisplay:CreateTexture("setTexture","BACKGROUND")
setDisplay.Texture:SetAllPoints(setDisplay)
setDisplay.Texture:SetTexture("Interface\\PetBattles\\MountJournal-BG",false)
setDisplay.Texture:SetTexCoord(0,0.78515625,0,1)

local shadowOverlay = CreateFrame("Frame",nil,setDisplay,"ShadowOverlayTemplate")
shadowOverlay:SetAllPoints(true)
shadowOverlay:SetAttribute("useParentLevel","true")
shadowOverlay:SetAttribute("parentKey","ShadowOverlay")

local progressDisplay = CreateFrame("Button","SetCollectorSummaryButton",setDisplay)
progressDisplay:SetWidth(56)
progressDisplay:SetHeight(56)
progressDisplay:SetPoint("BOTTOM","$parent","BOTTOM",0,15)
progressDisplay.Summary = progressDisplay:CreateFontString("$parentSummary","OVERLAY","GameFontNormalLarge")
progressDisplay.Summary:SetPoint("CENTER", 0, 2)
progressDisplay.Summary:SetText(" ")
progressDisplay.Background = progressDisplay:CreateTexture("$parentBackground","BACKGROUND")
progressDisplay.Background:SetTexture(0,0,0,0.7)
progressDisplay.Background:SetPoint("TOPLEFT",3,-3)
progressDisplay.Background:SetPoint("BOTTOMRIGHT",-3,3)
progressDisplay.Texture = progressDisplay:CreateTexture("$parentTexture","OVERLAY")
progressDisplay.Texture:SetAtlas("collections-itemborder-uncollected")
progressDisplay.Texture:SetPoint("TOPLEFT",0,0)
progressDisplay.Texture:SetPoint("BOTTOMRIGHT",0,0)
progressDisplay:SetFrameLevel(10)
progressDisplay:RegisterForClicks("AnyDown")
progressDisplay:SetScript("OnClick", SetCollectorSummaryButton_OnClick)
progressDisplay:Hide()

local modelFrame = CreateFrame("DressUpModel","$parentModelFrame",setDisplay,"ModelWithZoomTemplate") --"ModelWithControlsTemplate")
modelFrame:SetPoint("TOPLEFT", setDisplay, "TOPLEFT", 0, 0)
modelFrame:SetPoint("BOTTOMRIGHT", setDisplay, "BOTTOMRIGHT", 0, 0)
modelFrame:SetAttribute("parentKey","ModelFrame")
modelFrame:SetAttribute("useParentLevel","true")

function SetCollector:InitializeModel()
	modelFrame:SetUnit("PLAYER")
end



--
--  Appearance Buttons
--

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
	itemButton:RegisterForClicks("AnyDown")
	itemButton:Hide()
	prevItem = itemButton
end



--
--  Variant Tabs
--

for i=1, 5 do
	local variantTab = CreateFrame("Button","$parentTab"..i,setDisplay,"CharacterFrameTabButtonTemplate")
	variantTab:SetID(i)
	variantTab:SetText(i)
	if i == 1 then
		variantTab:SetPoint("TOPLEFT", SetCollectorSetDisplay, "TOPLEFT", 5, 0)
	else
		local prev = i - 1
		variantTab:SetPoint("LEFT", "$parentTab"..prev, "RIGHT", -16, 0)
	end
	variantTab:RegisterForClicks("AnyDown")
	variantTab:SetScript("OnClick",SetCollectorVariantTab_OnClick)
	variantTab:Hide()
end
PanelTemplates_SetNumTabs(SetCollectorSetDisplay, 5)

function SetCollector:UpdateSelectedVariantTab(self)
	local selected = PanelTemplates_GetSelectedTab(self);
	if ( frame:IsShown() ) then
		--[[
		SetCollectorFrameSetDisplayModelFrame:Dress()
		
		local collection = _G["SetCollectorLegacySetDisplayTab"..selected].Collection
		local set = _G["SetCollectorLegacySetDisplayTab"..selected].Set
		if ( collection and set ) then
			SetCollectorLegacySetDisplayModelFrame:Undress()
	  	local Collections = SetCollectorLegacyDB
	  	local Log = SetCollectorLegacyCharacterDB
	  	local obtainable = Collections[collection].Sets[set].Variants[selected].Obtainable
			local num = #Collections[collection].Sets[set].Variants[selected].Items
			local acq = 0
			for i=1, num do
				local itemID = Collections[collection].Sets[set].Variants[selected].Items[i]
				SetCollectorLegacySetDisplayModelFrame:TryOn(itemID)
			 	local count = GetItemCount(itemID, true)
			 	if (Log.Items[itemID] and Log.Items[itemID].Count > 0) then count = count + Log.Items[itemID].Count; end
			 	if count > 0 then acq = acq + 1; end
			 	SetItemButton(_G["SetCollectorSetDisplayModelFrameItem"..i], itemID, 1, obtainable)
			 	--SetItemButton(_G["SetCollectorSetDisplayModelFrameItem"..i], itemID, Log.Items[itemID].Count)			-- No longer displaying count
			end
			ClearItemButtons(num + 1)
			SetCollectorSummaryButtonSummary:SetText(string.format(_L["ITEMS_COLLECTED"],acq,num))
			if acq > 0 then 
				SetCollectorSummaryButton.Texture:SetAtlas("collections-itemborder-collected")
			else
				SetCollectorSummaryButton.Texture:SetAtlas("collections-itemborder-uncollected")
			end
			SetCollectorFrameSummaryButton:Show()
		else
			SetCollectorFrameSummaryButton:Hide()
		end
			
		]]--
	end
end

function SetCollector:SetVariantTab(self, tab)
	PanelTemplates_SetTab(self, tab);
	--SetCVar("SetCollectorLegacyTab", tab);
	SetCollector:UpdateSelectedVariantTab(self);
end



--
--  Filter
--

local filterButton = CreateFrame("Frame","$parentSetFilter",frame,"UIDropDownMenuTemplate")
filterButton:SetPoint("TOPRIGHT",frame,"TOPRIGHT",-125,-28)
filterButton:SetAttribute("enableMouse","true")
filterButton:SetAttribute("parentKey","setFilter")

local function GetFilters()
	-- Do I still want to remember filters between sessions
	--SHOW_ONLY_FAVORITES 	= SetCollectorCharacterDB.Filters.favorites
	--SHOW_ONLY_OBTAINABLE 	= SetCollectorCharacterDB.Filters.obtainable
	--SHOW_ONLY_TRANSMOG 		= SetCollectorCharacterDB.Filters.transmog
	--CURRENT_FILTER 				= SetCollectorCharacterDB.Filters.spec
end

local function SetFilters()
	--SetCollectorLegacyCharacterDB.Filters.favorites		= SHOW_ONLY_FAVORITES
	--SetCollectorLegacyCharacterDB.Filters.obtainable 	= SHOW_ONLY_OBTAINABLE
	--SetCollectorLegacyCharacterDB.Filters.transmog 		= SHOW_ONLY_TRANSMOG
	--SetCollectorLegacyCharacterDB.Filters.spec 				= CURRENT_FILTER
end

local function SetFilterOptions(classIndex)
	CURRENT_FILTER = classIndex
end

local function GetFilterOptions()
	if CURRENT_FILTER == 0 or CURRENT_FILTER == nil then
		local currentSpec = GetSpecialization();
		if currentSpec == nil then currentSpec = 0 end
		CURRENT_FILTER = currentSpec + 2
	end
	return CURRENT_FILTER;
end

local function UpdateFilterString()
	local name = ALL;
	local currFilter = GetFilterOptions();

	if currFilter == LE_LOOT_FILTER_CLASS then
		name = UnitClass("player");
	else -- Spec
		local _, specName, _, icon = GetSpecializationInfo(currFilter - LE_LOOT_FILTER_SPEC1 + 1);
		name = specName;
	end
	
	UIDropDownMenu_SetText(filterButton, name);
end

local function SetFilter(self, classIndex)
	if ( classIndex == "favorites" ) then
		if SHOW_ONLY_FAVORITES == false then
			SHOW_ONLY_FAVORITES = true
		else
			SHOW_ONLY_FAVORITES = false
		end
	elseif ( classIndex == "obtainable" ) then
		if SHOW_ONLY_OBTAINABLE == false then
			SHOW_ONLY_OBTAINABLE = true
		else
			SHOW_ONLY_OBTAINABLE = false
		end
	elseif ( classIndex == "transmog" ) then
		if SHOW_ONLY_TRANSMOG == false then
			SHOW_ONLY_TRANSMOG = true
		else
			SHOW_ONLY_TRANSMOG = false
		end
	else
		SetFilterOptions(classIndex);
	end
	SetFilters()
	if frame:IsShown() then
		--CollectionsUpdate();
		UpdateFilterString()
	
		-- Clear Selection
		--SetCollectorLegacy_UnsetHighlight(SELECTED_BUTTON)
		--SELECTED_BUTTON = nil
		--SetVariantTabs()
		--ClearItemButtons()
	end
end

local function InitFilter()
	local info = UIDropDownMenu_CreateInfo();
	local currFilter = GetFilterOptions();
	local className = UnitClass("player");
	
	UpdateFilterString()
	info.func = SetFilter;
	
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
	info.func = SetFilter;
	UIDropDownMenu_AddButton(info);
	
	info.leftPadding = nil;
	info.text = FAVORITES_FILTER;
	info.checked = SHOW_ONLY_FAVORITES;
	info.arg1 = "favorites";
	UIDropDownMenu_AddButton(info);
	
	info.leftPadding = nil;
	info.text = L["OBTAIN_FILTER"] or L["MISSING_LOCALIZATION"];
	info.checked = SHOW_ONLY_OBTAINABLE;
	info.arg1 = "obtainable";
	UIDropDownMenu_AddButton(info);
	
	info.leftPadding = nil;
	info.text = L["TRANSMOG_FILTER"] or L["MISSING_LOCALIZATION"];
	info.checked = SHOW_ONLY_TRANSMOG;
	info.arg1 = "transmog";
	UIDropDownMenu_AddButton(info);
end

function SetCollector:InitializeFilter()
		GetFilters()
		--CollectionsUpdate()
		local init = function() InitFilter() end
		UIDropDownMenu_Initialize(filterButton, init)
end



--
--  Tutorial
--

local AddTutorial = {
	FramePos = { x = 0,	y = -30 },
	FrameSize = { width = 638, height = 496	},
	[1] = { ButtonPos = { x = 500,	y = 10 }, 	HighLightBox = { x = 497, y = 2, width = 200, height = 30 },		ToolTipDir = "LEFT",	ToolTipText = L["TUTORIAL_1"] },
	[2] = { ButtonPos = { x = 120,	y = -405 }, HighLightBox = { x = 8, y = -30, width = 252, height = 518 },		ToolTipDir = "DOWN",	ToolTipText = L["TUTORIAL_2"] },
	[3] = { ButtonPos = { x = 310,	y = -31 }, 	HighLightBox = { x = 285, y = -30, width = 412, height = 50 },	ToolTipDir = "LEFT",	ToolTipText = L["TUTORIAL_3"] },
	[4] = { ButtonPos = { x = 476,	y = -405 }, HighLightBox = { x = 285, y = -83, width = 412, height = 465 },	ToolTipDir = "DOWN",	ToolTipText = L["TUTORIAL_4"] },
}

local function GetTutorial()
	local helpPlate, mainHelpButton
	helpPlate = AddTutorial
	mainHelpButton = helpButton
	return helpPlate, mainHelpButton
end

function SetCollector:ToggleTutorial()
	local helpPlate, mainHelpButton = GetTutorial()
		
	if ( helpPlate and not HelpPlate_IsShowing(helpPlate) and frame:IsShown()) then
		HelpPlate_Show(helpPlate, frame:GetName(), mainHelpButton, HelpPlateSeen)
		SetCollector_HELP_VISIBLE = true
		HelpPlateSeen = true
	else
		HelpPlate_Hide(true) 								-- True indicates to animate the hide. Blank or flase suppresses the animation.
	  SetCollector_HELP_VISIBLE = false
	end
end



--
--  Portrait
--

function SetCollector:UpdatePortrait()
	local portrait = SetCollectorFramePortrait				-- Switch to frame
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



--
--  Minimap Button
--

local function CreateMinimapButton()
	local myLDB = LibStub("LibDataBroker-1.1"):NewDataObject("SetCollectorMinimap", {
		type = "launcher",
		text = L["ADDON_NAME"],
		icon = "Interface\\Icons\\INV_Gauntlets_Mail_RaidShaman_J_01",
		OnClick = function() SetCollector:ToggleUI() end,										--  Add logic for debug handling
		OnTooltipShow = function(tt)
			tt:AddLine(WHITE..L["ADDON_NAME"])
			tt:AddLine(L["MINIMAP_TOOLTIP"])
		end,
	})
  icon:Register("SetCollectorMinimap", myLDB, SetCollector.db.char.minimap)
end

function SetCollector:ToggleMinimapButton()
	SetCollector.db.char.minimap.hide = not SetCollector.db.char.minimap.hide
	if SetCollector.db.char.minimap.hide then
		icon:Hide("SetCollectorMinimap")
	else
		icon:Show("SetCollectorMinimap")
	end
end


--
--  Finalize UI Setup
--

function SetCollector:GetFrameObject()
	return frame
end

function SetCollector:HideUI(DEBUG)
		if DEBUG then SetCollector:Print("Hiding SetCollector UI") end
		HideUIPanel(frame)
end

function SetCollector:ShowUI(DEBUG)
		if DEBUG then SetCollector:Print("Showing SetCollector UI") end
		ShowUIPanel(frame)
end

function SetCollector:ToggleUI(DEBUG)
	if (frame:IsVisible()) then
		SetCollector:HideUI(DEBUG)
	else
		SetCollector:ShowUI(DEBUG)
	end
end

function SetCollector:OnShow(self)
	SetCollector:UpdatePortrait(self)
end

function SetCollector:OnHide(self)
	HelpPlate_Hide()
	--SetCollectorLegacySummaryButton:Hide()
	--SetVariantTabs()
	--ClearItemButtons()
	--SetCollectorLegacy_UnsetHighlight(SELECTED_BUTTON)
end

function SetCollector:SetupUI(DEBUG)
	local tutorialScript = function() SetCollector:ToggleTutorial() end
	helpButton:SetScript("OnClick", tutorialScript)
	
	local onShowScript = function() SetCollector:OnShow() end
	frame:SetScript("OnShow", onShowScript)
	local onHideScript = function() SetCollector:OnHide() end
	frame:SetScript("OnHide", onHideScript)
	
	SetCollector:SetVariantTab(SetCollectorSetDisplay, 1)
	
	CreateMinimapButton()
	-- Other delayed build actions
end