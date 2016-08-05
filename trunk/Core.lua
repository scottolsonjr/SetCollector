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

function SetCollector:PLAYER_LOGIN()
		local _, class = UnitClass("player")
		SetCollector:InitializeFilter()
		SetCollector:InitializeModel()
end

--
--  Local Functions
--

local function IsDebugging()
	DEBUG = SetCollector.db.global.debug
	return DEBUG
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

function SetCollector:ListFrameObjects(frame)
	for k,v in pairs(frame) do SetCollector:Print(k,v) end
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
		SetCollector:SetDebug(not IsDebbuging())
		local message
		if IsDebugging() then message = "DEBUG_ON" else message = "DEBUG_OFF" end
		SetCollector:Print(L[message])
	elseif input == "resetdb" then
		SetCollector:ResetDB(IsDebugging())
	elseif input == "listframe" then
		SetCollector:ListFrameObjects(SetCollector:GetFrameObject())
	elseif input == "help" then
    SetCollector:Print(L["SLASH_HELP"])
	else
		SetCollector:ToggleUI(IsDebugging())
  end
end