local DEBUG = false

SetCollector = LibStub("AceAddon-3.0"):NewAddon("SetCollector", "AceConsole-3.0", "AceEvent-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("SetCollector", true)


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

function SetCollector:SortList(t, f, d)
	if f == "key" then return pairsByKeys(t, d)		-- Allow for exlicit request to sort by key
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

function SetCollector:OptionsSetDebug()
	if SetCollector.db.global.debug then SetCollector.db.global.debug = false
	else SetCollector.db.global.debug = true
	end
	local message
	if SetCollector:GetDebug() then message = "DEBUG_ON" else message = "DEBUG_OFF" end
	SetCollector:Print(L[message])
end

function SetCollector:MySlashProcessorFunc(input)
	if input == "show" then
		SetCollector:ShowUI()
		
	elseif input == "hide" then
		SetCollector:HideUI()
		
	elseif input == "button" then
		SetCollector:ToggleMinimapButton()
		
	elseif input == "debug" then
		SetCollector:OptionsSetDebug()
		
	elseif input == "resetdb" then
		SetCollector:ResetDB()
		
	elseif input == "help" then
    SetCollector:Print(L["SLASH_HELP"])
    
	else
		SetCollector:ToggleUI()
		
  end
end