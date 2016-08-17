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
			favorites = false,
			obtainable = false,
			transmog = false
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
	
	--  LEGENDARY
	col = LEGENDARY
	set = AddSet(70000,nil,col,901,"LG_CASTER_INT_90",ANY,ANY,CASTER,ANY)
				AddVariant(70000,nil,col,set,"LG_CASTER_INT_90",NOOBTAIN,TRANSMOG,A(20801,54617))
	set = AddSet(70000,nil,col,902,"LG_HEALER_INT_90",ANY,ANY,HEALER,ANY)
				AddVariant(70000,nil,col,set,"LG_HEALER_INT_90",NOOBTAIN,TRANSMOG,A(20825))	
	set = AddSet(70000,nil,col,903,"LG_MELEE_AGI_90",ANY,ANY,MELEE,ANY)
				AddVariant(70000,nil,col,set,"LG_MELEE_AGI_90",NOOBTAIN,TRANSMOG,A(20805))
	set = AddSet(50400,nil,col,904,"LG_MELEE_STR_90",ANY,ANY,MELEE,ANY)
				AddVariant(50400,nil,col,set,"LG_MELEE_STR_90",NOOBTAIN,TRANSMOG,A(20805))
	set = AddSet(70000,nil,col,905,"LG_MELEE_AGI_90",ANY,ANY,RANGED,ANY)
				AddVariant(70000,nil,col,set,"LG_MELEE_AGI_90",NOOBTAIN,TRANSMOG,A(20803))
	set = AddSet(50400,nil,col,906,"LG_TANK_STR_90",ANY,ANY,TANK,ANY)
				AddVariant(50400,nil,col,set,"LG_TANK_STR_90",NOOBTAIN,TRANSMOG,A(20805))
				
	set = AddSet(70000,nil,col,70,"LG_MELEE_70",ANY,ANY,MELEE,ANY)
				AddVariant(70000,nil,col,set,"LG_MELEE_70",OBTAIN,TRANSMOG,A(8460),A(8461))
	
	set = AddSet(70000,nil,col,60,"LG_60",ANY,ANY,TANK,ANY)
				AddVariant(70000,nil,col,set,"LG_60",OBTAIN,TRANSMOG,A(5131))
				
	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,180,"TR_CLOTH_18",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(25845,73196),A(25847,73166),A(25849,73182),A(25844,73228),A(25846,73200),A(25842,72970))	-- Need belt
	set = AddSet(70000,nil,col,180,"TR_LEATHER_18",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(25983,73204),A(25985,73170),A(25981,73184),A(25982,73232),A(25984,73208),A(25979,72978))		-- Need belt
	set = AddSet(70000,nil,col,180,"TR_MAIL_18",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(25949,73209),A(25950,73171),A(25947,73185),A(25948,73233),A(25951,73213),A(25946,73079))		-- Need belt
	set = AddSet(70000,nil,col,180,"TR_PLATE_18",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(25933,73220),A(25935,73178),A(25931,73192),A(25932,73240),A(25934,73224),A(25930,72890))		-- Need belt
				
	set = AddSet(70000,nil,col,170,"TR_CLOTH_17",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(22599,67988),A(22595,68000),A(22597,67996),A(22598,67992),A(22600,68004),A(22594,68007))		-- Need belt
	set = AddSet(70000,nil,col,170,"TR_LEATHER_17",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(23053,68023),A(23055,68019),A(23051,68013),A(23052,68031),A(23054,68011),A(23050,68027))		-- Need belt
	set = AddSet(70000,nil,col,170,"TR_MAIL_17",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(22684,68052),A(22686,68044),A(22682,68048),A(22683,68036),A(22685,68032),A(22681,68040))		-- Need belt
	set = AddSet(70000,nil,col,170,"TR_PLATE_17",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(22640,68079),A(22642,68075),A(22638,68067),A(22639,68063),A(22641,68059),A(22637,68071))		-- Need belt

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
				
	--  HOLIDAY (Disabled for now)
	--[[col = HOLIDAY
	set = AddSet(50400,nil,col,1103271,"HO_FESTIVE_DRESS",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"GREEN",OBTAIN,NOTRANSMOG,A(5657))
				AddVariant(50400,nil,col,set,"PINK",OBTAIN,NOTRANSMOG,A(5772))
				AddVariant(50400,nil,col,set,"PURPLE",OBTAIN,NOTRANSMOG,A(5773))
				AddVariant(50400,nil,col,set,"RED",OBTAIN,NOTRANSMOG,A(5656))
				
	set = AddSet(50400,nil,col,1103272,"HO_FESTIVE_SUIT",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"BLACK",OBTAIN,NOTRANSMOG,A(5774))
				AddVariant(50400,nil,col,set,"BLUE",OBTAIN,NOTRANSMOG,A(5777))
				AddVariant(50400,nil,col,set,"TEAL",OBTAIN,NOTRANSMOG,A(5776))
				AddVariant(50400,nil,col,set,"RED",OBTAIN,NOTRANSMOG,A(5775))]]--
	
	--  OTHER
	col = OTHER
	set = AddSet(70000,nil,col,100,"OTH_CLOTH_100",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_CLOTH_100",OBTAIN,TRANSMOG,A(31376,79535),A(31379,79537),A(31718,79539),A(31374,79538),A(31380,79532),A(31375,79533),A(31372,79531),A(31377,79536),A(31373,79534))
	set = AddSet(70000,nil,col,100,"OTH_LEATHER_100",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_LEATHER_100",OBTAIN,TRANSMOG,A(31393,79520),A(31396,79521),A(31718,79539),A(31394,79541),A(31397,79516),A(31392,79519),A(31390,79522),A(31395,79518),A(31391,79517))
	set = AddSet(70000,nil,col,100,"OTH_MAIL_100",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_MAIL_100",OBTAIN,TRANSMOG,A(31385,79527),A(31387,79529),A(31718,79539),A(31383,79530),A(31388,79524),A(31384,79525),A(31381,79523),A(31386,79528),A(31382,79526))
	set = AddSet(70000,nil,col,100,"OTH_PLATE_100",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_PLATE_100",OBTAIN,TRANSMOG,A(31310,79511),A(31312,79513),A(31718,79539),A(31313,79515),A(31309,79509),A(31306,79510),A(31311,79512),A(31307,79514))
	set = AddSet(70000,nil,col,1001,"OTH_LOCKET_100",ANY,ANY,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"OTH_LOCKET_100",OBTAIN,TRANSMOG,A(31906,80788))
	
end

local function GetDeathKnightAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"DK_TR_19",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(32139,81064),A(32141,81066),A(31975,81068),A(32137,81062),A(32138,81063),A(32140,81065))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(29805,79907),A(29807,79925),A(29974,81550),A(29800,79889),A(29804,79898),A(29806,79916))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(29813,79908),A(29815,79926),A(29961,81551),A(29811,79890),A(29812,79899),A(29814,79917))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(29829,79909),A(29831,79927),A(29939,81067),A(29827,79891),A(29828,79900),A(29830,79918))
				
	set = AddSet(70000,nil,col,181,"DK_TR_18",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(26468,70017),A(26470,70059),A(26466,69963),A(26467,70000),A(26464,70072),A(26469,70038),A(26465,69976))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(26460,70018),A(26462,70060),A(26458,69964),A(26459,70001),A(26456,70082),A(26461,70039),A(26457,69978))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(26061,70019),A(26062,70061),A(26051,69965),A(26052,70002),A(26049,70083),A(26063,70040),A(26050,69979))
				
	set = AddSet(70000,nil,col,171,"DK_TR_17",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(23890,64429),A(23891,64426),A(23888,64427),A(23889,64428),A(23893,64425))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(23898,67192),A(23899,67186),A(23896,67188),A(23897,67190),A(23900,67184))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(24087,67193),A(24089,67187),A(24085,67189),A(24086,67191),A(24088,67185))
	
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
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(32020,81113),A(32022,81115),A(32100,81543),A(32018,81111),A(32019,81112),A(32021,81114))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(32004,80181),A(32006,80187),A(32208,81540),A(32002,80175),A(32003,80178),A(32005,80184))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(32012,80182),A(32014,80188),A(32220,81541),A(32010,80176),A(32011,80179),A(32013,80185))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(31913,80183),A(31915,80189),A(32166,81542),A(31911,80177),A(31912,80180),A(31914,80186))
	
	-- DUNGEON
	
end

local function GetDruidAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"DR_TR_19",LEATHER,DRUID,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(32072,81092),A(32074,81094),A(32221,81558),A(32076,81090),A(32071,81091),A(32073,81093))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(30740,79832),A(30742,79850),A(31035,80486),A(30744,79814),A(30739,79823),A(30741,79841))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(30731,79833),A(30733,79851),A(31024,81557),A(30735,79815),A(30730,79824),A(30732,79842))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(30696,79834),A(30698,79852),A(30819,81095),A(30700,79816),A(30695,79825),A(30697,79843))
				
	set = AddSet(70000,nil,col,181,"DR_TR_18",LEATHER,DRUID,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(25588,69761),A(25590,69799),A(25592,69707),A(25587,69740),A(25584,69808),A(25589,69782),A(25585,69716))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(25579,69762),A(25581,69800),A(25583,69708),A(25578,69741),A(25575,69810),A(25580,69783),A(25576,69718))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(25619,69763),A(25621,69801),A(25622,69709),A(25618,69742),A(25612,69811),A(25620,69784),A(25613,69719))
				
	set = AddSet(70000,nil,col,171,"DR_TR_17",LEATHER,DRUID,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(23649,64432),A(23651,64434),A(23653,67121),A(23648,64431),A(23650,64433))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(23668,67124),A(23670,67128),A(23672,67120),A(23667,67122),A(23669,67126))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(23658,67970),A(23661,67129),A(23653,67121),A(23657,67123),A(23660,67127))
	
	-- DUNGEON
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"DR_OTH_19",LEATHER,DRUID,ANY,ANY)
				AddVariant(70000,nil,col,set,"DR_OTH_19",OBTAIN,TRANSMOG,A(32481,80998),A(32483,81000),A(32479,80995),A(32484,81002),A(32480,80997),A(32477,81001),A(32482,80999),A(32478,80996))
	
end

local function GetHunterAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"HU_TR_19",MAIL,HUNTER,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(31867,81076),A(31869,81078),A(32112,81079),A(31865,81074),A(31866,81075),A(31868,81077))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(29758,79868),A(29760,79883),A(30050,81552),A(29755,79859),A(29757,79862),A(29759,79874))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(29766,79869),A(29768,79884),A(30075,81553),A(29764,79860),A(29765,79863),A(29767,79875))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(29904,79870),A(29905,79885),A(30129,81554),A(29902,79861),A(29903,79864),A(29906,79876))
	set = AddSet(70000,nil,col,181,"HU_TR_18",MAIL,HUNTER,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(25749,69886),A(25751,69925),A(25747,69843),A(25748,69872),A(25745,69935),A(25750,69904),A(25746,69846))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(25741,69887),A(25743,69926),A(25739,69844),A(25740,69873),A(25737,69937),A(25742,69905),A(25738,69847))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(25716,69888),A(25719,69927),A(25714,69845),A(25715,69874),A(25712,69938),A(25718,69906),A(25713,69848))
	
	-- DUNGEON
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"HU_OTH_19",MAIL,HUNTER,ANY,ANY)
				AddVariant(70000,nil,col,set,"HU_OTH_19",OBTAIN,TRANSMOG,A(32491,80982),A(32493,80984),A(32489,80979),A(32494,80986),A(32490,80981),A(32487,80985),A(32492,80983),A(32488,80980))
	
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
	set = AddSet(70000,nil,col,181,"MA_TR_18",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(25451,69597),A(25453,69654),A(25455,69633),A(25450,69578),A(25452,69613),A(25448,69555))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(25423,69598),A(25425,69655),A(25427,69634),A(25422,69579),A(25424,69614),A(25420,69557))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(25530,69599),A(25532,69656),A(25534,69635),A(25539,69580),A(25531,69615),A(25531,69615))
	set = AddSet(70000,nil,col,171,"MA_TR_17",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(25451,69597),A(25453,69654),A(25455,69633),A(25450,69578),A(25452,69613),A(25448,69555))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(25423,69598),A(25425,69655),A(25427,69634),A(25422,69579),A(25424,69614),A(25420,69557))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(25530,69599),A(25532,69656),A(25534,69635),A(25539,69580),A(25531,69615),A(25531,69615))
	
	-- DUNGEON
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"MA_OTH_19",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"MA_OTH_19",OBTAIN,TRANSMOG,A(32507,81021),A(32509,81024),A(32512,81023),A(32511,81026),A(32506,81020),A(32504,81025),A(32510,81022),A(32505,81019))
	
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
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(31947,81102),A(31949,81105),A(32060,81106),A(31950,81104),A(31946,81101),A(31948,81103))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(30262,79781),A(30264,79808),A(30177,81563),A(30266,79799),A(30261,79772),A(30263,79790))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(30271,79782),A(30273,79809),A(30189,81564),A(30275,79800),A(30270,79773),A(30272,79791))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(30280,79783),A(30282,79810),A(30231,81565),A(30283,79801),A(30279,79774),A(30281,79792))
	
	-- DUNGEON
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"PR_OTH_19",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"PR_OTH_19",OBTAIN,TRANSMOG,A(32472,81029),A(32474,81032),A(32476,81031),A(32475,81034),A(32471,81028),A(32468,81033),A(32473,81030),A(32469,81027))
	
end


--  ROGUE

local function GetRogueAppearances()
	local set = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = AddSet(70000,nil,col,85,"LG_ROGUE_85",ANY,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(16977),A(16977))

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,190,"RO_TR_19",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(32083,81082),A(32084,81084),A(32298,81555),A(32079,81080),A(32080,81081),A(32081,81083))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(29870,79838),A(29872,79856),A(32292),A(29868,79820),A(29869,79829),A(29871,79847))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(29197,79839),A(29218,79857),A(32282),A(29195,79821),A(29196,79830),A(29217,79848))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(28986,79840),A(28988,79858),A(32317),A(28984,79822),A(28985,81081),A(28987,79849))
				
	set = AddSet(70000,nil,col,181,"RO_TR_18",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(25802,69767),A(25805,69805),A(25800,69713),A(25801,69746),A(25803,69788),A(25799,69728))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(25810,69768),A(25813,69806),A(25808,69714),A(25809,69747),A(25811,69789),A(25807,69730))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(25819,69769),A(25821,69807),A(25817,69715),A(25818,69748),A(25820,69790),A(25816,69731))
				
	set = AddSet(70000,nil,col,171,"RO_TR_17",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(23127,64462),A(23132,64464),A(23129,64460),A(23130,64461),A(23131,64463))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(23140,67317),A(23135,67321),A(23138,67313),A(23137,67315),A(23136,67319))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(23489,67318),A(23491,67322),A(23487,67314),A(23488,67316),A(23490,67320))
				
	set = AddSet(70000,nil,col,160,"RO_TR_MELEE_16",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(20906,52289),A(20908,52291),A(20904,52287),A(20905,52288),A(20907,52290))
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(21061,52912),A(21062,52916),A(20952,52910),A(20953,52911),A(20955,52915))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(20954,52395),A(20956,52397),A(20952,52393),A(20953,52394),A(20955,52396))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(21015,52629),A(21017,52631),A(21019,52637),A(21018,52636),A(21016,52630))
	
	-- DUNGEON

	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,191,"RO_OTH_19",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RO_OTH_19",OBTAIN,TRANSMOG,A(32535,81014),A(32537,81016),A(32533,81011),A(32538,81018),A(32534,81013),A(32531,81017),A(32536,81015),A(32532,81012))		-- Need belt and feet for each variant
	
end


--  SHAMAN

local function GetShamanAppearances()
	local set = ""
	
	-- LEGENDARY
	col = LEGENDARY	
	set = AddSet(50400,nil,col,80,"LG_HEALER_80",ANY,SHAMAN,ANY,ANY)
				AddVariant(50400,nil,col,set,"LG_HEALER_80",OBTAIN,TRANSMOG,A(11613))
	
	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,190,"SH_TR_19",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(32095,81070),A(32096,81073),A(32086,81539),A(32099,81072),A(32094,81069),A(32097,81071))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(30937,79871),A(30938,79886),A(31364,81536),A(30942,79880),A(30936,79865),A(30939,79877))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(30928,79872),A(30929,79887),A(31363,81537),A(30932,79881),A(30927,79866),A(30930,79878))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(31039,79873),A(31041,79888),A(31348,81538),A(31043,79882),A(31038,79867),A(31040,79879))
				
	set = AddSet(70000,nil,col,181,"SH_TR_18",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(26019,69889),A(26021,69928),A(26023,69910),A(26018,69875),A(26016),A(26020,69907),A(26472))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(26036,69890),A(26038,69929),A(26040,69911),A(26035,69876),A(26033),A(26037,69908),A(26474))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(26000,69891),A(26002,69930),A(26004,69912),A(25999,69877),A(25996),A(26001,69909),A(25997))
				
	set = AddSet(70000,nil,col,171,"SH_TR_17",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(23360,64469),A(23361,64466),A(23363,64467),A(23368,64468),A(23365,64465))		-- Need Belt and Feet
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(23370,67287),A(23371,67281),A(23373,67283),A(23378,67285),A(23375,67279))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(23678,67288),A(23679,67282),A(23688,67284),A(23677,67286),A(23689,67280))
				
	set = AddSet(70000,nil,col,160,"SH_TR_16",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(20893,52370),A(20887,52372),A(20897,52368),A(20896,52369),A(20894,52371))
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(20943,52926),A(20945,52928),A(20949,52860),A(20942,52861),A(20944,52927))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(20943,52374),A(20945,52376),A(20949,52387),A(20942,52373),A(20944,52375))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(21010,52613),A(21012,52615),A(21014,52625),A(21013,52626),A(21011,52614))
				
	set = AddSet(70000,nil,col,150,"SH_TR_CASTER_15",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(20359,50438),A(20562,50440),A(20362,50436),A(20358,50437),A(20360,50439))
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(20313,50064),A(20509,50066),A(20344,50062),A(20341,50063),A(20342,50065))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(20350,51062),A(20573,51064),A(20353,51060),A(20349,51061),A(20351,51063))
				
	set = AddSet(70000,nil,col,140,"SH_TR_CASTER_14",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(18960,44529),A(18958,44531),A(18717,44527),A(18716,44528),A(18959,44530))
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(18560,43649),A(18558,43651),A(18563,43647),A(18561,43648),A(18559,43650))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(19069,44977),A(19095,44979),A(19093,44975),A(19094,44976),A(19076,44978))
				
	set = AddSet(70000,nil,col,130,"SH_TR_CASTER_13",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(16736,40117),A(17150,40173),A(16740,40155),A(16735,40098),A(16737,40143))
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(16752,38856),A(16984,38854),A(16750,38858),A(16753,38857),A(15986,38855))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(16745,40022),A(17149,40078),A(16741,40060),A(16746,40003),A(16744,40048))
				
	set = AddSet(70000,nil,col,120,"SH_TR_CASTER_12",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(15892,36575),A(15814,36577),A(15875,36573),A(15532,36574),A(15831,36576))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(15933,36780),A(15922,36782),A(15929,36778),A(15921,36779),A(15916,36781))
				
	set = AddSet(70000,nil,col,110,"SH_TR_CASTER_11",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(14036,30047),A(14050,30049),A(14104,30045),A(13983,30046),A(14046,30048))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(14764,32817),A(14754,32819),A(14703,32815),A(14730,32816),A(14751,32818))
				
	set = AddSet(70000,nil,col,100,"SH_TR_CASTER_10",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"VENDOR",OBTAIN,TRANSMOG,A(12538,24921),A(12550,24923),A(12547,24919),A(12548,24920),A(12549,24922))
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(12355,25080),A(12279,25082),A(12345,25078),A(12282,25079),A(12223,25081))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(12458,25115),A(26844,25113),A(12510,25117),A(12500,25116),A(12587,25114))
				
	-- DUNGEON
	col = DUNGEON
	set = AddSet(70000,nil,col,30,"SH_DG_03",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_DG_03",OBTAIN,TRANSMOG,A(7163,12417),A(6962,12077),A(7104,12348),A(6876,11944),A(7020,12147))
	
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"SH_OTH_19",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_OTH_19",OBTAIN,TRANSMOG,A(32499,80974),A(32501,80976),A(32497,80971),A(32502,80978),A(32498,80973),A(32495,80977),A(32500,80975),A(32496,80972))
	
end

--  WARLOCK

local function GetWarlockAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"WK_TR_19",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",OBTAIN,TRANSMOG,A(31884,81097),A(31886,81100),A(31871,81562),A(31888,81099),A(31883,81096),A(31885,81098))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(29171,79784),A(29173,79811),A(29040,81559),A(29175,79802),A(29170,79775),A(29172,79793))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(29161,79785),A(29163,79812),A(29028,81560),A(29165,79803),A(29160,79776),A(29162,79794))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(29083,79786),A(29085,79813),A(29049,81561),A(29087,79804),A(29082,79777),A(29084,79795))
	set = AddSet(70000,nil,col,181,"WK_TR_18",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(26169,69603),A(26171,69660),A(26173,69639),A(26168,69584),A(26165,69667),A(26170,69619))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(26160,69604),A(26162,69661),A(26164,69640),A(26159,69585),A(26156,69669),A(26161,69620))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(26214,69605),A(26216,69662),A(26218,69641),A(26213,69586),A(26210,69670),A(26215,69621))
	set = AddSet(70000,nil,col,171,"WK_TR_17",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(23850,64476),A(23853,64479),A(23852,64478),A(23849,64475),A(23851,64477))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(23841,67225),A(23844,67231),A(23843,67229),A(23840,67223),A(23842,67227))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(23866,67226),A(23869,67232),A(23868,67230),A(23865,67224),A(23867,67228))
	
	-- DUNGEON
	
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"WK_OTH_19",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"WK_OTH_19",OBTAIN,TRANSMOG,A(32517,81037),A(32519,81040),A(32521,81039),A(32520,81042),A(32516,81036),A(32513,81041),A(32518,81038),A(32514,81035))
	
end


--  WARRIOR

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
				
	set = AddSet(70000,nil,col,181,"WR_TR_18",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(25500,70023),A(25501,70065),A(25498,69969),A(25499,70006),A(25496,70076),A(25503,70044),A(25497,69972))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(25492,70024),A(25493,70066),A(25490,69970),A(25491,70007),A(25488,70078),A(25495,70045),A(25489,69974))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(25649,70025),A(25650,70067),A(25647,69971),A(25648,70008),A(25645,70079),A(25652,70046),A(25646,69975))
	
	set = AddSet(70000,nil,col,171,"WR_TR_17",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",OBTAIN,TRANSMOG,A(23069,64474),A(23071,64471),A(23067,64472),A(23068,64473),A(23070,64470))
				AddVariant(70000,nil,col,set,"HEROIC",OBTAIN,TRANSMOG,A(23113,67174),A(23115,67168),A(23111,67170),A(23112,67172),A(23114,67166))
				AddVariant(70000,nil,col,set,"MYTHIC",OBTAIN,TRANSMOG,A(23151,67175),A(23152,67169),A(23156,67171),A(23157,67173),A(23158,67167))
	
	-- DUNGEON
	
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"WR_OTH_19",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"WR_OTH_19",OBTAIN,TRANSMOG,A(32561,80958),A(32563,80960),A(32559,80955),A(32564,80962),A(32560,80957),A(32557,80961),A(32562,80959),A(32558,80956))
	
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
	if not db.sets[self.Set].variants or #db.sets[self.Set].variants == 0 then
		db.sets[self.Set].variants = {}
		local variants = SetCollector.db.global.collections[self.Collection].Sets[self.Set].Variants
		for i=1, #variants do
			SetCollector:SetFavoriteVariant(self.Set, i)
		end
	else
		for i=1, #db.sets[self.Set].variants do
			SetCollector:SetFavoriteVariant(self.Set, i)
		end
	end
	if db.sets[self.Set].favorite then
		self.Favorite:Show()
	else
		self.Favorite:Hide()
	end
end

function SetCollector:SetFavoriteVariant(set, variant)
	local char = SetCollector.db.char
	if char.sets[set] and char.sets[set].variants[variant] then
		char.sets[set].variants[variant].favorite = not char.sets[set].variants[variant].favorite
	else
		char.sets[set].variants[variant] = {
			favorite = true
		}
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