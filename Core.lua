local DEBUG = false

SetCollector = LibStub("AceAddon-3.0"):NewAddon("SetCollector", "AceConsole-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("SetCollector", true)

--
--  Startup Functions
--

function SetCollector:OnInitialize()
	SetCollector:SetupDB(DEBUG)
	if SetCollector:GetDebug() then SetCollector:Print("Initialized"); end
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



--
-- Slash Commands
--

SetCollector:RegisterChatCommand("setcollector", "MySlashProcessorFunc")

function SetCollector:MySlashProcessorFunc(input)
	if input == "debug" then
		SetCollector:SetDebug(not DEBUG)
		local message
		if SetCollector:GetDebug() then message = "DEBUG_ON" else message = "DEBUG_OFF" end
		SetCollector:Print(L[message])
	elseif input == "resetdb" then
		SetCollector:ResetDB(DEBUG)
	else
    SetCollector:Print(L["SLASH_HELP"])
  end
end