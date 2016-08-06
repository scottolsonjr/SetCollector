local DEBUG = false

SetCollector = LibStub("AceAddon-3.0"):NewAddon("SetCollector", "AceConsole-3.0", "AceEvent-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("SetCollector", true)

--
--  Startup Functions
--

function SetCollector:OnInitialize()
	SetCollector:SetupDB(DEBUG)
	SetCollector:SetupUI(DEBUG)
	if SetCollector:GetDebug() then SetCollector:Print("Initialized"); end
	SetCollector:RegisterEvent("PLAYER_LOGIN")
end

function SetCollector:OnEnable()
    if SetCollector:GetDebug() then SetCollector:Print("Enabled"); end
end

function SetCollector:OnDisable()
    if SetCollector:GetDebug() then SetCollector:Print("Disabled"); end
end

--
--  Local Functions
--

local function IsDebugging()
	DEBUG = SetCollector.db.global.debug
	return DEBUG
end

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
	SetCollector.db.global.debug = debug
end

function SetCollector:SortList(t, f, d)
	if f == "key" then return pairsByKeys(t, d)		-- Allow for exlicit request to sort by key
	-- Future sort alternatives here
	else return pairsByKeys(t, d)									-- Default to sort by key
	end
end

function SetCollector:UpdateCollections()
	--local collections = SetCollector.db.collections
	local collections = {
		[1] = {
			Title = "LEGENDARY",
			sets = { }
		},
		[2] = {
			Title = "RAID",
			sets = {
				["TR181SHZZ"] = {
					Title = "SH_TR_18"
				},
				["TR171SHZZ"] = {
					Title = "SH_TR_17"
				}
			}
		}
	}
	SetCollector:UpdateScrollFrame(collections, DEBUG)
end

function SetCollector:PLAYER_LOGIN()
		local _, class = UnitClass("player")
		SetCollector:InitializeFilter()
		SetCollector:InitializeModel()
		SetCollector:UpdateCollections()
end

--
-- Slash Commands
--

SetCollector:RegisterChatCommand("setcollector", "MySlashProcessorFunc")

function SetCollector:MySlashProcessorFunc(input)
	if input == "show" then
		SetCollector:ShowUI(IsDebugging())
	elseif input == "hide" then
		SetCollector:HideUI(IsDebugging())
	elseif input == "button" then
		SetCollector:ToggleMinimapButton()
	elseif input == "debug" then
		SetCollector:SetDebug(not IsDebugging())
		local message
		if IsDebugging() then message = "DEBUG_ON" else message = "DEBUG_OFF" end
		SetCollector:Print(L[message])
	elseif input == "resetdb" then
		SetCollector:ResetDB(IsDebugging())
	elseif input == "help" then
    SetCollector:Print(L["SLASH_HELP"])
	else
		SetCollector:ToggleUI(IsDebugging())
  end
end