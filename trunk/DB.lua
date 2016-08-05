--
-- Defaults
--

local defaults = {
	char = {
		minimap = {
			hide = false
		}
	},
  global = {
    debug = false,
    collections = {}
  }
}

--
--  Local Variables
--

local L = LibStub("AceLocale-3.0"):GetLocale("SetCollector", true)
local WOW_VERSION = select(4,GetBuildInfo())

local ANY					=	{ Code = "Z", Description = "Any" }

local DEATHKNIGHT = { Code = "DK", Description = "DEATHKNIGHT" }
local DRUID 			= { Code = "DR", Description = "DRUID" }
local HUNTER 			= { Code = "HU", Description = "HUNTER" }
local MAGE 				= { Code = "MA", Description = "MAGE" }
local MONK 				= { Code = "MO", Description = "MONK" }
local PALADIN 		= { Code = "PA", Description = "PALADIN" }
local PRIEST 			= { Code = "PR", Description = "PRIEST" }
local ROGUE 			= { Code = "RO", Description = "ROGUE" }
local SHAMAN 			= { Code = "SH", Description = "SHAMAN" }
local WARLOCK 		= { Code = "WK", Description = "WARLOCK" }
local WARRIOR 		= { Code = "WR", Description = "WARRIOR" }

local ALLIANCE 		= { Code = "A", Description = "Alliance" }
local HORDE 			= { Code = "H", Description = "Horde" }

local TANK 				= { Code = "T", Description = "TANK" }
local HEALER 			= { Code = "H", Description = "HEALER" }
local CASTER 			= { Code = "C", Description = "CASTER" }
local RANGED 			= { Code = "R", Description = "RANGED" }
local MELEE 			= { Code = "M", Description = "MELEE" }

-- Collection Types
local LEGENDARY 	= { ID = 1, Code = "ZZ", Description = "LEGENDARY" }
local RAID 				= { ID = 2, Code = "TR", Description = "RAID" }
local DUNGEON 		= { ID = 3, Code = "DG", Description = "DUNGEON" }
local CHALLENGE 	= { ID = 4, Code = "CD", Description = "CHALLENGE" }
local PVP 				= { ID = 5, Code = "PV", Description = "PVP" }
local GARRISON 		= { ID = 6, Code = "GA", Description = "GARRISON" }
local HOLIDAY			= { ID = 7, Code = "HO", Description = "HOLIDAY" }
local OTHER				= { ID = 8, Code = "OT", Description = "OTHER" }

--
--  Helpers
--

local function GetCount(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

local function CreateCollections()
	local collections = {
		[LEGENDARY.ID] 	= { Title = LEGENDARY.Description, Sets = { } },
		[RAID.ID] 			= { Title = RAID.Description, Sets = { } },
		[DUNGEON.ID] 		= { Title = DUNGEON.Description, Sets = { } },
		[CHALLENGE.ID] 	= { Title = CHALLENGE.Description, Sets = { } },
		[PVP.ID] 				= { Title = PVP.Description, Sets = { } },
		[GARRISON.ID] 	= { Title = GARRISON.Description, Sets = { } },
		[HOLIDAY.ID] 		= { Title = HOLIDAY.Description, Sets = { } },
		[OTHER.ID] 			= { Title = OTHER.Description, Sets = { } },
		Appearances = { }
	}
	return collections
end

local function GetTooltipIdentifier(collection, id, title)
	local identifier
	if collection == RAID then
		identifier = "T"..id
	elseif collection == PVP then
		identifier = "PVP"
	end
	return identifier
end

local function AddSet(minVersion, maxVersion, collection, id, title, class, role, faction, ...)
	if WOW_VERSION >= minVersion then
		if maxVersion == nil or WOW_VERSION <= maxVersion then
			local tempSet = { }
			tempSet = {
				Title = title,
				TooltipID = GetTooltipIdentifier(collection, id, title),
				Class = class.Description,
				Role = role.Description,
				Faction = faction.Description,
				Name = name,
				Variants = { }
			}
			local ID = collection.Code..string.format("%03d", id)..class.Code..role.Code..faction.Code
			SetCollector.db.global.collections[collection.ID].Sets[ID] = tempSet
			return ID
		end
	end
end

local function AddVariant(minVersion, maxVersion, collection, set, title, ...)
	if WOW_VERSION >= minVersion then
		if maxVersion == nil or WOW_VERSION <= maxVersion then
			local tempItems = { }
			local n = select("#",...)
			for i = 1,n do
				local v = select(i,...)
				tinsert(tempItems,v)
				SetCollector.db.global.collections.Appearances[v] = { collection = collection.ID, set = set, variant = #SetCollector.db.global.collections[collection.ID].Sets[set].Variants + 1 }
			end
			local tempVariant = {
				Title = title,
				Items = tempItems,
				Count = #tempItems
			}
			tinsert(SetCollector.db.global.collections[collection.ID].Sets[set].Variants, tempVariant)	
		end
	end	
end


--
--
--

local function GetGeneralAppearances()
	local set = ""
	
	-- RAID
	set = AddSet(70000,nil,RAID,180,"TR_MAIL_18",ANY,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",25949,25950,25947,25948,25951,25946)		-- Need belt
	set = AddSet(70000,nil,RAID,170,"TR_MAIL_17",ANY,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",22684,22686,22682,22683,22685,22681)		-- Need belt

	-- DUNGEON
	
	
end

local function GetShamanAppearances()
	local set = ""
	
	-- LEGENDARY
	
	-- RAID
	
	set = AddSet(70000,nil,RAID,191,"SH_TR_19",SHAMAN,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",32095,32096,32086,32099,32094,32097)		-- Need belt and feet for each variant
				AddVariant(70000,nil,RAID,set,"NORMAL",30937,30938,31364,30942,30936,30939)
				AddVariant(70000,nil,RAID,set,"HEROIC",30928,30929,31363,30932,30927,30930)
				AddVariant(70000,nil,RAID,set,"MYTHIC",31039,31041,31348,31043,31038,31040)
	set = AddSet(70000,nil,RAID,181,"SH_TR_18",SHAMAN,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"NORMAL",26019,26021,26023,26018,26016,26020,26472)
				AddVariant(70000,nil,RAID,set,"HEROIC",26036,26038,26040,26035,26033,26037,26474)
				AddVariant(70000,nil,RAID,set,"MYTHIC",26000,26002,26004,25999,25996,26001,25997)
	set = AddSet(70000,nil,RAID,171,"SH_TR_17",SHAMAN,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"NORMAL",23360,23361,23363,23368,23365)		-- Need Belt and Feet
				AddVariant(70000,nil,RAID,set,"HEROIC",23370,23371,23373,23378,23375)
				AddVariant(70000,nil,RAID,set,"MYTHIC",23678,23679,23688,23677,23689)
				
	-- DUNGEON
	
	
end

--
-- Setup Database
--

function SetCollector:AddAppearances(debug)
	if debug then	SetCollector:Print("Adding Appearances to database") end
	SetCollector.db.global.collections = CreateCollections()
	if debug then SetCollector:Print("Added "..#SetCollector.db.global.collections.." collections.") end
	GetGeneralAppearances()
	--
	GetShamanAppearances()
	--
	if debug then SetCollector:Print("Finished adding appearances to database.") end
end

function SetCollector:SetupDB(debug)
	SetCollector.db = LibStub("AceDB-3.0"):New("SetCollectorDB", defaults, true)
	SetCollector:AddAppearances(debug)
end

function SetCollector:ResetDB(debug)
	SetCollector.db:ResetDB("default")
	SetCollector:AddAppearances(debug)
	if debug then 
		SetCollector:Print(L["DB_RESET"])
		SetCollector:SetDebug(debug)
	end
end