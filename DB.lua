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

local function AddVariant(minVersion, maxVersion, collection, set, title, obtainable, transmogrifiable, ...)
	if WOW_VERSION >= minVersion then
		if maxVersion == nil or WOW_VERSION <= maxVersion then
			local tempAppearances = { }
			local n = select("#",...)
			for i = 1,n do
				local v = select(i,...)
				tinsert(tempAppearances,v)
				SetCollector.db.global.collections.Appearances[v] = { collection = collection.ID, set = set, variant = #SetCollector.db.global.collections[collection.ID].Sets[set].Variants + 1 }
			end
			local tempVariant = {
				Title = title,
				Obtainable = obtainable,
				Transmogrifiable = transmogrifiable,
				Appearances = tempAppearances,
				Count = #tempAppearances
			}
			tinsert(SetCollector.db.global.collections[collection.ID].Sets[set].Variants, tempVariant)	
		end
	end	
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
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,25845,25847,25849,25844,25846,25842)		-- Need belt
	set = AddSet(70000,nil,col,180,"TR_LEATHER_18",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,25983,25985,25981,25982,25984,25979)		-- Need belt
	set = AddSet(70000,nil,col,180,"TR_MAIL_18",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,25949,25950,25947,25948,25951,25946)		-- Need belt
	set = AddSet(70000,nil,col,180,"TR_PLATE_18",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,25933,25935,25931,25932,25934,25930)		-- Need belt
				
	set = AddSet(70000,nil,col,170,"TR_CLOTH_17",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,22599,22595,22597,22598,22600,22594)		-- Need belt
	set = AddSet(70000,nil,col,170,"TR_LEATHER_17",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,23053,23055,23051,23052,23054,23050)		-- Need belt
	set = AddSet(70000,nil,col,170,"TR_MAIL_17",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,22684,22686,22682,22683,22685,22681)		-- Need belt
	set = AddSet(70000,nil,col,170,"TR_PLATE_17",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,22640,22642,22638,22639,22641,22637)		-- Need belt

	-- DUNGEON
	
	-- GARRISON
	col = GARRISON
	set = AddSet(60000,nil,col,602,"GA_BWM_SET_100",CLOTH,ANY,ANY,ANY)
				AddVariant(60000,nil,col,set,"CLOTH",OBTAIN,TRANSMOG,23099,23096,23097,23098,23807,23100,23806)
	set = AddSet(60000,nil,col,602,"GA_BWM_SET_100",LEATHER,ANY,ANY,ANY)
				AddVariant(60000,nil,col,set,"LEATHER",OBTAIN,TRANSMOG,22857,22859,22855,22856,22853,22858,22854)
	set = AddSet(60000,nil,col,602,"GA_BWM_SET_100",MAIL,ANY,ANY,ANY)
				AddVariant(60000,nil,col,set,"MAIL",OBTAIN,TRANSMOG,22945,22944,22947,22946,22949,23810,22948)
	set = AddSet(60000,nil,col,602,"GA_BWM_SET_100",PLATE,ANY,ANY,ANY)
				AddVariant(60000,nil,col,set,"PLATE",OBTAIN,TRANSMOG,23274,23278,23265,23271,23259,23277,23262)
	
	set = AddSet(60000,nil,col,601,"GA_ALLIANCE_SET",ANY,ANY,ANY,ALLIANCE)
				AddVariant(60000,nil,col,set,"GA_ALLIANCE_SET",OBTAIN,TRANSMOG,24474,24476,24472,24473,24470,24475,24471)
	
	set = AddSet(60000,nil,col,601,"GA_HORDE_SET",ANY,ANY,ANY,HORDE)
				AddVariant(60000,nil,col,set,"GA_HORDE_SET",OBTAIN,TRANSMOG,24054,24051,24052,24817,24053,24050,24854)
	
	--  OTHER
	col = OTHER
	set = AddSet(70000,nil,col,100,"OTH_CLOTH_100",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_CLOTH_100",OBTAIN,TRANSMOG,31376,31374,31372,31375,31380,31377,31373)
	set = AddSet(70000,nil,col,100,"OTH_LEATHER_100",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_LEATHER_100",OBTAIN,TRANSMOG,31395,31391)
	set = AddSet(70000,nil,col,100,"OTH_MAIL_100",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_MAIL_100",OBTAIN,TRANSMOG,31385,31387,31383,31388,31381,31386,31382)
	set = AddSet(70000,nil,col,100,"OTH_PLATE_100",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_PLATE_100",OBTAIN,TRANSMOG,31310,31313)
	
end

local function GetDeathKnightAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"DK_TR_19",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,32139,32141,31975,32137,32138,32140)		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,29805,29807,29974,29800,29804,29806)
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,29813,29815,29961,29811,29812,29814)
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,29829,29831,29939,29827,29828,29830)
	
	-- DUNGEON
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"DK_OTH_19",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"DK_OTH_19",OBTAIN,TRANSMOG,32543,32545,32541,32546,32542,32539,32544,32540)
	
end

local function GetDemonHunterAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"DH_TR_19",LEATHER,DEMONHUNTER,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,32020,32022,32100,32018,32019,32021)		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,32004,32006,32208,32002,32003,32005)
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,32012,32014,32220,32010,32011,32013)
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,31913,31915,32166,31911,31912,31914)
	
	-- DUNGEON
	
end

local function GetDruidAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"DR_TR_19",LEATHER,DRUID,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,32072,32074,32221,32076,32071,32073)		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,30740,30742,31035,30744,30739,30741)
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,30731,30733,31024,30735,30730,30732)
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,30696,30698,30819,30700,30695,30697)
	
	-- DUNGEON
	
end

local function GetHunterAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"HU_TR_19",MAIL,HUNTER,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,31867,31869,32112,31865,31866,31868)		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,29758,29760,30050,29755,29757,29759)
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,29766,29768,30075,29764,29765,29767)
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,29904,29905,30129,29902,29903,29906)
	
	-- DUNGEON
	
end

local function GetMageAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"MA_TR_19",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,31938,31940,32048,31942,31937,31939)		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,30785,30787,31175,30789,30784,30786)
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,30776,30778,31171,30780,30775,30777)
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,31083,31085,31115,31087,31082,31084)
	
	-- DUNGEON
	
end

local function GetMonkAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"MO_TR_19",LEATHER,MONK,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,30634,30645,30535,30633,30643,30644)		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,32043,32046,31917,32042,32044,32045)
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,30617,30619,30510,30615,30616,30618)
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,30670,30671,30491,30669,30672,30673)
	
	-- DUNGEON
	
end

local function GetPaladinAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"PA_TR_19",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,32147,32149,32105,32151,32146,32148)		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,29644,29647,29707,29646,29643,29645)
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,29653,29655,29717,29657,29652,29654)
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,29452,29454,29676,29456,29451,29453)
	
	-- DUNGEON
	
end

local function GetPriestAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"PR_TR_19",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,31947,31949,32060,31950,31946,31948)		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,30262,30264,30177,30266,30261,30263)
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,30271,30273,30189,30275,30270,30272)
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,30280,30282,30231,30283,30279,30281)
	
	-- DUNGEON
	
end

local function GetRogueAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"RO_TR_19",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,32083,32084,32298,32079,32080,32081)		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,29870,29872,32292,29868,29869,29871)
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,29197,29218,32282,29195,29196,29217)
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,28986,28988,32317,28984,28985,28987)
	
	-- DUNGEON
	
end

local function GetShamanAppearances()
	local set = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = AddSet(50400,nil,col,90,"LG_CASTER_INT_90",ANY,SHAMAN,CASTER,ANY)
				AddVariant(50400,nil,col,set,"LG_CASTER_INT_90",OBTAIN,TRANSMOG,20801)
	
	set = AddSet(50400,nil,col,90,"LG_MELEE_AGI_90",ANY,SHAMAN,MELEE,ANY)
				AddVariant(50400,nil,col,set,"LG_MELEE_AGI_90",OBTAIN,TRANSMOG,20805)
	
	set = AddSet(50400,nil,col,90,"LG_HEALER_INT_90",ANY,SHAMAN,HEALER,ANY)
				AddVariant(50400,nil,col,set,"LG_HEALER_INT_90",OBTAIN,TRANSMOG,20825)
	
	set = AddSet(50400,nil,col,80,"LG_HEALER_80",ANY,SHAMAN,ANY,ANY)
				AddVariant(50400,nil,col,set,"LG_HEALER_80",OBTAIN,TRANSMOG,11613)
	
	set = AddSet(70000,nil,col,60,"LG_60",ANY,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"LG_60",OBTAIN,TRANSMOG,5131)
	
	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"SH_TR_19",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,32095,32096,32086,32099,32094,32097)		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,30937,30938,31364,30942,30936,30939)
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,30928,30929,31363,30932,30927,30930)
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,31039,31041,31348,31043,31038,31040)
	set = AddSet(70000,nil,col,181,"SH_TR_18",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,26019,26021,26023,26018,26016,26020,26472)
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,26036,26038,26040,26035,26033,26037,26474)
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,26000,26002,26004,25999,25996,26001,25997)
	set = AddSet(70000,nil,col,171,"SH_TR_17",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,23360,23361,23363,23368,23365)		-- Need Belt and Feet
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,23370,23371,23373,23378,23375)
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,23678,23679,23688,23677,23689)
				
	-- DUNGEON
	col = DUNGEON
	set = AddSet(70000,nil,col,30,"SH_DG_03",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_DG_03",OBTAIN,TRANSMOG,7163,6962,7104,6876,7020)
	
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"SH_OTH_19",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_OTH_19",OBTAIN,TRANSMOG,32499,32501,32497,32502,32498,32495,32500,32496)
	
end

local function GetWarlockAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"WK_TR_19",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",31884,31886,31871,31888,31883,31885)		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",29171,29173,29040,29175,29170,29172)
				AddVariant(70000,nil,col,set,"HEROIC",29161,29163,29028,29165,29160,29162)
				AddVariant(70000,nil,col,set,"MYTHIC",29083,29085,29049,29087,29082,29084)
	set = AddSet(70000,nil,col,181,"WK_TR_18",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,25845,25847,25849,25844,25846,25842)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,26169,26171,26173,26168,26165,26170)
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,26160,26162,26164,26159,26156,26161)
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,26214,26216,26218,26213,26210,26215)
	set = AddSet(70000,nil,col,171,"WK_TR_17",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,22599,22595,22597,22598,22600,22594)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,23850,23853,23852,23849,23851)
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,23841,23844,23843,23840,23842)
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,23866,23869,23868,23865,23867)
	
	-- DUNGEON
	
end

local function GetWarriorAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"WR_TR_19",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,32157,32160,32127,32156,32158,32159)		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,31444,31447,32242,31443,31445,31446)
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,31410,31413,31545,31409,31411,31412)
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,31449,31455,32229,31452,31453,31454)
				
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
		local anyCollected, sources = false, C_TransmogCollection.GetAppearanceSources(appearances[i])
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