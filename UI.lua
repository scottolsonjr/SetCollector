local L = LibStub("AceLocale-3.0"):GetLocale("SetCollector", true)

local COLLECTION_LIST_WIDTH = 260

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

-- Add Left Inset (ScrollFrame)
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

-- Add Right Inset (Model)
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

-- Add Filter Button
local filterButton = CreateFrame("Frame","$parentSetFilter",frame,"UIDropDownMenuTemplate")
filterButton:SetPoint("TOPRIGHT",frame,"TOPRIGHT",-125,-28)
filterButton:SetAttribute("enableMouse","true")
filterButton:SetAttribute("parentKey","setFilter")

--
--  Local Functions
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



--
--  Global Functions
--

function SetCollector:GetFrameObject()
	return frame
end

function SetCollector:ToggleUI(DEBUG)
	if (frame:IsVisible()) then
		if DEBUG then SetCollector:Print("Hiding SetCollector UI") end
		HideUIPanel(frame)
	else
		if DEBUG then SetCollector:Print("Showing SetCollector UI") end
		ShowUIPanel(frame)
	end
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



function SetCollector:UpdateSelectedVariantTab(self)
	local selected = PanelTemplates_GetSelectedTab(self);
	if ( frame:IsShown() ) then
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
			 	SetItemButton(_G["SetCollectorLegacySetDisplayModelFrameItem"..i], itemID, 1, obtainable)
			 	--SetItemButton(_G["SetCollectorLegacySetDisplayModelFrameItem"..i], itemID, Log.Items[itemID].Count)			-- No longer displaying count
			end
			ClearItemButtons(num + 1)
			SetCollectorLegacySummaryButtonSummary:SetText(string.format(_L["ITEMS_COLLECTED"],acq,num))
			if acq > 0 then 
				SetCollectorLegacySummaryButton.Texture:SetAtlas("collections-itemborder-collected")
			else
				SetCollectorLegacySummaryButton.Texture:SetAtlas("collections-itemborder-uncollected")
			end
			SetCollectorLegacySummaryButton:Show()
		else
			SetCollectorLegacySummaryButton:Hide()
		end
	end
end

function SetCollector:SetVariantTab(self, tab)
	PanelTemplates_SetTab(self, tab);
	--SetCVar("SetCollectorLegacyTab", tab);
	--SetCollector:UpdateSelectedVariantTab(self);
end



--
--  Finalize UI Setup
--


function SetCollector:OnShow(self)
	SetCollector:UpdatePortrait(self)
end


function SetCollector:SetupUI(DEBUG)
	local tutorialScript = function() SetCollector:ToggleTutorial() end
	helpButton:SetScript("OnClick", tutorialScript)
	
	local onShowScript = function() SetCollector:OnShow() end
	frame:SetScript("OnShow", onShowScript)
	
	SetCollector:SetVariantTab(SetCollectorSetDisplay, 1)
	-- Other delayed build actions
end