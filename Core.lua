--
-- Local Variables and Constants
--

local addonName = ...
local addon = _G[addonName]
local DB_VERSION = "1.1.0.2"
local INITIALIZED = false
local _L = SetCollectorLocalization

local classes = {}
FillLocalizedClassList(classes)
local DEATHKNIGHT = classes.DEATHKNIGHT
local DRUID 			= classes.DRUID
local HUNTER 			= classes.HUNTER
local MAGE 				= classes.MAGE
local MONK 				= classes.MONK
local PALADIN 		= classes.PALADIN
local PRIEST 			= classes.PRIEST
local ROGUE 			= classes.ROGUE
local SHAMAN 			= classes.SHAMAN
local WARLOCK 		= classes.WARLOCK
local WARRIOR 		= classes.WARRIOR


-- Other local variables not requiring localization

local TANK 		= "TANK"
local HEALER 	= "HEALER"
local CASTER 	= "CASTER"
local RANGED 	= "RANGED"
local MELEE 	= "MELEE"

local POOR 			= 0
local COMMON 		= 1
local UNCOMMON 	= 2
local RARE 			= 3
local EPIC 			= 4
local LEGENDARY = 5
local ARTIFACT 	= 6
local HEIRLOOM 	= 7

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

-- Void Storage appears to use a simple 1 to 80 loop

-- Begin Local Variable Use Review
local SETTLED_FRAME_HELP_VISIBLE = false;
local SETTLED_FRAME_SELECTED_SET = 0;
local SETTLED_FRAME_SELECTED_NAME;
local SETTLED_FRAME_SELECTED_BUTTON;
local SELECTED_BUTTON = "";
local SELECTED_INDEX = 0;
local SELECTED_OFFSET = 0
local SELECTED_COLLECTION = 0;
local SELECTED_SET = 0;

local WHITE		= "|cFFFFFFFF"
local RED		= "|cFFFF0000"
local GREEN		= "|cFF00FF00"
local YELLOW	= "|cFFFFFF00"
local ORANGE	= "|cFFFF7F00"
local TEAL		= "|cFF00FF9A"
local GOLD		= "|cFFFFD700"

local PLAYER_CURRENT_LEVEL = UnitLevel("player");
local PLAYER_CURRENT_SPECIALIZATION = GetSpecialization();
local PLAYER_CURRENT_SPECIALIZATION_ID = nil;
local PLAYER_CURRENT_SPECIALIZATION_NAME = nil;
local PLAYER_CURRENT_SPECIALIZATION_ROLE = nil;
  if PLAYER_CURRENT_SPECIALIZATION then
  	local id, name, description, icon, background, role = GetSpecializationInfo(PLAYER_CURRENT_SPECIALIZATION);
  	PLAYER_CURRENT_SPECIALIZATION_ID = id;
  	PLAYER_CURRENT_SPECIALIZATION_NAME = name;
  	PLAYER_CURRENT_SPECIALIZATION_ROLE = role;
  end
local avgItemLevel, avgItemLevelEquipped = GetAverageItemLevel();
local PLAYER_CURRENT_ITEM_LEVEL = avgItemLevelEquipped;
-- End Local Variable Use Review

local CURRENT_DISPLAY = { }
local COLLAPSED_COLLECTIONS = { }

local CURRENT_FILTER = 0

--
-- General Functions
--

function SetCollector_ToggleUI()
	if (SetCollectorFrame:IsVisible()) then
		HideUIPanel(SetCollectorFrame);
	else
		ShowUIPanel(SetCollectorFrame);
	end
end

function SetCollector_ShowMinimapTooltip(frame)
	if not frame then return end
	
	SetCollectorTooltip:SetOwner(frame, "ANCHOR_LEFT");
	SetCollectorTooltip:ClearLines();
	SetCollectorTooltip:AddLine(WHITE.._L["ADDON_NAME"]);
	SetCollectorTooltip:AddLine(_L["MINIMAP_TOOLTIP"]);
	SetCollectorTooltip:Show();
end

--
-- General Functions - Local
--

local function SetHighlight(button, ...)
	local index 			= _G[button].index
	local offset 			= _G[button].index + FauxScrollFrame_GetOffset(SetCollectorFrameScrollBar);
	local collection 	= _G[button].collection
	local set 				= _G[button].set
	
	_G[button].normalText:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	_G[button].tag:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	_G[button].groupMates:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	_G[button].texture:SetTexture("Interface\\QuestFrame\\UI-QuestLogTitleHighlight");
		  
	SELECTED_BUTTON = button;
	SELECTED_INDEX = index;
	SELECTED_OFFSET = offset
	SELECTED_COLLECTION = _G[button].collection
	SELECTED_SET = _G[button].set
end

local function UnsetHighlight(button, quality, ...)
	local color;
	if button ~= nil then
		if _G[button].collection == "" and _G[button].set == "" then
			color = { r = 0.75, g = 0.75, b = 0.75 };
		else
			if quality == nil then
				color = { r = 0.75, g = 0.75, b = 0.75 };
			else
				color = ITEM_QUALITY_COLORS[quality];
			end
		end
			
		_G[button].normalText:SetTextColor(color.r, color.g, color.b);
		_G[button].tag:SetTextColor(color.r, color.g, color.b);
		_G[button].groupMates:SetTextColor(color.r, color.g, color.b);
		_G[button].texture:SetTexture(0,0,0,0);
	end
	
	-- Reset Variables
	SELECTED_BUTTON = nil
	SELECTED_INDEX = 0
	SELECTED_OFFSET = 0
	SELECTED_COLLECTION = 0
	SELECTED_SET = 0
end

local function SetCollectorFrame_UpdatePortrait()
	local masteryIndex = GetSpecialization();
	if (masteryIndex == nil) then
		local _, class = UnitClass("player");
		SetCollectorFramePlayerPortrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles");
		SetCollectorFramePlayerPortrait:SetTexCoord(unpack(CLASS_ICON_TCOORDS[class]));
	else
		local _, _, _, icon = GetSpecializationInfo(masteryIndex);
		SetCollectorFramePlayerPortrait:SetTexCoord(0, 1, 0, 1);
		SetPortraitToTexture(SetCollectorFramePlayerPortrait, icon);	
	end
end

local function SetCollectorFrame_UpdateCharacterInfo()
	-- http://wowpedia.org/API_UnitLevel
	PLAYER_CURRENT_LEVEL = UnitLevel("player");
	
  -- http://wowpedia.org/API_GetSpecialization
  local PLAYER_CURRENT_SPECIALIZATION = GetSpecialization();
  if PLAYER_CURRENT_SPECIALIZATION then
  	local id, name, description, icon, background, role = GetSpecializationInfo(PLAYER_CURRENT_SPECIALIZATION);
  	PLAYER_CURRENT_SPECIALIZATION_ID = id;
  	PLAYER_CURRENT_SPECIALIZATION_NAME = name;
  	PLAYER_CURRENT_SPECIALIZATION_ROLE = role;
  end

  -- http://wowpedia.org/API_GetAverageItemLevel
	local avgItemLevel, avgItemLevelEquipped = GetAverageItemLevel();
	PLAYER_CURRENT_ITEM_LEVEL = avgItemLevelEquipped;
	
end

local function SetFilterOptions(classIndex)
	CURRENT_FILTER = classIndex
end

local function GetFilterOptions()
	if CURRENT_FILTER == 0 then
		-- Insert Specialization Lookup Here
		local currentSpec = GetSpecialization();
		if currentSpec == nil then currentSpec = 0 end 	-- Fix for unspecialized characters
		CURRENT_FILTER = currentSpec + 2
	end
	return CURRENT_FILTER;
end

local function GetSetSpecializationRole(spec)
	if 		 spec == 62 	then return CASTER 	-- Arcane Mage
	elseif spec == 63 	then return CASTER	-- Fire Mage
	elseif spec == 64 	then return CASTER	-- Frost Mage
	elseif spec == 65 	then return HEALER	-- Holy Paladin
	elseif spec == 66 	then return TANK		-- Protection Paladin
	elseif spec == 70 	then return MELEE		-- Retribution Paladin
	elseif spec == 71 	then return MELEE		-- Arms Warrior
	elseif spec == 72 	then return MELEE		-- Fury Warrior
	elseif spec == 73 	then return TANK		-- Protection Warrior
	elseif spec == 102 	then return CASTER	-- Balance Druid
	elseif spec == 103 	then return MELEE		-- Feral Combat Druid
	elseif spec == 104 	then return TANK		-- Guardian Druid
	elseif spec == 105 	then return HEALER	-- Restoration Druid
	elseif spec == 250 	then return TANK		-- Blood Death Knight
	elseif spec == 251 	then return MELEE		-- Frost Death Knight
	elseif spec == 252 	then return MELEE		-- Unholy Death Knight
	elseif spec == 253 	then return RANGED	-- Beast Mastery Hunter
	elseif spec == 254 	then return RANGED	-- Marksmanship Hunter
	elseif spec == 255 	then return RANGED	-- Survival Hunter
	elseif spec == 256 	then return HEALER	-- Discipline Priest
	elseif spec == 257 	then return HEALER	-- Holy Priest
	elseif spec == 258 	then return CASTER	-- Shadow Priest
	elseif spec == 259 	then return MELEE		-- Assassination Rogue
	elseif spec == 260 	then return MELEE		-- Combat Rogue
	elseif spec == 261 	then return MELEE		-- Subtlety Rogue
	elseif spec == 262 	then return CASTER	-- Elemental Shaman
	elseif spec == 263 	then return MELEE		-- Enhancement Shaman
	elseif spec == 264 	then return HEALER	-- Restoration Shaman
	elseif spec == 265 	then return CASTER	-- Affliction Warlock
	elseif spec == 266 	then return CASTER	-- Demonology Warlock
	elseif spec == 267 	then return CASTER	-- Destruction Warlock
	elseif spec == 268 	then return TANK		-- Brewmaster Monk
	elseif spec == 269 	then return MELEE		-- Windwalker Monk
	elseif spec == 270 	then return HEALER	-- Mistweaver Monk
	else return "ALL"												-- No specialization selected yet
	end
end



--
-- UI Functions
--

-- SetCollectorFrame Tutorial / HelpPlate

local SetCollectorFrame_HelpPlate = {
	FramePos = { x = 0,	y = -30 },
	FrameSize = { width = 338, height = 496	},
	[1] = { ButtonPos = { x = 440,	y = 10 }, 	HighLightBox = { x = 441, y = 2, width = 200, height = 30 },		ToolTipDir = "LEFT",		ToolTipText = _L["TUTORIAL_1"] },
	[2] = { ButtonPos = { x = 140,	y = -366 }, HighLightBox = { x = 8, y = -30, width = 308, height = 406 },		ToolTipDir = "UP",			ToolTipText = _L["TUTORIAL_2"] },
	[3] = { ButtonPos = { x = 460,	y = -366 }, HighLightBox = { x = 321, y = -30, width = 320, height = 406 },	ToolTipDir = "UP",			ToolTipText = _L["TUTORIAL_3"] },
}

function SetCollectorFrame_ToggleTutorial()
	local tutorial, helpPlate, mainHelpButton = SetCollectorFrame_GetTutorial();
		
	if ( helpPlate and not HelpPlate_IsShowing(helpPlate) and SetCollectorFrame:IsShown()) then
		HelpPlate_Show( helpPlate, SetCollectorFrame, mainHelpButton, true );
		SetCollectorFrame_HELP_VISIBLE = true;
	else
		HelpPlate_Hide(true);
	  SetCollectorFrame_HELP_VISIBLE = false;
	end
end

function SetCollectorFrame_GetTutorial()
	local tutorial;
	local helpPlate;
	local mainHelpButton;

	tutorial = "Content Here."; -- Where does this display?
	helpPlate = SetCollectorFrame_HelpPlate;
	mainHelpButton = SetCollectorFrame.MainHelpButton;
	return tutorial, helpPlate, mainHelpButton;
end

function SetCollector_UpdateMinimapIconCoords()
	local x, y = GetCursorPosition()
	local s = Minimap:GetEffectiveScale()
	local mX, mY = Minimap:GetCenter()
	local a = mX - (x/s)
	local b = mY - (y/s)
	local c = math.sqrt(a^2 + b^2 - (2 * a * b * math.cos(math.pi / 2)))
	local t = math.acos((b^2 + c^2 - a^2) / (2 * b * c)) - (math.pi / 2)
	if mX > (x/s) then
		t = math.pi - t
	end
	SetCollectorDB["MinimapButtonAngle"] = t
	SetCollector_MoveMinimapIcon()
end

function SetCollector_MoveMinimapIcon()
	local r = 78
	local t = SetCollectorDB["MinimapButtonAngle"]
	local x = r * math.cos(t)
	local y = r * math.sin(t)
	SetCollectorMinimapButton:SetPoint("CENTER", Minimap, "CENTER", x, y)
end

-- Events

local MyModData = { };

function SetCollectorFrame_OnLoad (self)
  -- Register events
  SetCollectorFrame:RegisterEvent("ADDON_LOADED");
	SetCollectorFrame:RegisterEvent("PLAYER_ENTERING_WORLD");
	SetCollectorFrame:RegisterEvent("BAG_UPDATE");
	SetCollectorFrame:RegisterEvent("BANKFRAME_OPENED");
	
  -- Hides frame when Escape is pressed or Game menu selected.
  tinsert(UISpecialFrames, "SetCollectorFrame");
  
  -- Allows frame to shift other frames when opened or be shifted when others are opened.
  -- http://www.wowwiki.com/Creating_standard_left-sliding_frames
  SetCollectorFrame:SetAttribute("UIPanelLayout-defined", true)
  SetCollectorFrame:SetAttribute("UIPanelLayout-enabled", true)
  SetCollectorFrame:SetAttribute("UIPanelLayout-area", "left")
  SetCollectorFrame:SetAttribute("UIPanelLayout-pushable", 3)
  SetCollectorFrame:SetAttribute("UIPanelLayout-width", width)
  SetCollectorFrame:SetAttribute("UIPanelLayout-whileDead", true)
  
  -- Set Frame Title
	SetCollectorFrame.Title:SetText(_L["ADDON_NAME"]);
	
	-- Setup Filter
	UIDropDownMenu_SetWidth(SetCollectorFrame.setFilter, 132);
	
end

function SetCollectorFrame_OnEvent (self, event, ...)
	if event == "ADDON_LOADED" and ... == "SetCollector" then
		SetCollectorSetupDB()
		
	elseif event == "PLAYER_ENTERING_WORLD" then
		if INITIALIZED == false then
			local class = UnitClass("player")
			local faction, localizedFaction = UnitFactionGroup("player")
			
			-- Initialize Dropdown Filter
			UIDropDownMenu_Initialize(SetCollectorFrame.setFilter, SetCollectorFrame_InitFilter);
			
			if SetCollectorCharacterDB == nil then
				SetCollectorCharacterDB = { version = DB_VERSION, Items = { } }
				
				for i=1, #SetCollectorDB[class].Collections do
					for j=1, #SetCollectorDB[class].Collections[i].Sets do
						for k=1, #SetCollectorDB[class].Collections[i].Sets[j].setPieces do
							local itemID = SetCollectorDB[class].Collections[i].Sets[j].setPieces[k]
							SetCollectorCharacterDB.Items[itemID] = { count = 0 }
						end
					end
				end
				
			elseif SetCollectorCharacterDB.version ~= DB_VERSION then
				SetCollectorCharacterDB.version = DB_VERSION
				
				for i=1, #SetCollectorDB[class].Collections do
					for j=1, #SetCollectorDB[class].Collections[i].Sets do
						for k=1, #SetCollectorDB[class].Collections[i].Sets[j].setPieces do
							if SetCollectorCharacterDB.Items[itemID] == nil then
								local itemID = SetCollectorDB[class].Collections[i].Sets[j].setPieces[k]
								SetCollectorCharacterDB.Items[itemID] = { count = 0 }
							end
						end
					end
				end
				
			else
				-- Leave it alone
			end
					
			for key, value in pairs(SetCollectorCharacterDB.Items) do
				-- Check EQUIPMENT for item (Longhand for detailed scan, future look at inventory and set count to 1 for quick)
				for i=1, #EQUIPMENT do
					local itemID = GetInventoryItemID("player", EQUIPMENT[i]);
					if key == itemID then
						value.count = 1
					end
				end
				-- Check BAGS for item
				for i=1, #BAGS do	--
					local numberOfSlots = GetContainerNumSlots(BAGS[i]); 
					for j=1, numberOfSlots do
						local itemID = GetContainerItemID(BAGS[i],j);
						if key == itemID then
							value.count = 1
						end
					end
				end
				-- Check Void Storage for item
				for i=1, 80 do -- VOID_STORAGE_MAX
					local itemID, textureName, locked, recentDeposit, isFiltered = GetVoidItemInfo(i);
					if key == itemID then
						value.count = 1
					end
				end
			end
			
			-- Position Minimap Button
			if SetCollectorDB["ShowMinimapButton"] == true then
				SetCollector_MoveMinimapIcon()
			end
		
			-- Setup DressUpModel
			SetCollectorFrameDressUpModel:SetUnit("PLAYER")
			SetCollectorFrameDressUpModel:SetPosition(0.1,0,0) 	-- Slightly moves the model to the left
			SetCollectorFrameDressUpModel:SetFacing(0.25)				-- Slightly turns the model towards the list
			
			INITIALIZED = true
		end
		
	elseif event == "BAG_UPDATE" then
		for key, value in pairs(SetCollectorCharacterDB.Items) do
			-- Check BAGS for item
			for i=1, #BAGS do	--
				local numberOfSlots = GetContainerNumSlots(BAGS[i]); 
				for j=1, numberOfSlots do
					local itemID = GetContainerItemID(BAGS[i],j);
					if key == itemID then
						value.count = 1
					end
				end
			end
		end
		if SetCollectorFrame:IsVisible() then
			SetCollectorFrameScrollBar_Update()
		end
			
	elseif event == "BANKFRAME_OPENED" then
		for key, value in pairs(SetCollectorCharacterDB.Items) do
			-- Check BAGS for item
			for i=1, #BAGS do
				local numberOfSlots = GetContainerNumSlots(BAGS[i]); 
				for j=1, numberOfSlots do
					local itemID = GetContainerItemID(BAGS[i],j);
					if key == itemID then
						value.count = 1
					end
				end
			end
			-- Check BANK for item
			for i=1, #BANK do
				local numberOfSlots = GetContainerNumSlots(BANK[i]); 
				for j=1, numberOfSlots do
					local itemID = GetContainerItemID(BANK[i],j);
					if key == itemID then
						value.count = 1
					end
				end
			end
		end
		if SetCollectorFrame:IsVisible() then
			SetCollectorFrameScrollBar_Update()
		end
		
	end
end

function SetCollectorFrame_OnShow (self)
	PlaySound("igCharacterInfoOpen");
	SetCollectorFrame_UpdatePortrait();					-- Review functionality
	SetCollectorFrame_UpdateCharacterInfo();		-- Review functionality
	SetCollectorFrameScrollBar_Update();
end

function SetCollectorFrame_OnHide (self)
  if SetCollectorFrame_HELP_VISIBLE == true then
    SetCollectorFrame_ToggleTutorial();
  end
  UnsetHighlight()
	PlaySound("igCharacterInfoClose");
end

--
-- ScrollFrame Functions
--

function SetCollectorFrameScrollBar_Update()
	
	-- Get List to Display (Add Class, Role and Text Filters plus collapse)
  CURRENT_DISPLAY = { } -- Clear Previous Display
  
  -- Class and Faction Filters
  local class = UnitClass("player");
	local faction, localizedFaction = UnitFactionGroup("player")
  
  -- Specialization/Role Filter
  local specID = 0;
	local currFilter = GetFilterOptions();

	if currFilter == LE_LOOT_FILTER_CLASS then
		local currentSpec = GetSpecialization();
		local specID = currentSpec and select(1, GetSpecializationInfo(currentSpec)) or "None";
		local role = GetSetSpecializationRole(specID);
	else -- Spec
		local id = GetSpecializationInfo(currFilter - LE_LOOT_FILTER_SPEC1 + 1);
		specID = id;
	end
  local role = GetSetSpecializationRole(specID);
  
  for i=1, #SetCollectorDB[class].Collections do
  	if (SetCollectorDB[class].Collections[i].Role == nil or SetCollectorDB[class].Collections[i].Role == role or role == "ALL") then
  		if (SetCollectorDB[class].Collections[i].Faction == nil or SetCollectorDB[class].Collections[i].Faction == faction or faction == nil) then
		  	local collapse = false
		  	if COLLAPSED_COLLECTIONS[i] == true then
		  		collapse = true
		  	end
		  
		  	local collectionDisplay = {
		  		Type = "Collection",
		  		ID = i,
		  		Name = SetCollectorDB[class].Collections[i].Name,
		  		Tag = "",
		  		GroupMates = 0,
		  		IsHeader = true,
		  		IsCollapsed = collapse,
		  		IsComplete = false
		  	}
		  	tinsert(CURRENT_DISPLAY, collectionDisplay)
		  	
		  	if not collectionDisplay.IsCollapsed then
					for j=1, #SetCollectorDB[class].Collections[i].Sets do
						if (SetCollectorDB[class].Collections[i].Sets[j].Role == nil or SetCollectorDB[class].Collections[i].Sets[j].Role == role or role == "ALL") then
				  		local acquired = 0
				  		for k=1, #SetCollectorDB[class].Collections[i].Sets[j].setPieces do
				  			acquired = acquired + SetCollectorCharacterDB.Items[SetCollectorDB[class].Collections[i].Sets[j].setPieces[k]].count
				  			
				  		end
				  		
				  		local isComplete = false
				  		local tag = ""
				  		if SetCollectorDB[class].Collections[i].Sets[j].setPiecesNumAvailable == acquired then
				  			tag = "(Complete)"
				  			isComplete = true
				  		end
				  		
				  		local setDisplay = {
				  			Type = "Set",
				  			Collection = i,
				  			ID = j,
				  			Name = "["..SetCollectorDB[class].Collections[i].Sets[j].MinLevel.."] "..SetCollectorDB[class].Collections[i].Sets[j].Name,
				  			Quality = SetCollectorDB[class].Collections[i].Sets[j].Quality,
				  			Tag = tag,
				  			GroupMates = acquired,
				  			IsHeader = false,
				  			IsCollapsed = false,
				  			IsComplete = isComplete
				  		}
				  		
			  			tinsert(CURRENT_DISPLAY, setDisplay)
			  		
			  		end
			  	end
			  end
		  end
  	end
  	
  end
  
  local maxLines = #CURRENT_DISPLAY;
  local maxLinesDisplayed = 25;
  local buttonWidth = 320;
  local buttonHeight = 16;
  local line; -- 1 through 5 of our window to scroll
  local lineplusoffset; -- an index into our data calculated from the scroll offset
  FauxScrollFrame_Update(SetCollectorFrameScrollBar,maxLines,maxLinesDisplayed,buttonHeight);
  
  -- Create buttons dynamically
  for line = 1, maxLinesDisplayed do
    lineplusoffset = line + FauxScrollFrame_GetOffset(SetCollectorFrameScrollBar);
  	local prevLine = line - 1;
    local color;
	  if line == 1 then
	  	local button = CreateFrame("Button","SetCollectorEntry"..line, SetCollectorFrame, "SetCollectorListItemTemplate");
	  	button:SetPoint("TOPLEFT","SetCollectorFrameScrollBar","TOPLEFT",2,0);
	  	button:SetWidth(buttonWidth);
	  	button:SetHeight(buttonHeight);
    else
    	local button = CreateFrame("Button","SetCollectorEntry"..line, SetCollectorFrame, "SetCollectorListItemTemplate");
	  	button:SetPoint("TOPLEFT","SetCollectorEntry"..prevLine,"BOTTOMLEFT");
	  	button:SetWidth(buttonWidth);
	  	button:SetHeight(buttonHeight);
	  end	  
	  
	  if lineplusoffset <= maxLines then
	  
		  if CURRENT_DISPLAY[lineplusoffset].IsHeader then
		  	_G["SetCollectorEntry"..line]:SetText(CURRENT_DISPLAY[lineplusoffset].Name);
		  	_G["SetCollectorEntry"..line].tag:SetText("");
		  	_G["SetCollectorEntry"..line].groupMates:SetText("");
		  	
		  	_G["SetCollectorEntry"..line].collection = ""
		  	_G["SetCollectorEntry"..line].set = ""
		  	
		  	_G["SetCollectorEntry"..line].normalText:SetTextColor(0.75, 0.75, 0.75);
		  	_G["SetCollectorEntry"..line].tag:SetTextColor(0.75, 0.75, 0.75);
		  	_G["SetCollectorEntry"..line].groupMates:SetTextColor(0.75, 0.75, 0.75);
				_G["SetCollectorEntry"..line].texture:SetTexture(0,0,0,0);
		  	
		  	if CURRENT_DISPLAY[lineplusoffset].IsCollapsed then
		  		_G["SetCollectorEntry"..line]:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up");
		    	_G["SetCollectorEntry"..line]:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight");
		  	else
		  		_G["SetCollectorEntry"..line]:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up");
		    	_G["SetCollectorEntry"..line]:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight");
		  	end	
		  	
		  else
		  	_G["SetCollectorEntry"..line]:SetText(CURRENT_DISPLAY[lineplusoffset].Name);
		  	_G["SetCollectorEntry"..line].tag:SetText(CURRENT_DISPLAY[lineplusoffset].Tag);
		  	if not CURRENT_DISPLAY[lineplusoffset].IsComplete and CURRENT_DISPLAY[lineplusoffset].GroupMates ~= 0 then
		  		_G["SetCollectorEntry"..line].groupMates:SetText(CURRENT_DISPLAY[lineplusoffset].GroupMates);
		  	else
		  		_G["SetCollectorEntry"..line].groupMates:SetText("");
		  	end
		  	
		  	_G["SetCollectorEntry"..line].collection = CURRENT_DISPLAY[lineplusoffset].Collection
		  	_G["SetCollectorEntry"..line].set = CURRENT_DISPLAY[lineplusoffset].ID
		  	
	  		-- SetHighlight
		    _G["SetCollectorEntry"..line]:SetNormalTexture("");
		    _G["SetCollectorEntry"..line]:SetHighlightTexture("");
		    
		    if CURRENT_DISPLAY[lineplusoffset].Collection == SELECTED_COLLECTION and CURRENT_DISPLAY[lineplusoffset].ID == SELECTED_SET then
			  	_G["SetCollectorEntry"..line].normalText:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
					_G["SetCollectorEntry"..line].tag:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
					_G["SetCollectorEntry"..line].groupMates:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
					_G["SetCollectorEntry"..line].texture:SetTexture("Interface\\QuestFrame\\UI-QuestLogTitleHighlight");
					
					SELECTED_BUTTON = "SetCollectorEntry"..line
		  		SELECTED_INDEX = line
		  		SELECTED_OFFSET = lineplusoffset
			  		
			  else
					-- Set Color
			    color = ITEM_QUALITY_COLORS[CURRENT_DISPLAY[lineplusoffset].Quality]
			    if CURRENT_DISPLAY[lineplusoffset].Collection == SELECTED_COLLECTION and CURRENT_DISPLAY[lineplusoffset].Set == SELECTED_SET then
			      _G["SetCollectorEntry"..line].tag:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
				    _G["SetCollectorEntry"..line].groupMates:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
						_G["SetCollectorEntry"..line].texture:SetTexture("Interface\\QuestFrame\\UI-QuestLogTitleHighlight");
			    else
				    _G["SetCollectorEntry"..line].normalText:SetTextColor(color.r, color.g, color.b);
				    _G["SetCollectorEntry"..line].tag:SetTextColor(color.r, color.g, color.b);
				    _G["SetCollectorEntry"..line].groupMates:SetTextColor(color.r, color.g, color.b);
						_G["SetCollectorEntry"..line].texture:SetTexture(0,0,0,0);
					end
				end
		  end
		  	
	    _G["SetCollectorEntry"..line].index = line;
	    _G["SetCollectorEntry"..line]:Show();
		  
	  else	    
	  	_G["SetCollectorEntry"..line]:SetNormalTexture("");
	    _G["SetCollectorEntry"..line]:SetHighlightTexture("");
	  	_G["SetCollectorEntry"..line].index = line;
	    _G["SetCollectorEntry"..line]:Hide();
	  end
  end
end

function SetCollectorListItem_OnLoad(self)
	self:RegisterForClicks("LeftButtonUp", "RightButtonUp");
end

function SetCollectorListItem_OnClick(self, button)
	local button 			= self:GetName()
	local index 			= _G[button].index
	local offset 			= _G[button].index + FauxScrollFrame_GetOffset(SetCollectorFrameScrollBar);
	local collection 	= _G[button].collection
	local set 				= _G[button].set
	
	local class = UnitClass("player")
	
	local previousButton 			= SELECTED_BUTTON
	local previousIndex 			= SELECTED_INDEX
	local previousOffset 			= SELECTED_OFFSET
	local previousCollection 	= SELECTED_COLLECTION
	local previousSet 				= SELECTED_SET
	
	-- Check for header
	if _G[button].collection == "" and _G[button].set == "" then
		-- Future Helper ToggleCollapse(COLLAPSED_COLLECTIONS[CURRENT_DISPLAY[self.index].ID])
		if COLLAPSED_COLLECTIONS[CURRENT_DISPLAY[offset].ID] then
			COLLAPSED_COLLECTIONS[CURRENT_DISPLAY[offset].ID] = false
		else
			COLLAPSED_COLLECTIONS[CURRENT_DISPLAY[offset].ID] = true
		end
		SetCollectorFrameScrollBar_Update()
		-- end ToggleCollapse()
		
	else	
		if index == SELECTED_INDEX then
			SetCollectorFrameDressUpModel:Dress()
			UnsetHighlight(previousButton, CURRENT_DISPLAY[offset].Quality)
			
		elseif index == nil then
			print("Error: Item Index is Nil")
			
		else
			-- Unset Previous Highlight
			if previousOffset ~= 0 then
				if CURRENT_DISPLAY[previousOffset].IsHeader then
					UnsetHighlight(previousButton)
				else
					UnsetHighlight(previousButton, CURRENT_DISPLAY[previousOffset].Quality)
				end
			end

		  SetHighlight(button)
		  
			-- Show Items on Model
		  for i=1, #SetCollectorDB[class].Collections[_G[button].collection].Sets[_G[button].set].setPieces do
		  	SetCollectorFrameDressUpModel:TryOn(SetCollectorDB[class].Collections[_G[button].collection].Sets[_G[button].set].setPieces[i])
		  end
		end 
	end
	
end

function SetCollectorListItem_OnEnter(self)
	local button = self:GetName()
	if _G[button]:IsShown() ~= nil then
		self.normalText:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
		self.tag:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
		self.groupMates:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	end
end

function SetCollectorListItem_OnLeave(self)
	local button = self:GetName()
	if _G[button]:IsShown() ~= nil and self.index ~= nil then
		if ( self.index == SELECTED_INDEX and self.collection == SELECTED_COLLECTION and self.set == SELECTED_SET) then
			-- Do nothing
		else
			local color
			local lineplusoffset = self.index + FauxScrollFrame_GetOffset(SetCollectorFrameScrollBar);
			if CURRENT_DISPLAY[lineplusoffset].IsHeader then
				color = { r = 0.75, g = 0.75, b = 0.75 };
			else
				color = ITEM_QUALITY_COLORS[CURRENT_DISPLAY[lineplusoffset].Quality];
			end
			self.normalText:SetTextColor(color.r, color.g, color.b);
			self.tag:SetTextColor(color.r, color.g, color.b);
			self.groupMates:SetTextColor(color.r, color.g, color.b);		 
		end
	end
end


--
-- Set Filter
--

function SetCollectorFrame_SetFilter(self, classIndex)
	SetFilterOptions(classIndex);
	if SetCollectorFrame:IsVisible() then
		SELECTED_COLLECTION = 0
		SELECTED_SET = 0
		SetCollectorFrameScrollBar_Update();
		SetCollectorFrame_UpdateFilterString()
	end
end

function SetCollectorFrame_UpdateFilterString()
	local name = ALL;
	local currFilter = GetFilterOptions();

	if currFilter == LE_LOOT_FILTER_CLASS then
		name = UnitClass("player");
	else -- Spec
		local _, specName, _, icon = GetSpecializationInfo(currFilter - LE_LOOT_FILTER_SPEC1 + 1);
		name = specName;
	end
	
	UIDropDownMenu_SetText(SetCollectorFrame.setFilter, name);
end

function SetCollectorFrame_InitFilter()
	local info = UIDropDownMenu_CreateInfo();
	local currFilter = GetFilterOptions();
	local className = UnitClass("player");
	
	--UIDropDownMenu_SetText(SetCollectorFrame.setFilter, className);
	SetCollectorFrame_UpdateFilterString()
	
	info.func = SetCollectorFrame_SetFilter;
	
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
	info.func = SetCollectorFrame_SetFilter;
	UIDropDownMenu_AddButton(info);
	
	--info.leftPadding = nil;
	--info.text = ITEM_BIND_ON_EQUIP;
	--info.checked = currFilter == LE_LOOT_FILTER_BOE;
	--info.arg1 = LE_LOOT_FILTER_BOE;
	--UIDropDownMenu_AddButton(info);
	
	--info.leftPadding = nil;
	--info.text = ALL;
	--info.checked = currFilter == LE_LOOT_FILTER_ALL;
	--info.arg1 = LE_LOOT_FILTER_ALL;
	--UIDropDownMenu_AddButton(info);
end

-- Create console command here
SLASH_SETCOLLECTOR1 = "/setcollector"
SlashCmdList["SETCOLLECTOR"] = function(msg)
	ShowUIPanel(SetCollectorFrame)
end