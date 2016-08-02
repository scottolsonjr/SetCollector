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

local frame = CreateFrame("Frame", "SetCollectorFrame", UIParent, "ButtonFrameTemplate")

local title = CreateFrame("Frame", "$parentTitle", frame)			--, "GameFontNormal"
title:SetWidth(300)
title:SetHeight(14)
title:SetPoint("TOP", 0, -4)
title:SetFrameLevel(100)
title:SetAttribute("parentKey", "Title")

--frame.Title:SetText(L["ADDON_NAME"])

frame:SetWidth(703)
frame:SetHeight(606)
frame:SetPoint("TOPLEFT",17,-115)

tinsert(UISpecialFrames, frame:GetName())							-- Hides frame when Escape is pressed or Game menu selected.
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

--[[local scrollFrame = CreateFrame("ScrollFrame","SetCollectorScrollFrame",frame,"SetCollectorCollectionsScrollFrameTemplate")
scrollFrame:SetPoint("TOPLEFT","$parentLeftInset","TOPLEFT",2,-5)
scrollFrame:SetPoint("BOTTOMRIGHT","$parentLeftInset","BOTTOMRIGHT", -4, 3)]]--

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

--[[local prevItem
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
end]]--

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
--SetVariantTab(SetCollectorSetDisplay, 1)

-- Add Filter Button
local filterButton = CreateFrame("Frame","$parentSetFilter",frame,"UIDropDownMenuTemplate")
filterButton:SetPoint("TOPRIGHT",frame,"TOPRIGHT",-125,-28)
filterButton:SetAttribute("enableMouse","true")
filterButton:SetAttribute("parentKey","setFilter")

function SetCollector:HideFrame()
	SetCollector:Print("Hiding SetCollector UI")
	frame:Hide()
end

function SetCollector:ShowFrame()
	SetCollector:Print("Showing SetCollector UI")
	frame:Show()
end