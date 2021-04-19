local DEBUG = false

SetCollector = LibStub("AceAddon-3.0"):NewAddon("SetCollector", "AceConsole-3.0", "AceEvent-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("SetCollector", true)

local WOW_VERSION = select(4,GetBuildInfo())

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

--
--  Startup Functions
--

function SetCollector:OnInitialize()
	SetCollector:SetupDB(true)
	SetCollector:SetupUI(true)
	if SetCollector:GetDebug() then SetCollector:Print("Initialized"); end
	
    LibStub("AceConfig-3.0"):RegisterOptionsTable("SetCollector", SetCollector:GetOptions())
    self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("SetCollector", "Set Collector")
	
	SetCollector:RegisterEvent("PLAYER_LOGIN")
end

function SetCollector:OnEnable()
  if SetCollector:GetDebug() then SetCollector:Print("Enabled"); end
end

function SetCollector:OnDisable()
  if SetCollector:GetDebug() then SetCollector:Print("Disabled"); end
end

function SetCollector:GetAppearanceInfo(itemLink)
	if itemLink then
        local appearanceID, sourceID, itemID
        itemID = GetItemInfoInstant(itemLink)
        return appearanceID, sourceID, itemID
        --[[local itemID, _, _, slotName = GetItemInfoInstant(itemLink)
        local slot = InventorySlots[slotName]

        if not slot or not IsDressableItem(itemLink) then return end

        model:SetUnit('player')
        model:Undress()
        model:TryOn(itemLink, slot)
        local sourceID = model:GetSlotTransmogSources(slot) -- Removed in 9.1
        if sourceID then
            local appearanceID = select(2, C_TransmogCollection.GetAppearanceSourceInfo(sourceID))
            return appearanceID, sourceID, itemID
        end]]
    end
end

function SetCollector:IsDebugging()									-- Redundant?
	DEBUG = SetCollector:GetDebug()
	return DEBUG
end

--
--  Local Functions
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

--
--  Global Functions
--

function SetCollector:GetDebug()
	DEBUG = SetCollector.db.global.debug
	return DEBUG
end

function SetCollector:SetDebug(debug)
	if debug == nil then
		SetCollector.db.global.debug = not SetCollector.db.global.debug
	else
		SetCollector.db.global.debug = debug
	end
end

function SetCollector:GetOptionsShowSet()
	return SetCollector.db.global.tooltips.show_set
end

function SetCollector:SetOptionsShowSet()
	if SetCollector.db.global.tooltips.show_set then SetCollector.db.global.tooltips.show_set = false
	else SetCollector.db.global.tooltips.show_set = true
	end
end

function SetCollector:GetOptionsShowSetLocation()
	return SetCollector.db.global.tooltips.show_location
end

function SetCollector:SetOptionsShowSetLocation()
	if SetCollector.db.global.tooltips.show_location then SetCollector.db.global.tooltips.show_location = false
	else SetCollector.db.global.tooltips.show_location = true
	end
end

function SetCollector:SortList(t, f, d)
	if f == "key" then return pairsByKeys(t, d)		-- Allow for explicit request to sort by key
	-- Future sort alternatives here
	else return pairsByKeys(t, d)									-- Default to sort by key
	end
end

function SetCollector:UpdateCollections()
	local collections = SetCollector:GetCollectionsList()
	SetCollector:UpdateScrollFrame(collections, DEBUG)
end

function SetCollector:PLAYER_LOGIN()
  local DEBUG = SetCollector:GetDebug()
  if DEBUG then SetCollector:Print("Running PLAYER_LOGIN processes"); end
	SetCollector:InitializeFilter(DEBUG)
	SetCollector:InitializeModel(DEBUG)
end

--
-- Slash Commands
--

SetCollector:RegisterChatCommand("setcollector", "MySlashProcessorFunc")
SetCollector:RegisterChatCommand("sc", "MySlashProcessorFunc")

function SetCollector:OptionsSetDebug()
	if SetCollector.db.global.debug then SetCollector.db.global.debug = false
	else SetCollector.db.global.debug = true
	end
	local message
	if SetCollector:GetDebug() then message = "DEBUG_ON" else message = "DEBUG_OFF" end
	SetCollector:Print(L[message])
end


function SetCollector:ToggleExpansion(parameters)
	local expansions = SetCollector.db.global.expansions
	if parameters == "0" then
		expansions.v00 = not expansions.v00
	elseif parameters == "1" then
		expansions.v01 = not expansions.v01
	elseif parameters == "2" then
		expansions.v02 = not expansions.v02
	elseif parameters == "3" then
		expansions.v03 = not expansions.v03
	elseif parameters == "4" then
		expansions.v04 = not expansions.v04
	elseif parameters == "5" then
		expansions.v05 = not expansions.v05
	elseif parameters == "6" then
		expansions.v06 = not expansions.v06
	elseif parameters == "7" then
		expansions.v07 = not expansions.v07
	elseif parameters == "8" then
		expansions.v08 = not expansions.v08
	elseif parameters == "9" then
		expansions.v09 = not expansions.v09
	end
	SetCollector:Print(L["RELOAD"])
end

function SetCollector:PrintItem(itemID)
    local sLink = select(2,GetItemInfo(itemID))
    SetCollector:Print(sLink)
end

function SetCollector:ListAllSets()
    local sets = C_TransmogSets.GetAllSets();
    if (sets) then
        for i, set in ipairs(sets) do
            local setInfo = (set.setID and C_TransmogSets.GetSetInfo(set.setID)) or nil;
            if (set.baseSetID == nil) then
                SetCollector:Print(set.setID.." "..(setInfo.name or nil))
            else
                SetCollector:Print(set.setID.." "..(setInfo.name or nil).." ("..set.baseSetID..")")
            end
        end
    end
end

function SetCollector:ListBaseSets()
    local sets = C_TransmogSets.GetAllSets();
    if (sets) then
        for i, set in ipairs(sets) do
            if (set.baseSetID == nil) then
                local setInfo = (set.setID and C_TransmogSets.GetSetInfo(set.setID)) or nil;
                SetCollector:Print(set.setID.." "..(setInfo.name or nil))
            end
        end
    end
end

function SetCollector:ListSetSources(setID)
    local setInfo = (setID and C_TransmogSets.GetSetInfo(setID)) or nil;
    local sources = C_TransmogSets.GetSetSources(setID);
    SetCollector:Print(setID.." "..(setInfo.name or nil))
    local function position(slot)
        if slot == INVSLOT_HEAD then
            return 1
        elseif slot == INVSLOT_SHOULDER then
            return 2
        elseif slot == INVSLOT_BACK then
            return 3
        elseif slot == INVSLOT_CHEST then
            return 4
        elseif slot == INVSLOT_WRIST then
            return 5
        elseif slot == INVSLOT_HAND then
            return 6
        elseif slot == INVSLOT_WAIST then
            return 7
        elseif slot == INVSLOT_LEGS then
            return 8
        elseif slot == INVSLOT_FEET then
            return 9
        end
        return slot + 10
    end
    local printable = {}
    for sourceID in pairs(sources) do
        local sourceInfo = C_TransmogCollection.GetSourceInfo(sourceID);
        if (sourceInfo) then
            local slot = C_Transmog.GetSlotForInventoryType(sourceInfo.invType);
            if (slot) then
                printable[position(slot)] = sourceInfo.visualID..","..sourceID.." ("..slot..")"
            else
                printable[position(slot)] = sourceInfo.visualID..","..sourceID
            end
        else
            SetCollector:Print("ID: "..sourceID.." (No sourceinfo)")
        end
    end
    for i=1, #printable do
        SetCollector:Print(printable[i])
    end
end

function SetCollector:ExportSetData()
    local tree = {};
    local sets = C_TransmogSets.GetAllSets();
    if (sets) then
        
        -- build base sets
        for i, set in ipairs(sets) do
            if (set.baseSetID == nil) then
                local setInfo = (set.setID and C_TransmogSets.GetSetInfo(set.setID)) or nil;
                if (setInfo ~= nil) then
                    local setID = set.setID or 0;
                    tree[setID] = {} 
                    tree[setID][0] = {
                        toc = (setInfo.patchID or WOW_VERSION), 
                        classMask = (setInfo.classMask or 0), 
                        desc = (setInfo.description or "(blank)"), 
                        label = (setInfo.label or "(blank)"),
                        name = (setInfo.name or "(blank)"),
                        faction = (setInfo.requiredFaction or "Both"),
                        expansionID = (setInfo.expansionID or 0)
                    };
                end
            end
        end

        -- populate all sets
        sets = C_TransmogSets.GetAllSets();
        for i, set in ipairs(sets) do
            local setInfo = (set.setID and C_TransmogSets.GetSetInfo(set.setID)) or nil;
            if (setInfo == nil) then
                -- SetCollector:Print("Skipping set "..set.setID)
            else
                local setID = setInfo.setID or 0;
                local baseSetID = set.baseSetID or 0;
                local setData = { 
                    id = setID,
                    toc = (setInfo.patchID or WOW_VERSION), 
                    classMask = (setInfo.classMask or 0), 
                    desc = (setInfo.description or "(blank)"), 
                    label = (setInfo.label or "(blank)"),
                    name = (setInfo.name or "(blank)"),
                    faction = (setInfo.requiredFaction or "Both"),
                    expansionID = (setInfo.expansionID or 0),
                    items = {}
                };

                local sources = C_TransmogSets.GetSetSources(setID);
                for sourceID in pairs(sources) do
                    local sourceInfo = C_TransmogCollection.GetSourceInfo(sourceID);
                    if (sourceInfo) then
                        local slot = C_Transmog.GetSlotForInventoryType(sourceInfo.invType);
                        if (slot) then
                            local a2 = (sourceInfo.visualID or nil);
                            local s2 = (sourceInfo.sourceID or nil);
                            local i2 = (sourceInfo.itemID or nil);                    
                            local mod2 = (sourceInfo.itemModID or nil);                    
                            setData.items[sourceInfo.invType] = {a = a2, s = s2, i = i2, mod = mod2 };
                        end
                    end
                end

                if (tree[baseSetID] == nil) then
                    tree[baseSetID] = {setID = setData};
                else
                    tree[baseSetID][setID] = setData;
                end;
            end
        end
    end

    SetCollector.db.global.export = tree;
    SetCollector:Print("Done exporting");
end

function SetCollector:MySlashProcessorFunc(input)
	local command, parameters = input:match("^(%S*)%s*(.-)$")
	if command == "" then
        SetCollector:ToggleUI()

	elseif command == "show" then
		SetCollector:ShowUI()
		
	elseif command == "hide" then
		SetCollector:HideUI()
		
	elseif command == "docked" then
		SetCollector:SetUIDockedAndUpdate()
		
	elseif command == "button" then
		SetCollector:ToggleMinimapButton()

	elseif command == "version" then
		SetCollector:ToggleExpansion(parameters)
		
	elseif command == "debug" then
		SetCollector:OptionsSetDebug()
		
	elseif command == "resetdb" then
        SetCollector:ResetDB()
        
    elseif command == "item" then
        if (parameters) then
            SetCollector:PrintItem(parameters)
        end
        
    elseif command == "export" then
        SetCollector:ExportSetData()
        
    elseif command == "set" then
        if (parameters == nil or parameters == "") then
            SetCollector:ListBaseSets()
        elseif (parameters == nil or parameters == "all") then
            SetCollector:ListAllSets()
        else
            SetCollector:ListSetSources(parameters)
        end
		
	else
    	SetCollector:Print(L["SLASH_HELP"])
		
  end
end