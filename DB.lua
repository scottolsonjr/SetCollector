--
-- Defaults
--

local defaults = {
	char = {
		minimap = {
			hide = false
		},
		filters = {
			specialization = nil,
			favorites = false
		},
		sets = {}
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

local ALL					=	{ Code = "A", Description = "All" }
local ANY					=	{ Code = "Z", Description = "Any" }

local CLOTH				= { Code = "C", Description = "CLOTH" }
local LEATHER			= { Code = "L", Description = "LEATHER" }
local MAIL				= { Code = "M", Description = "MAIL" }
local PLATE				= { Code = "P", Description = "PLATE" }

local DEATHKNIGHT = { Code = "DK", Description = "DEATHKNIGHT" }
local DEMONHUNTER = { Code = "DH", Description = "DEMONHUNTER" }
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

local OBTAIN			= true
local NOOBTAIN 		= false

local TRANSMOG 		= true
local NOTRANSMOG 	= false

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

local function AddSet(minVersion, maxVersion, collection, id, title, armorType, class, role, faction, ...)
	if WOW_VERSION >= minVersion then
		if maxVersion == nil or WOW_VERSION <= maxVersion then
			local tempSet = { }
			tempSet = {
				Title = title,
				TooltipID = GetTooltipIdentifier(collection, id, title),
				ArmorType = armorType,
				Class = class.Description,
				Role = role.Description,
				Faction = faction.Description,
				Name = name,
				Variants = { }
			}
			local ID = collection.Code..string.format("%03d", id)..armorType.Code..class.Code..role.Code..faction.Code
			SetCollector.db.global.collections[collection.ID].Sets[ID] = tempSet
			return ID
		end
	end
end

local function AddVariant(minVersion, maxVersion, collection, set, title, obtainable, transmog, ...)
	if WOW_VERSION >= minVersion then
		if maxVersion == nil or WOW_VERSION <= maxVersion then
			local a, i = 0, 0
			local tempAppearances = { }
			local n = select("#",...)
			for i = 1,n do
				local v = select(i,...)
				if v then
					a = v.a
					i = v.i
				end
				local t = { ID = a, sourceID = i }
				tinsert(tempAppearances,t)
				SetCollector.db.global.collections.Appearances[a] = { collection = collection.ID, set = set, variant = #SetCollector.db.global.collections[collection.ID].Sets[set].Variants + 1 }
				--tinsert(tempAppearances,v)
				--SetCollector.db.global.collections.Appearances[v] = { collection = collection.ID, set = set, variant = #SetCollector.db.global.collections[collection.ID].Sets[set].Variants + 1 }
			end
			local tempVariant = {
				Title = title,
				Obtainable = obtainable,
				Transmog = transmog,
				Appearances = tempAppearances,
				Count = #tempAppearances
			}
			tinsert(SetCollector.db.global.collections[collection.ID].Sets[set].Variants, tempVariant)	
		end
	end	
end

local function A(a, i, ...)
	local t = { 
		a = a or 0,
		i = i or 0
	}
	return t
end


--
--
--

local function GetGeneralAppearances()
	local col = ""
	local set = ""
	
	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,180,"TR_CLOTH_18",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(25845,73196),A(25847,73166),A(25849,73182),A(25844,73228),A(25846,73200),A(25842,72970))	-- Need belt
	set = AddSet(70000,nil,col,180,"TR_LEATHER_18",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(25983,73204),A(25985,73170),A(25981,73184),A(25982,73232),A(25984,73208),A(25979,72978))		-- Need belt
	set = AddSet(70000,nil,col,180,"TR_MAIL_18",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(25949,73209),A(25950,73171),A(25947,73185),A(25948,73233),A(25951,73213),A(25946,73079))		-- Need belt
	set = AddSet(70000,nil,col,180,"TR_PLATE_18",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(25933),A(25935),A(25931),A(25932),A(25934),A(25930))		-- Need belt
				
	set = AddSet(70000,nil,col,170,"TR_CLOTH_17",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(22599),A(22595),A(22597),A(22598),A(22600),A(22594))		-- Need belt
	set = AddSet(70000,nil,col,170,"TR_LEATHER_17",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(23053),A(23055),A(23051),A(23052),A(23054),A(23050))		-- Need belt
	set = AddSet(70000,nil,col,170,"TR_MAIL_17",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(22684),A(22686),A(22682),A(22683),A(22685),A(22681))		-- Need belt
	set = AddSet(70000,nil,col,170,"TR_PLATE_17",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(22640),A(22642),A(22638),A(22639),A(22641),A(22637))		-- Need belt

	-- DUNGEON
	
	-- GARRISON
	col = GARRISON
	set = AddSet(60000,nil,col,602,"GA_BWM_SET_100",CLOTH,ANY,ANY,ANY)
				AddVariant(60000,nil,col,set,"CLOTH",OBTAIN,TRANSMOG,A(23099),A(23096),A(23097),A(23098),A(23807),A(23100),A(23806))
	set = AddSet(60000,nil,col,602,"GA_BWM_SET_100",LEATHER,ANY,ANY,ANY)
				AddVariant(60000,nil,col,set,"LEATHER",OBTAIN,TRANSMOG,A(22857),A(22859),A(22855),A(22856),A(22853),A(22858),A(22854))
	set = AddSet(60000,nil,col,602,"GA_BWM_SET_100",MAIL,ANY,ANY,ANY)
				AddVariant(60000,nil,col,set,"MAIL",OBTAIN,TRANSMOG,A(22945),A(22944),A(22947),A(22946),A(22949),A(23810),A(22948))
	set = AddSet(60000,nil,col,602,"GA_BWM_SET_100",PLATE,ANY,ANY,ANY)
				AddVariant(60000,nil,col,set,"PLATE",OBTAIN,TRANSMOG,A(23274),A(23278),A(23265),A(23271),A(23259),A(23277),A(23262))
	
	set = AddSet(60000,nil,col,601,"GA_ALLIANCE_SET",ANY,ANY,ANY,ALLIANCE)
				AddVariant(60000,nil,col,set,"GA_ALLIANCE_SET",OBTAIN,TRANSMOG,A(24474),A(24476),A(24472),A(24473),A(24470),A(24475),A(24471))
	
	set = AddSet(60000,nil,col,601,"GA_HORDE_SET",ANY,ANY,ANY,HORDE)
				AddVariant(60000,nil,col,set,"GA_HORDE_SET",OBTAIN,TRANSMOG,A(24054),A(24051),A(24052),A(24817),A(24053),A(24050),A(24854))
				
	--  HOLIDAY
	col = HOLIDAY
	set = AddSet(50400,nil,col,1103271,"HO_FESTIVE_DRESS",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"GREEN",OBTAIN,NOTRANSMOG,A(5657))
				AddVariant(50400,nil,col,set,"PINK",OBTAIN,NOTRANSMOG,A(5772))
				AddVariant(50400,nil,col,set,"PURPLE",OBTAIN,NOTRANSMOG,A(5773))
				AddVariant(50400,nil,col,set,"RED",OBTAIN,NOTRANSMOG,A(5656))
				
	set = AddSet(50400,nil,col,1103272,"HO_FESTIVE_SUIT",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"BLACK",OBTAIN,NOTRANSMOG,A(5774))
				AddVariant(50400,nil,col,set,"BLUE",OBTAIN,NOTRANSMOG,A(5777))
				AddVariant(50400,nil,col,set,"TEAL",OBTAIN,NOTRANSMOG,A(5776))
				AddVariant(50400,nil,col,set,"RED",OBTAIN,NOTRANSMOG,A(5775))
	
	--  OTHER
	col = OTHER
	set = AddSet(70000,nil,col,100,"OTH_CLOTH_100",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_CLOTH_100",OBTAIN,TRANSMOG,A(31376),A(31374),A(31372),A(31375),A(31380,79532),A(31377,79536),A(31373))
	set = AddSet(70000,nil,col,100,"OTH_LEATHER_100",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_LEATHER_100",OBTAIN,TRANSMOG,A(31395,79518),A(31391,79517))
	set = AddSet(70000,nil,col,100,"OTH_MAIL_100",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_MAIL_100",OBTAIN,TRANSMOG,A(31385,79527),A(31387,79529),A(31383,79530),A(31388,79524),A(31381,79523),A(31386),A(31382,79526))
	set = AddSet(70000,nil,col,100,"OTH_PLATE_100",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_PLATE_100",OBTAIN,TRANSMOG,A(31310,79511),A(31313,79515))
	
end

local function GetDeathKnightAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"DK_TR_19",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(32139),A(32141),A(31975),A(32137),A(32138),A(32140))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(29805),A(29807),A(29974),A(29800),A(29804),A(29806))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(29813),A(29815),A(29961),A(29811),A(29812),A(29814))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(29829),A(29831),A(29939),A(29827),A(29828),A(29830))
	
	-- DUNGEON
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"DK_OTH_19",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"DK_OTH_19",OBTAIN,TRANSMOG,A(32543),A(32545),A(32541),A(32546),A(32542),A(32539),A(32544),A(32540))
	
end

local function GetDemonHunterAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"DH_TR_19",LEATHER,DEMONHUNTER,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(32020),A(32022),A(32100),A(32018),A(32019),A(32021))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(32004),A(32006),A(32208),A(32002),A(32003),A(32005))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(32012),A(32014),A(32220),A(32010),A(32011),A(32013))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(31913),A(31915),A(32166),A(31911),A(31912),A(31914))
	
	-- DUNGEON
	
end

local function GetDruidAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"DR_TR_19",LEATHER,DRUID,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(32072),A(32074),A(32221),A(32076),A(32071),A(32073))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(30740),A(30742),A(31035),A(30744),A(30739),A(30741))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(30731),A(30733),A(31024),A(30735),A(30730),A(30732))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(30696),A(30698),A(30819),A(30700),A(30695),A(30697))
	
	-- DUNGEON
	
end

local function GetHunterAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"HU_TR_19",MAIL,HUNTER,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(31867),A(31869),A(32112),A(31865),A(31866),A(31868))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(29758),A(29760),A(30050),A(29755),A(29757),A(29759))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(29766),A(29768),A(30075),A(29764),A(29765),A(29767))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(29904),A(29905),A(30129),A(29902),A(29903),A(29906))
	
	-- DUNGEON
	
end

local function GetMageAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"MA_TR_19",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(31938),A(31940),A(32048),A(31942),A(31937),A(31939))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(30785),A(30787),A(31175),A(30789),A(30784),A(30786))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(30776),A(30778),A(31171),A(30780),A(30775),A(30777))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(31083),A(31085),A(31115),A(31087),A(31082),A(31084))
	
	-- DUNGEON
	
end

local function GetMonkAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"MO_TR_19",LEATHER,MONK,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(30634),A(30645),A(30535),A(30633),A(30643),A(30644))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(32043),A(32046),A(31917),A(32042),A(32044),A(32045))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(30617),A(30619),A(30510),A(30615),A(30616),A(30618))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(30670),A(30671),A(30491),A(30669),A(30672),A(30673))
	
	-- DUNGEON
	
end

local function GetPaladinAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"PA_TR_19",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(32147),A(32149),A(32105),A(32151),A(32146),A(32148))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(29644),A(29647),A(29707),A(29646),A(29643),A(29645))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(29653),A(29655),A(29717),A(29657),A(29652),A(29654))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(29452),A(29454),A(29676),A(29456),A(29451),A(29453))
	
	-- DUNGEON
	
end

local function GetPriestAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"PR_TR_19",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(31947),A(31949),A(32060),A(31950),A(31946),A(31948))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(30262),A(30264),A(30177),A(30266),A(30261),A(30263))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(30271),A(30273),A(30189),A(30275),A(30270),A(30272))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(30280),A(30282),A(30231),A(30283),A(30279),A(30281))
	
	-- DUNGEON
	
end

local function GetRogueAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"RO_TR_19",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(32083),A(32084),A(32298),A(32079),A(32080),A(32081))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(29870),A(29872),A(32292),A(29868),A(29869),A(29871))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(29197),A(29218),A(32282),A(29195),A(29196),A(29217))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(28986),A(28988),A(32317),A(28984),A(28985),A(28987))
	
	-- DUNGEON
	
end

local function GetShamanAppearances()
	local set = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = AddSet(50400,nil,col,90,"LG_CASTER_INT_90",ANY,SHAMAN,CASTER,ANY)
				AddVariant(50400,nil,col,set,"LG_CASTER_INT_90",OBTAIN,TRANSMOG,A(20801))
	
	set = AddSet(50400,nil,col,90,"LG_MELEE_AGI_90",ANY,SHAMAN,MELEE,ANY)
				AddVariant(50400,nil,col,set,"LG_MELEE_AGI_90",OBTAIN,TRANSMOG,A(20805))
	
	set = AddSet(50400,nil,col,90,"LG_HEALER_INT_90",ANY,SHAMAN,HEALER,ANY)
				AddVariant(50400,nil,col,set,"LG_HEALER_INT_90",OBTAIN,TRANSMOG,A(20825))
	
	set = AddSet(50400,nil,col,80,"LG_HEALER_80",ANY,SHAMAN,ANY,ANY)
				AddVariant(50400,nil,col,set,"LG_HEALER_80",OBTAIN,TRANSMOG,A(11613))
	
	set = AddSet(70000,nil,col,60,"LG_60",ANY,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"LG_60",OBTAIN,TRANSMOG,A(5131))
	
	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,190,"SH_TR_19",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(32095,81070),A(32096,81073),A(32086,81539),A(32099,81072),A(32094,81069),A(32097,81071))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(30937,79871),A(30938,79886),A(31364,81536),A(30942,79880),A(30936,79865),A(30939,79877))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(30928,79872),A(30929,79887),A(31363,81537),A(30932,79881),A(30927,79866),A(30930,79878))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(31039,79873),A(31041,79888),A(31348,81538),A(31043,79882),A(31038,79867),A(31040,79879))
	set = AddSet(70000,nil,col,181,"SH_TR_18",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(26019),A(26021),A(26023),A(26018),A(26016),A(26020),A(26472))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(26036),A(26038),A(26040),A(26035),A(26033),A(26037),A(26474))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(26000),A(26002),A(26004),A(25999),A(25996),A(26001),A(25997))
	set = AddSet(70000,nil,col,171,"SH_TR_17",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(23360),A(23361),A(23363),A(23368),A(23365))		-- Need Belt and Feet
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(23370),A(23371),A(23373),A(23378),A(23375))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(23678),A(23679),A(23688),A(23677),A(23689))
	set = AddSet(70000,nil,col,160,"SH_TR_16",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(20893),A(20887),A(20897),A(20896),A(20894))		-- Need Belt and Feet
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(20943),A(20945),A(20949),A(20942),A(20944))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(20943),A(20945),A(20949),A(20942),A(20944))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(21010),A(21012),A(21014),A(21013),A(21011))
				
	-- DUNGEON
	col = DUNGEON
	set = AddSet(70000,nil,col,30,"SH_DG_03",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_DG_03",OBTAIN,TRANSMOG,A(7163),A(6962),A(7104),A(6876),A(7020))
	
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"SH_OTH_19",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_OTH_19",OBTAIN,TRANSMOG,A(32499),A(32501),A(32497),A(32502),A(32498),A(32495),A(32500),A(32496))
	
end

local function GetWarlockAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"WK_TR_19",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",A(31884),A(31886),A(31871),A(31888),A(31883),A(31885))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",A(29171),A(29173),A(29040),A(29175),A(29170),A(29172))
				AddVariant(70000,nil,col,set,"HEROIC",A(29161),A(29163),A(29028),A(29165),A(29160),A(29162))
				AddVariant(70000,nil,col,set,"MYTHIC",A(29083),A(29085),A(29049),A(29087),A(29082),A(29084))
	set = AddSet(70000,nil,col,181,"WK_TR_18",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(25845),A(25847),A(25849),A(25844),A(25846),A(25842))
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(26169),A(26171),A(26173),A(26168),A(26165),A(26170))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(26160),A(26162),A(26164),A(26159),A(26156),A(26161))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(26214),A(26216),A(26218),A(26213),A(26210),A(26215))
	set = AddSet(70000,nil,col,171,"WK_TR_17",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(22599),A(22595),A(22597),A(22598),A(22600),A(22594))
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(23850),A(23853),A(23852),A(23849),A(23851))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(23841),A(23844),A(23843),A(23840),A(23842))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(23866),A(23869),A(23868),A(23865),A(23867))
	
	-- DUNGEON
	
end

local function GetWarriorAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"WR_TR_19",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(32157),A(32160),A(32127),A(32156),A(32158),A(32159))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(31444),A(31447),A(32242),A(31443),A(31445),A(31446))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(31410),A(31413),A(31545),A(31409),A(31411),A(31412))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(31449),A(31455),A(32229),A(31452),A(31453),A(31454))
				
	--[[set = AddSet(60200,nil,col,18,"WR_TR_18",WARRIOR,ANY,ANY)
				AddVariant(60200,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,128134,128123,128127,128139,128135,128032)
				AddVariant(60200,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,124334,124346,124319,124329,124349,124340,124320)	-- No Bonus
				AddVariant(60200,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,T18(124334,566),T18(124346,566),T18(124319,566),T18(124329,566),T18(124349,566),T18(124340,566),T18(124320,566))
				AddVariant(60200,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,T18(124334,567),T18(124346,567),T18(124319,567),T18(124329,567),T18(124349,567),T18(124340,567),T18(124320,567))
	
	set = AddSet(60000,nil,col,17,"WR_TR_17",WARRIOR,ANY,ANY)
				AddVariant(60000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,120396,120395,120393,120392,120391,120394)
				AddVariant(60000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,115584,115581,115582,115583,115580)
				AddVariant(60000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,T17(115584,566),T17(115581,566),T17(115582,566),T17(115583,566),T17(115580,566))
				AddVariant(60000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,T17(115584,567),T17(115581,567),T17(115582,567),T17(115583,567),T17(115580,567))]]--
	
	-- DUNGEON
	
end


--
--  Global Functions
--

function SetCollector:GetCollectionsList()
	local db = SetCollector.db.global.collections
	local collections = {}
	
	for i=1, #db do
		collections[i] = {
			Title = db[i].Title,
			sets = {}
		}
		if db[i].Sets then
			local sortedList = SetCollector:SortList(db[i].Sets, "key", "DESC")
			for j,value in sortedList do
				collections[i].sets[j] = {
					Title = db[i].Sets[j].Title
				}
			end
		end
	end
	
	return collections
end

function SetCollector:GetAppearanceSources(appearanceID)
	-- Taken from WardrobeCollectionFrame_GetSortedAppearanceSources(appearanceID)
	local comparison = function(source1, source2)
		if ( source1.isCollected ~= source2.isCollected ) then
			return source1.isCollected;
		end

		if ( source1.quality and source2.quality ) then
			if ( source1.quality ~= source2.quality ) then
				return source1.quality > source2.quality;
			end
		else
			return source1.quality;
		end

		return source1.sourceID > source2.sourceID;
	end

	if appearanceID then
		local sources = C_TransmogCollection.GetAppearanceSources(appearanceID);
		if sources then table.sort(sources, comparison) end
		return sources;
	end
end

function SetCollector:GetCollectedCount(collection, set, variant)
	local sourcesCount, collectedCount = 0, 0
	
	local appearances = SetCollector.db.global.collections[collection].Sets[set].Variants[variant].Appearances
	for i=1, #appearances do
		local anyCollected, sources = false, C_TransmogCollection.GetAppearanceSources(appearances[i].ID)
		if sources then
			sourcesCount = sourcesCount + #sources
			for j=1, #sources do
				local _, _, _, _, isCollected, link = C_TransmogCollection.GetAppearanceSourceInfo(sources[j].sourceID)
				if not anyCollected and isCollected then
					anyCollected = true
				end
			end
		end
		if anyCollected then collectedCount = collectedCount + 1 end
	end
	if sourcesCount == 0 and collectedCount == 0 then collectedCount = "*" end
	
	return collectedCount
end

function SetCollector:IsAppearanceCollected(appearanceID)
	local anyCollected = false
	if appearanceID then
		local sources = C_TransmogCollection.GetAppearanceSources(appearanceID)
		if sources then
			for j=1, #sources do
				local isCollected = select(5, C_TransmogCollection.GetAppearanceSourceInfo(sources[j].sourceID))
				if not anyCollected and isCollected then
					anyCollected = true
				end
			end
		end
	end
	return anyCollected
end

function SetCollector:GetSetTooltip(self)
	local db = SetCollector.db.global.collections
	local collection = db[self.Collection].Title
	local set = L[db[self.Collection].Sets[self.Set].Title] or L["MISSING_LOCALIZATION"]
	
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT", -16, 16)
	GameTooltip:SetText(set, 1, 1, 1)
	
	for i=1, #db[self.Collection].Sets[self.Set].Variants do
		local collected = SetCollector:GetCollectedCount(self.Collection, self.Set, i)
		local line = ""
		if db[self.Collection].Sets[self.Set].Variants[i].Count and L[db[self.Collection].Sets[self.Set].Variants[i].Title] then
			line = "- "..collected.."/"..db[self.Collection].Sets[self.Set].Variants[i].Count.." "..L[db[self.Collection].Sets[self.Set].Variants[i].Title]
		elseif db[self.Collection].Sets[self.Set].Variants[i].Count and not L[db[self.Collection].Sets[self.Set].Variants[i].Title] then
			line = "- "..collected.."/"..db[self.Collection].Sets[self.Set].Variants[i].Count.." "..L["MISSING_LOCALIZATION"]
		elseif not db[self.Collection].Sets[self.Set].Variants[i].Count and L[db[self.Collection].Sets[self.Set].Variants[i].Title] then
			line = "- "..collected.."/? "..L[db[self.Collection].Sets[self.Set].Variants[i].Title]
		else
			line = "- "..collected.."/? "..L["MISSING_LOCALIZATION"]
		end
		GameTooltip:AddLine(line)
	end
	local rightclick = L["RIGHT_CLICK_FAVORITE"] or L["MISSING_LOCALIZATION"]
	GameTooltip:AddLine(rightclick, 1, 1, 1)
	
	GameTooltip:Show()
end

function SetCollector:SetIsFilteredOutByArmorType(collection, set, type)
	local db = SetCollector.db.global.collections
	local setType = db[collection].Sets[set].ArmorType.Description
	if (setType == ANY.Description or setType == type or type == "Any") then
		return false
	else
		return true
	end
end

function SetCollector:SetIsFilteredOutByClass(collection, set, class)
	local db = SetCollector.db.global.collections
	local setClass = db[collection].Sets[set].Class
	if (setClass == ANY.Description or setClass == class or class == "All" or class == "Any") then
		return false
	else
		return true
	end
end

function SetCollector:SetIsFilteredOutByFaction(collection, set, faction)
	local db = SetCollector.db.global.collections
	local setFaction = db[collection].Sets[set].Faction
	if (setFaction == ANY.Description or setFaction == faction or faction == "Any") then
		return false
	else
		return true
	end
end

function SetCollector:SetIsFilteredOutByRole(collection, set, role)
	local db = SetCollector.db.global.collections
	local setRole = db[collection].Sets[set].Role
	if (setRole == ANY.Description or setRole == role or role == "All" or role == "Any") then
		return false
	else
		return true
	end
end

function SetCollector:IsObtainableSet(collection, set)
	local isObtainable = false
	if SetCollector.db.global.collections[collection].Sets[set] then
		isObtainable = SetCollector.db.global.collections[collection].Sets[set].Variants[1].Obtainable
	end
	return isObtainable
end

function SetCollector:IsTransmogSet(collection, set)
	local isTransmog = false
	if SetCollector.db.global.collections[collection].Sets[set] then
		isTransmog = SetCollector.db.global.collections[collection].Sets[set].Variants[1].Transmog
	end
	return isTransmog
end

function SetCollector:IsFavoriteSet(set)
	local isFavorite = false
	if SetCollector.db.char.sets[set] then
		isFavorite = SetCollector.db.char.sets[set].favorite
	end
	return isFavorite
end

function SetCollector:SetFavoriteSet(self)
	local db = SetCollector.db.char
	if not db.sets[self.Set] then
		db.sets[self.Set] = {
			favorite = false
		}
	end
	db.sets[self.Set].favorite = not db.sets[self.Set].favorite
	if not db.sets[self.Set].variants then
		db.sets[self.Set].variants = {}
		local variants = SetCollector.db.global.collections[self.Collection].Sets[self.Set].Variants
		for i=1, #variants do
			db.sets[self.Set].variants[i] = {
				favorite = db.sets[self.Set].favorite
			}
		end
	else
		for i=1, #db.sets[self.Set].variants do
			db.sets[self.Set].variants[i].favorite = not db.sets[self.Set].favorite
		end
	end
	if db.sets[self.Set].favorite then
		self.Favorite:Show()
	else
		self.Favorite:Hide()
	end
end

--
-- Setup Database
--

function SetCollector:AddAppearances(debug)
	if debug then	SetCollector:Print("Adding Appearances to database") end
	SetCollector.db.global.collections = CreateCollections()
	if debug then SetCollector:Print("Added "..#SetCollector.db.global.collections.." collections.") end
	
	GetGeneralAppearances()
	
	GetDeathKnightAppearances()
	GetDemonHunterAppearances()
	GetDruidAppearances()
	GetHunterAppearances()
	GetMageAppearances()
	GetMonkAppearances()
	GetPaladinAppearances()
	GetPriestAppearances()
	GetRogueAppearances()
	GetShamanAppearances()
	GetWarlockAppearances()
	GetWarriorAppearances()
	
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