-- Shared Appearance variables and functions

SetCollector.ALL				=	{ Code = "A", Description = "All" }
SetCollector.ANY				=	{ Code = "Z", Description = "Any" }

SetCollector.CLOTH				= { Code = "C", Description = "CLOTH" }
SetCollector.LEATHER			= { Code = "L", Description = "LEATHER" }
SetCollector.MAIL				= { Code = "M", Description = "MAIL" }
SetCollector.PLATE				= { Code = "P", Description = "PLATE" }

SetCollector.DEATHKNIGHT		= { Code = "DK", Description = "DEATHKNIGHT" }
SetCollector.DEMONHUNTER		= { Code = "DH", Description = "DEMONHUNTER" }
SetCollector.DRUID 			    = { Code = "DR", Description = "DRUID" }
SetCollector.HUNTER 			= { Code = "HU", Description = "HUNTER" }
SetCollector.MAGE 				= { Code = "MA", Description = "MAGE" }
SetCollector.MONK 				= { Code = "MO", Description = "MONK" }
SetCollector.PALADIN 			= { Code = "PA", Description = "PALADIN" }
SetCollector.PRIEST 			= { Code = "PR", Description = "PRIEST" }
SetCollector.ROGUE 			    = { Code = "RO", Description = "ROGUE" }
SetCollector.SHAMAN 			= { Code = "SH", Description = "SHAMAN" }
SetCollector.WARLOCK 			= { Code = "WK", Description = "WARLOCK" }
SetCollector.WARRIOR 			= { Code = "WR", Description = "WARRIOR" }

SetCollector.ALLIANCE 			= { Code = "A", Description = "Alliance" }
SetCollector.HORDE 			    = { Code = "H", Description = "Horde" }

SetCollector.TANK 				= { Code = "T", Description = "TANK" }
SetCollector.HEALER 			= { Code = "H", Description = "HEALER" }
SetCollector.CASTER 			= { Code = "C", Description = "CASTER" }
SetCollector.RANGED 			= { Code = "R", Description = "RANGED" }
SetCollector.MELEE 			    = { Code = "M", Description = "MELEE" }

-- Collection Types
SetCollector.OUTFITS 			= { ID = 1, Code = "OU", Description = "OUTFITS" }
SetCollector.ARTIFACT 			= { ID = 2, Code = "AR", Description = "ARTIFACT" }
SetCollector.LEGENDARY 		    = { ID = 3, Code = "ZZ", Description = "LEGENDARY" }
SetCollector.RAID 				= { ID = 4, Code = "TR", Description = "RAID" }
SetCollector.DUNGEON 			= { ID = 5, Code = "DG", Description = "DUNGEON" }
SetCollector.CHALLENGE 		    = { ID = 6, Code = "CD", Description = "CHALLENGE" }
SetCollector.PVP 				= { ID = 7, Code = "PV", Description = "PVP" }
SetCollector.GARRISON 			= { ID = 8, Code = "GA", Description = "GARRISON" }
SetCollector.CRAFTED 			= { ID = 9, Code = "CR", Description = "CRAFTED" }
SetCollector.OTHER				= { ID = 10, Code = "OT", Description = "OTHER" }
SetCollector.CUSTOM			    = { ID = 11, Code = "CU", Description = "CUSTOM" }
SetCollector.HOLIDAY			= { ID = 12, Code = "HO", Description = "HOLIDAY" }

SetCollector.OBTAIN			    = true
SetCollector.NOOBTAIN 			= false

SetCollector.TRANSMOG 			= true
SetCollector.NOTRANSMOG 		= false


function SetCollector:A(a, s, i, ...)
	local t = { 
		a = a or 0,
		s = s or 0,
		i = i or 0
	}
	return t
end


--
-- LOCAL VARIABLES (Remove when appearances removed)
--

local ALL				=	{ Code = "A", Description = "All" }
local ANY				=	{ Code = "Z", Description = "Any" }

local CLOTH				= { Code = "C", Description = "CLOTH" }
local LEATHER			= { Code = "L", Description = "LEATHER" }
local MAIL				= { Code = "M", Description = "MAIL" }
local PLATE				= { Code = "P", Description = "PLATE" }

local DEATHKNIGHT		= { Code = "DK", Description = "DEATHKNIGHT" }
local DEMONHUNTER		= { Code = "DH", Description = "DEMONHUNTER" }
local DRUID 			= { Code = "DR", Description = "DRUID" }
local HUNTER 			= { Code = "HU", Description = "HUNTER" }
local MAGE 				= { Code = "MA", Description = "MAGE" }
local MONK 				= { Code = "MO", Description = "MONK" }
local PALADIN 			= { Code = "PA", Description = "PALADIN" }
local PRIEST 			= { Code = "PR", Description = "PRIEST" }
local ROGUE 			= { Code = "RO", Description = "ROGUE" }
local SHAMAN 			= { Code = "SH", Description = "SHAMAN" }
local WARLOCK 			= { Code = "WK", Description = "WARLOCK" }
local WARRIOR 			= { Code = "WR", Description = "WARRIOR" }

local ALLIANCE 			= { Code = "A", Description = "Alliance" }
local HORDE 			= { Code = "H", Description = "Horde" }

local TANK 				= { Code = "T", Description = "TANK" }
local HEALER 			= { Code = "H", Description = "HEALER" }
local CASTER 			= { Code = "C", Description = "CASTER" }
local RANGED 			= { Code = "R", Description = "RANGED" }
local MELEE 			= { Code = "M", Description = "MELEE" }

-- Collection Types
local OUTFITS 			= { ID = 1, Code = "OU", Description = "OUTFITS" }
local ARTIFACT 			= { ID = 2, Code = "AR", Description = "ARTIFACT" }
local LEGENDARY 		= { ID = 3, Code = "ZZ", Description = "LEGENDARY" }
local RAID 				= { ID = 4, Code = "TR", Description = "RAID" }
local DUNGEON 			= { ID = 5, Code = "DG", Description = "DUNGEON" }
local CHALLENGE 		= { ID = 6, Code = "CD", Description = "CHALLENGE" }
local PVP 				= { ID = 7, Code = "PV", Description = "PVP" }
local GARRISON 			= { ID = 8, Code = "GA", Description = "GARRISON" }
local CRAFTED 			= { ID = 9, Code = "CR", Description = "CRAFTED" }
local OTHER				= { ID = 10, Code = "OT", Description = "OTHER" }
local CUSTOM			= { ID = 11, Code = "CU", Description = "CUSTOM" }
local HOLIDAY			= { ID = 12, Code = "HO", Description = "HOLIDAY" }

local OBTAIN			= true
local NOOBTAIN 			= false

local TRANSMOG 			= true
local NOTRANSMOG 		= false

--
-- LOCAL FUNCTIONS
--

local function A(a, s, i, ...)
	local t = { 
		a = a or 0,
		s = s or 0,
		i = i or 0
	}
	return t
end

--
--	GLOBAL FUNCTIONS
--

function SetCollector:GetDeathKnightAppearances()
	local col = ""
	local set = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,50,"DK_LG_MELEE_110",PLATE,DEATHKNIGHT,MELEE,ANY)		-- Frost
				SetCollector:AddVariant(70000,nil,col,set,"DK_LG_MELEE_110",TRANSMOG,A(16823,76316),A(18947,76268),A(18047,76315),A(6904,76263),A(13785,76305))
	set = SetCollector:AddSet(70000,nil,col,51,"DK_LG_MELEE_110",PLATE,DEATHKNIGHT,MELEE,ANY)		-- Unholy
				SetCollector:AddVariant(70000,nil,col,set,"DK_LG_MELEE_110",TRANSMOG,A(20431,78760),A(18947,76268),A(11353,76307),A(16827,76303),A(13785,76305))
	set = SetCollector:AddSet(70000,nil,col,52,"DK_LG_TANK_110",PLATE,DEATHKNIGHT,TANK,ANY)			-- Blood
				SetCollector:AddVariant(70000,nil,col,set,"DK_LG_TANK_110",TRANSMOG,A(18947,76268),A(11888,76262),A(20434,76264),A(14758,76310),A(13785,76305))

	-- RAID
	col = RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,210,"DK_TR_21",PLATE,DEATHKNIGHT,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,200,"DK_TR_20",PLATE,DEATHKNIGHT,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,191,"DK_TR_19",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32139,81064),A(32141,81066),A(31975,81068),A(32137,81062),A(32138,81063),A(32140,81065))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(29805,79907),A(29807,79925),A(29974,81550),A(29800,79889),A(29804,79898),A(29806,79916))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(29813,79908),A(29815,79926),A(29961,81551),A(29811,79890),A(29812,79899),A(29814,79917))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29829,79909),A(29831,79927),A(29939,81067),A(29827,79891),A(29828,79900),A(29830,79918))
				
	set = SetCollector:AddSet(70000,nil,col,181,"DK_TR_18",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(26468,70017),A(26470,70059),A(26466,69963),A(26467,70000),A(26464,70072),A(26469,70038),A(26465,69976))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(26460,70018),A(26462,70060),A(26458,69964),A(26459,70001),A(26456,70082),A(26461,70039),A(26457,69978))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(26061,70019),A(26062,70061),A(26051,69965),A(26052,70002),A(26049,70083),A(26063,70040),A(26050,69979))
				
	set = SetCollector:AddSet(70000,nil,col,171,"DK_TR_17",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23890,64429),A(23891,64426),A(23888,64427),A(23889,64428),A(23893,64425))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23898,67192),A(23899,67186),A(23896,67188),A(23897,67190),A(23900,67184))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(24087,67193),A(24089,67187),A(24085,67189),A(24086,67191),A(24088,67185))
				
	set = SetCollector:AddSet(70000,nil,col,161,"DK_TR_MELEE_16",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20921,52338),A(20918,52340),A(20928,52347),A(20920,52348),A(20917,52339))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(21058,52852),A(21063,52920),A(20987,52889),A(20988,52890),A(20986,52853))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20989,52475),A(20985,52468),A(20987,52473),A(20988,52474),A(20986,52472))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21001,52618),A(21003,52620),A(21008,52616),A(21009,52617),A(21002,52619))
				
	set = SetCollector:AddSet(70000,nil,col,151,"DK_TR_MELEE_15",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20476,50327),A(20478,50329),A(20474,50325),A(20475,50326),A(20477,50328))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20311,49974),A(20431,49976),A(20424,49972),A(20480,49973),A(20427,49975))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20126,50951),A(20128,50953),A(20124,50949),A(20125,50950),A(20127,50952))
				
	set = SetCollector:AddSet(70000,nil,col,141,"DK_TR_MELEE_14",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18977,44574),A(18975,44572),A(18979,44576),A(18978,44575),A(18976,44573))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(18581,43694),A(18579,43692),A(18583,43696),A(18582,43695),A(18580,43693))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(19036,44777),A(19038,44779),A(19034,44775),A(19035,44776),A(19037,44778))
				
	set = SetCollector:AddSet(70000,nil,col,131,"DK_TR_MELEE_13",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16839,40119),A(16837,40168),A(16841,40091),A(16840,40102),A(17159,40139))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16823,38807),A(16822,38809),A(16825,38805),A(16824,38806),A(15981,38808))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(16831,40024),A(16829,40073),A(16833,39996),A(16832,40007),A(16830,40044))
				
	set = SetCollector:AddSet(70000,nil,col,121,"DK_TR_MELEE_12",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15635,36428),A(15795,36430),A(15796,36351),A(15529,36427),A(15639,36429))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15801,36705),A(15803,36707),A(15799,36703),A(15800,36704),A(15802,36706))
				
	set = SetCollector:AddSet(70000,nil,col,111,"DK_TR_MELEE_11",PLATE,DEATHKNIGHT,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(14106,30068),A(14082,30070),A(13978,30066),A(14105,30067),A(13979,30069))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14749,32742),A(14752,32744),A(14733,32740),A(14772,32741),A(14732,32743))
				
	set = SetCollector:AddSet(70000,nil,col,111,"DK_TR_TANK_11",PLATE,DEATHKNIGHT,TANK,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(14040,30068),A(14082,30070),A(13978,30066),A(14105,30067),A(13979,30069))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14749,32742),A(14752,32744),A(14733,32740),A(14772,32741),A(14732,32743))
				
	set = SetCollector:AddSet(70000,nil,col,101,"DK_TR_MELEE_10",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12300,24551),A(12302,24553),A(12298,24549),A(12299,24550),A(12301,24552))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12569,25005),A(12567,25003),A(12571,25007),A(12570,25006),A(12568,25004))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12463,25190),A(12474,25192),A(12444,25188),A(12491,25189),A(12448,25191))
				
	set = SetCollector:AddSet(70000,nil,col,91,"DK_TR_MELEE_A_09",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11905,23576),A(11923,23579),A(11746,23577),A(11791,23580),A(11757,23578))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11905,23588),A(11923,23586),A(11746,23590),A(11791,23589),A(11757,23587))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11905,23583),A(11923,23585),A(11746,23581),A(11791,23582),A(11757,23584))
				
	set = SetCollector:AddSet(70000,nil,col,91,"DK_TR_MELEE_H_09",PLATE,DEATHKNIGHT,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11904,23603),A(11921,23605),A(11827,23601),A(11960,23602),A(11838,23604))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11904,23598),A(11921,23596),A(11827,23600),A(11960,23599),A(11838,23597))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11904,23593),A(11921,23595),A(11827,23591),A(11960,23592),A(11838,23594))
				
	set = SetCollector:AddSet(70000,nil,col,81,"DK_TR_MELEE_08",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11400,21810),A(11403,21812),A(11399,21808),A(11401,21809),A(11402,21811))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10325,22239),A(10328,22241),A(10326,22236),A(10329,22238),A(11644,22240))
				
	set = SetCollector:AddSet(70000,nil,col,71,"DK_TR_MELEE_07",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10191,18994),A(10193,18996),A(10189,18992),A(10190,18993),A(10192,18995))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10418,19521),A(10420,19524),A(10415,19518),A(10416,19519),A(10419,19523))
				
	--  CHALLENGE
	col = CHALLENGE
	set = SetCollector:AddSet(70000,nil,col,90,"DK_CD_90",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DK_CD_90",TRANSMOG,A(17954,46754),A(17956,46756),A(17952,46752),A(17957,46757),A(17953,46753),A(17950,46750),A(17955,46755),A(17951,46751))
				
	-- DUNGEON
	col = DUNGEON
				
	--  PVP
	col = PVP
	set = SetCollector:AddSet(70000,nil,col,19,"DK_PVP_19",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(29794,79580),A(29796,79582),A(29792,79577),A(29797,79584),A(29793,79579),A(29790,79583),A(29795,79581),A(29791,79578))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(29837,81427),A(29839,81429),A(29835,81424),A(29840,81431),A(29836,81426),A(29833,81430),A(29838,81428),A(29834,81425))
	set = SetCollector:AddSet(70000,nil,col,19,"DK_PVP_19",PLATE,DEATHKNIGHT,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(29821,79644),A(29823,79646),A(29819,79641),A(29824,79648),A(29820,79643),A(29817,79647),A(29822,79645),A(29818,79642))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(29837,81427),A(29839,81429),A(29835,81424),A(29840,81431),A(29836,81426),A(29833,81430),A(29838,81428),A(29834,81425))
				
	set = SetCollector:AddSet(70000,nil,col,18,"DK_PVP_18",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71615),A(25919,71617),A(25915,71613),A(25916,71614),A(25918,71616))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,71497),A(25919,71499),A(25915,71495),A(25916,71496),A(25918,71498))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26452,71336),A(26454,71338),A(26450,71334),A(26451,71335),A(26453,71337))
	set = SetCollector:AddSet(70000,nil,col,18,"DK_PVP_18",PLATE,DEATHKNIGHT,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,71993),A(25927,71995),A(25923,71991),A(25924,71992),A(25926,71994))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,71875),A(25927,71877),A(25923,71873),A(25924,71874),A(225926,71876))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26096,71714),A(26098,71716),A(26094,71712),A(26095,71713),A(26097,71715))
				
	set = SetCollector:AddSet(70000,nil,col,17,"DK_PVP_17",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,70704),A(25927,70706),A(25923,70702),A(25924,70703),A(25926,70705))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,70586),A(25927,70588),A(25923,70584),A(25924,70585),A(25926,70587))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26096,70425),A(26098,70427),A(26094,70423),A(26095,70424),A(26097,70426))
	set = SetCollector:AddSet(70000,nil,col,17,"DK_PVP_17",PLATE,DEATHKNIGHT,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71082),A(25919,71084),A(25915,71080),A(25916,71081),A(25918,71083))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,70964),A(25919,70966),A(25915,70962),A(25916,70963),A(25918,70965))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26452,70803),A(26454,70805),A(26450,70801),A(26451,70802),A(26453,70804))
				
	set = SetCollector:AddSet(70000,nil,col,16,"DK_PVP_16",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23971,64104),A(23973,64106),A(23969,64102),A(23970,64103),A(23972,64105))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23971,63986),A(23973,63988),A(23969,63984),A(23970,63985),A(23972,63987))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24141,64511),A(24143,64513),A(24139,64509),A(24140,64510),A(24142,64512))
	set = SetCollector:AddSet(70000,nil,col,16,"DK_PVP_16",PLATE,DEATHKNIGHT,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23979,67674),A(23981,67676),A(23977,67672),A(23978,67673),A(23980,67675))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23979,67569),A(23981,67571),A(23977,67567),A(23978,67568),A(23980,67570))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24150,60168),A(24152,60170),A(24148,60166),A(24149,60167),A(24151,60169))
				
	set = SetCollector:AddSet(70000,nil,col,15,"DK_PVP_MELEE_15",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20720,54886),A(20722,54835),A(20718,54856),A(20719,54833),A(20721,54834))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20704,55145),A(20706,55147),A(20702,55143),A(20703,55144),A(20700,55212),A(20705,55146),A(20701,55215))
	set = SetCollector:AddSet(70000,nil,col,15,"DK_PVP_MELEE_15",PLATE,DEATHKNIGHT,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20713,55480),A(20711,55478),A(20712,55479),A(20710,55477),A(20714,55481))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20704,55145),A(20706,55147),A(20702,55143),A(20703,55144),A(20700,55212),A(20705,55146),A(20701,55215))
				
	set = SetCollector:AddSet(70000,nil,col,14,"DK_PVP_MELEE_14",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20712,53374),A(20714,53378),A(20710,53370),A(20711,53372),A(20713,53376))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20704,53375),A(20706,53379),A(20702,53371),A(20703,53373),A(20705,53377))
	set = SetCollector:AddSet(70000,nil,col,14,"DK_PVP_MELEE_14",PLATE,DEATHKNIGHT,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20720,53754),A(20722,53703),A(20718,53724),A(20719,53701),A(20721,53702))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20704,53375),A(20706,53379),A(20702,53371),A(20703,53373),A(20705,53377))
	
	-- OTHER
	col = OTHER
	set = SetCollector:AddSet(70000,nil,col,1100,"DK_OTH_19",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DK_OTH_19",TRANSMOG,A(32543,80950),A(32545,80952),A(32541,80947),A(32546,80954),A(32542,80949),A(32539,80953),A(32544,80951),A(32540,80948))
	set = SetCollector:AddSet(70000,nil,col,0580,"DK_STARTER",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DK_STARTER",TRANSMOG,A(9034,16090),A(9036,16092),A(7003,16094),A(9032,16088),A(9035,16091),A(9031,16087),A(9033,16089),A(9037,16093),A(9030,16086))
	
end

function SetCollector:GetDemonHunterAppearances()
	local col = ""
	local set = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,50,"DK_LG_MELEE_110",LEATHER,DEMONHUNTER,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DK_LG_MELEE_110",TRANSMOG,A(8342,78746),A(11154,78718),A(21430,78775),A(19854,78714),A(16625,78726))
	set = SetCollector:AddSet(70000,nil,col,51,"DH_LG_TANK_110",LEATHER,DEMONHUNTER,TANK,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DH_LG_TANK_110",TRANSMOG,A(11787,78756),A(7741,78751),A(26599,78776),A(19854,78714),A(18100,80337))

	-- RAID
	col = RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,210,"DH_TR_21",LEATHER,DEMONHUNTER,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,200,"DH_TR_20",LEATHER,DEMONHUNTER,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,191,"DH_TR_19",LEATHER,DEMONHUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32020,81113),A(32022,81115),A(32100,81543),A(32018,81111),A(32019,81112),A(32021,81114))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(32004,80181),A(32006,80187),A(32208,81540),A(32002,80175),A(32003,80178),A(32005,80184))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(32012,80182),A(32014,80188),A(32220,81541),A(32010,80176),A(32011,80179),A(32013,80185))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31913,80183),A(31915,80189),A(32166,81542),A(31911,80177),A(31912,80180),A(31914,80186))
	
	-- DUNGEON
				
	--  PVP
	col = PVP
	set = SetCollector:AddSet(70000,nil,col,19,"DH_PVP_19",LEATHER,DEMONHUNTER,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(31988,79707),A(31990,79710),A(31986,79709),A(31991,79712),A(31987,79706),A(31984,79711),A(31989,79708),A(31985,79705))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(31930,79723),A(31932,79726),A(31928,79725),A(31933,79728),A(31929,79722),A(31926,79727),A(31931,79724),A(31927,79721))
	set = SetCollector:AddSet(70000,nil,col,19,"DH_PVP_19",LEATHER,DEMONHUNTER,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(31996,79715),A(31998,79718),A(31994,79717),A(31999,79720),A(31995,79714),A(31992,79719),A(31997,79716),A(31993,79713))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(31930,79723),A(31932,79726),A(31928,79725),A(31933,79728),A(31929,79722),A(31926,79727),A(31931,79724),A(31927,79721))
	
	-- OTHER
	col = OTHER
	set = SetCollector:AddSet(70000,nil,col,1100,"DH_OTH_19",LEATHER,DEMONHUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DH_OTH_19",TRANSMOG,A(32573,80990),A(32575,80992),A(32570,80987),A(32576,80994),A(32571,80989),A(32568,80993),A(32574,80991),A(32569,80988))
	set = SetCollector:AddSet(70000,nil,col,1000,"DH_STARTER",LEATHER,DEMONHUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DH_STARTER",TRANSMOG,A(28240),A(2352,60968),A(28242),A(28241),A(28237),A(28234),A(28239),A(28235),A(28700,60967),A(28700,73859))
				--SetCollector:AddVariant(70000,nil,col,set,"2",TRANSMOG,A(28238),A(27860),A(17491),A(27856),A(27861),A(27857),A(27854),A(27859),A(27855))
				--SetCollector:AddVariant(70000,nil,col,set,"3",TRANSMOG,A(27858))

end

function SetCollector:GetDruidAppearances()
	local col = ""
	local set = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,50,"DR_LG_CASTER_110",LEATHER,DRUID,CASTER,ANY)		-- Balance
				SetCollector:AddVariant(70000,nil,col,set,"DR_LG_CASTER_110",TRANSMOG,A(6935,78747,137062),A(13520,78719,137015),A(12554,78777,137092),A(19854,78714,133976),A(15543,78727,137023))
	set = SetCollector:AddSet(70000,nil,col,50,"DR_LG_MELEE_110",LEATHER,DRUID,MELEE,ANY)		-- Feral
				SetCollector:AddVariant(70000,nil,col,set,"DR_LG_MELEE_110",TRANSMOG,A(13520,78719,137015),A(25591,78741,137056),A(6468,78779,137094),A(19854,78714,133976),A(12217,78728,137024))
	set = SetCollector:AddSet(70000,nil,col,50,"DR_LG_TANK_110",LEATHER,DRUID,TANK,ANY)			-- Guardian
				SetCollector:AddVariant(70000,nil,col,set,"DR_LG_TANK_110",TRANSMOG,A(13520,78719,137015),A(25591,78741,137056),A(19854,78714,133976),A(17323,78752,137067),A(5689,78729,137025))
	set = SetCollector:AddSet(70000,nil,col,50,"DR_LG_HEALER_110",LEATHER,DRUID,HEALER,ANY)			-- Restoration
				SetCollector:AddVariant(70000,nil,col,set,"DR_LG_HEALER_110",TRANSMOG,A(20969,78757,137072),A(13520,78719,137015),A(27243,78780,137095),A(19027,78763,137078),A(25585,78730,137026))

	-- RAID
	col = RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,210,"DR_TR_21",LEATHER,DRUID,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,200,"DR_TR_20",LEATHER,DRUID,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,191,"DR_TR_19",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32072,81092),A(32074,81094),A(32221,81558),A(32076,81090),A(32071,81091),A(32073,81093))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(30740,79832),A(30742,79850),A(31035,80486),A(30744,79814),A(30739,79823),A(30741,79841))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(30731,79833),A(30733,79851),A(31024,81557),A(30735,79815),A(30730,79824),A(30732,79842))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(30696,79834),A(30698,79852),A(30819,81095),A(30700,79816),A(30695,79825),A(30697,79843))
				
	set = SetCollector:AddSet(70000,nil,col,181,"DR_TR_18",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(25588,69761),A(25590,69799),A(25592,69707),A(25587,69740),A(25584,69808),A(25589,69782),A(25585,69716))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(25579,69762),A(25581,69800),A(25583,69708),A(25578,69741),A(25575,69810),A(25580,69783),A(25576,69718))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25619,69763),A(25621,69801),A(25622,69709),A(25618,69742),A(25612,69811),A(25620,69784),A(25613,69719))
				
	set = SetCollector:AddSet(70000,nil,col,171,"DR_TR_17",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23649,64432),A(23651,64434),A(23653,67121),A(23648,64431),A(23650,64433))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23668,67124),A(23670,67128),A(23672,67120),A(23667,67122),A(23669,67126))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23658,67970),A(23661,67129),A(23653,67121),A(23657,67123),A(23660,67127))
	
	set = SetCollector:AddSet(70000,nil,RAID,16,"DR_TR_CASTER_16",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,A(20899,52276,98995),A(20888,52279,98998),A(20900,52278,98997),A(20898,52275,98994),A(20891,52277,98996))
				SetCollector:AddVariant(60000,nil,RAID,set,"NORMAL",TRANSMOG,A(20979,52899,99618),A(20981,52902,99621),A(20984,52901,99620),A(20978,52898,99617),A(20980,52900,99619))
				SetCollector:AddVariant(60000,nil,RAID,set,"HEROIC",TRANSMOG,A(20979,52456,99175),A(20981,52450,99169),A(20984,52458,99177),A(20978,52455,99174),A(20980,52457,99176))
				SetCollector:AddVariant(60000,nil,RAID,set,"MYTHIC",TRANSMOG,A(21006,52714,99433),A(21000,52709,99428),A(21004,52708,99427),A(21005,52713,99432),A(21007,52715,99434))

	--[[set = SetCollector:AddSet(70000,nil,RAID,16,"DR_TR_MELEE_16",LEATHER,DRUID,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,99043,99022,99041,99042,99044)
				SetCollector:AddVariant(60000,nil,RAID,set,"NORMAL",TRANSMOG,99599,99589,99632,99633,99600)
				SetCollector:AddVariant(60000,nil,RAID,set,"HEROIC",TRANSMOG,99182,99184,99180,99181,99183)
				SetCollector:AddVariant(60000,nil,RAID,set,"MYTHIC",TRANSMOG,99328,99322,99326,99327,99329)

	set = SetCollector:AddSet(70000,nil,RAID,16,"DR_TR_TANK_16",LEATHER,DRUID,TANK,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,99001,98978,98999,99000,98981)
				SetCollector:AddVariant(60000,nil,RAID,set,"NORMAL",TRANSMOG,99624,99664,99622,99623,99610)
				SetCollector:AddVariant(60000,nil,RAID,set,"HEROIC",TRANSMOG,99164,99166,99170,99163,99165)
				SetCollector:AddVariant(60000,nil,RAID,set,"MYTHIC",TRANSMOG,99421,99423,99419,99420,99422)

	set = SetCollector:AddSet(70000,nil,RAID,16,"DR_TR_HEALER_16",LEATHER,DRUID,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,99013,99016,99015,99012,99014)
				SetCollector:AddVariant(60000,nil,RAID,set,"NORMAL",TRANSMOG,99638,99583,99582,99637,99581)
				SetCollector:AddVariant(60000,nil,RAID,set,"HEROIC",TRANSMOG,99178,99173,99172,99185,99171)
				SetCollector:AddVariant(60000,nil,RAID,set,"MYTHIC",TRANSMOG,99436,99431,99430,99435,99429)]]--

	set = SetCollector:AddSet(70000,nil,RAID,15,"DR_TR_CASTER_15",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,A(19849,50341,95846),A(19852,50344,95849),A(19851,50343,95848),A(19848,50340,95845),A(19850,50342,95847))
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(19858,49988,95246),A(19861,49991,95249),A(19860,49990,95248),A(19857,49987,95245),A(19859,49989,95247))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(19840,50965,96590),A(19842,50968,96593),A(19844,50967,96592),A(19839,50964,96589),A(19841,50966,96591))

	--[[set = SetCollector:AddSet(70000,nil,RAID,15,"DR_TR_MELEE_15",LEATHER,DRUID,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,95837,95839,95835,95836,95838)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,95237,95239,95235,95236,95238)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,96581,96583,96579,96580,96582)

	set = SetCollector:AddSet(70000,nil,RAID,15,"DR_TR_TANK_15",LEATHER,DRUID,TANK,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,95852,95854,95850,95851,95853)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,95252,95254,95250,95251,95253)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,96596,96598,96594,96595,96597)

	set = SetCollector:AddSet(70000,nil,RAID,15,"DR_TR_HEALER_15",LEATHER,DRUID,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,95841,95844,95843,95840,95842)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,95241,95244,95243,95240,95242)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,96585,96588,96587,96584,96586)]]--

	set = SetCollector:AddSet(70000,nil,RAID,14,"DR_TR_CASTER_14",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,A(18973,44545,86647),A(18970,44542,86644),A(18971,44543,86645),A(18974,44546,86648),A(18972,44594,86696))
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(18577,43665,85307),A(18574,43662,85304),A(18575,43663,85305),A(18578,43666,85308),A(18576,43714,85356))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(19041,44796,86934),A(19043,44799,86937),A(19039,44798,86936),A(19040,44795,86933),A(19042,44792,86930))
	
	--[[set = SetCollector:AddSet(70000,nil,RAID,14,"DR_TR_MELEE_14",LEATHER,DRUID,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,86651,86649,86653,86652,86650)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,85311,85309,85313,85312,85310)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,86925,86927,86923,86924,86926)
	
	set = SetCollector:AddSet(70000,nil,RAID,14,"DR_TR_TANK_14",LEATHER,DRUID,TANK,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,86721,86723,86719,86720,86722)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,85381,85383,85379,85380,85382)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,86940,86942,86938,86939,86941)
	
	set = SetCollector:AddSet(70000,nil,RAID,14,"DR_TR_HEALER_14",LEATHER,DRUID,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,86697,86694,86695,86698,86646)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,85357,85354,85355,85358,85306)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,86929,86932,86931,86928,86935)]]--
	
	set = SetCollector:AddSet(70000,nil,RAID,13,"DR_TR_CASTER_13",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,A(16628,40128,78791),A(16631,40176,78839),A(16630,40094,78757),A(16627,40108,78771),A(16629,40146,78809))
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(16635,38840,77019),A(16633,38843,77022),A(16634,38842,77021),A(16636,38839,77018),A(15984,38841,77020))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(16618,40033,78696),A(16613,40081,78744),A(16623,39999,78662),A(16615,40013,78676),A(16614,40051,78714))

	--[[set = SetCollector:AddSet(70000,nil,RAID,13,"DR_TR_MELEE_13",LEATHER,DRUID,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,78789,78838,78760,78779,78808)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,77015,77017,77013,77014,77016)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,78694,78743,78665,78684,78713)

	set = SetCollector:AddSet(70000,nil,RAID,13,"DR_TR_HEALER_13",LEATHER,DRUID,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,78785,78835,78755,78775,78805)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,76750,76753,76752,76749,76751)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,78690,78740,78660,78680,78710)]]--
	
	set = SetCollector:AddSet(70000,nil,RAID,12,"DR_TR_CASTER_12",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(15829,36466,71108),A(15826,36469,71111),A(15820,36468,71110),A(15534,36465,71107),A(15836,36467,71109))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(15856,36724,71497),A(15860,36727,71500),A(15857,36726,71499),A(15858,36723,71496),A(15859,36725,71498))

	--[[set = SetCollector:AddSet(70000,nil,RAID,12,"DR_TR_MELEE_12",LEATHER,DRUID,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,71098,71101,71100,71097,71099)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,71488,71490,71486,71487,71489)

	set = SetCollector:AddSet(70000,nil,RAID,12,"DR_TR_HEALER_12",LEATHER,DRUID,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,71103,71106,71105,71102,71104)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,71492,71495,71494,71491,71493)]]--
	
	set = SetCollector:AddSet(70000,nil,RAID,11,"DR_TR_CASTER_11",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(13975,30018,60282),A(13962,30020,60284),A(13991,30017,60281),A(14051,30021,60285),A(14002,30019,60283))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(14737,32761,65200),A(14706,32764,65203),A(14725,32763,65202),A(14753,32760,65199),A(14714,32762,65201))

	--[[set = SetCollector:AddSet(70000,nil,RAID,11,"DR_TR_MELEE_11",LEATHER,DRUID,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,60286,60289,60287,60290,60288)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,65190,65193,65192,65189,65191)

	set = SetCollector:AddSet(70000,nil,RAID,11,"DR_TR_HEALER_11",LEATHER,DRUID,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,60277,60279,60276,60280,60278)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,65195,65198,65197,65194,65196)]]--

	set = SetCollector:AddSet(70000,nil,RAID,10,"DR_TR_CASTER_10",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"VENDOR",TRANSMOG,A(12306,24900,50821),A(12308,24898,50819),A(12304,24902,50823),A(12305,24901,50822),A(12307,24899,50820))
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(12262,25027,51149),A(12340,25025,51147),A(12572,25023,51145),A(12239,25026,51148),A(12221,25024,51146))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(12484,25168,51290),A(12506,25170,51292),A(12598,25172,51294),A(12450,25169,51291),A(12494,25171,51293))

	--[[set = SetCollector:AddSet(70000,nil,RAID,10,"DR_TR_MELEE_10",LEATHER,DRUID,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"VENDOR",TRANSMOG,50826,50824,50828,50827,50825)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,51143,51140,51141,51144,51142)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,51296,51299,51298,51295,51297)

	set = SetCollector:AddSet(70000,nil,RAID,10,"DR_TR_HEALER_10",LEATHER,DRUID,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"VENDOR",TRANSMOG,50108,50113,50106,50107,50109)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,51137,51135,51139,51138,51136)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,51302,51304,51300,51301,51303)]]--
	
	set = SetCollector:AddSet(70000,nil,RAID,9,"DR_TR_CASTER_A_09",LEATHER,DRUID,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,RAID,set,"VENDOR",TRANSMOG,A(11915,23288,48158),A(11896,23291,48161),A(11751,23289,48159),A(11984,23292,48162),A(11777,23290,48160))
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(11915,23294,48164),A(11896,23297,48167),A(11751,23296,48166),A(11984,23293,48163),A(11777,23295,48165))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(11915,23301,48171),A(11896,23298,48168),A(11751,23299,48169),A(11984,23302,48172),A(11777,23300,48170))

	--[[set = SetCollector:AddSet(70000,nil,RAID,9,"DR_TR_MELEE_A_09",LEATHER,DRUID,MELEE,ALLIANCE)
				SetCollector:AddVariant(70000,nil,RAID,set,"VENDOR",TRANSMOG,48214,48217,48216,48213,48215)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,48211,48208,48209,48212,48210)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,48204,48207,48206,48203,48205)

	set = SetCollector:AddSet(70000,nil,RAID,9,"DR_TR_HEALER_A_09",LEATHER,DRUID,HEALER,ALLIANCE)
				SetCollector:AddVariant(70000,nil,RAID,set,"VENDOR",TRANSMOG,48102,48131,48129,48132,48130)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,48134,48137,48136,48133,48135)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,48141,48138,48139,48142,48140)]]--
	
	set = SetCollector:AddSet(70000,nil,RAID,9,"DR_TR_CASTER_H_09",LEATHER,DRUID,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,RAID,set,"VENDOR",TRANSMOG,A(11916,23318,48174),A(11931,23321,48177),A(11829,23319,48176),A(11985,23322,48173),A(11858,23320,48175))
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(11916,23324,48181),A(11931,23327,48178),A(11829,23326,48179),A(11985,23323,48182),A(11858,23325,48180))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(11916,23331,48184),A(11931,23328,48187),A(11829,23329,48186),A(11985,23332,48183),A(11858,23330,48185))

	--[[set = SetCollector:AddSet(70000,nil,RAID,9,"DR_TR_MELEE_H_09",LEATHER,DRUID,MELEE,HORDE)
				SetCollector:AddVariant(70000,nil,RAID,set,"VENDOR",TRANSMOG,48188,48191,48189,48192,48190)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,48194,48197,48196,48193,48195)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,48201,48198,48199,48202,48200)

	set = SetCollector:AddSet(70000,nil,RAID,9,"DR_TR_HEALER_H_09",LEATHER,DRUID,HEALER,HORDE)
				SetCollector:AddVariant(70000,nil,RAID,set,"VENDOR",TRANSMOG,48154,48157,48156,48153,48155)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,48151,48148,48149,48152,48150)
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,48144,48147,48146,48143,48145)]]--

	set = SetCollector:AddSet(70000,nil,RAID,8,"DR_TR_CASTER_08",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER10",TRANSMOG,A(11405,22428,46313),A(11408,21820,45352),A(11407,21822,45354),A(11404,21819,45351),A(11406,21821,45353))
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER25",TRANSMOG,A(11673,22311,46191),A(11669,22316,46196),A(11671,22314,46194),A(11670,22309,46189),A(11672,22312,46192))
	
	--[[set = SetCollector:AddSet(70000,nil,RAID,8,"DR_TR_MELEE_08",LEATHER,DRUID,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER10",TRANSMOG,45356,45359,45358,45355,45357)
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER25",TRANSMOG,46161,46157,46159,46158,46160)

	set = SetCollector:AddSet(70000,nil,RAID,8,"DR_TR_HEALER_08",LEATHER,DRUID,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER10",TRANSMOG,45346,45349,45348,45345,45347)
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER25",TRANSMOG,46184,46187,46186,46183,46185)]]--
	
	set = SetCollector:AddSet(70000,nil,RAID,7,"DR_TR_CASTER_07",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER10",TRANSMOG,A(10162,18948,39545),A(10165,18951,39548),A(10167,18950,39547),A(10166,18947,39544),A(10164,18949,39546))
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER25",TRANSMOG,A(10378,19450,40467),A(10382,19453,40470),A(10380,19452,40469),A(10377,19449,40466),A(10379,19451,40468))
	
	--[[set = SetCollector:AddSet(70000,nil,RAID,7,"DR_TR_MELEE_07",LEATHER,DRUID,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER10",TRANSMOG,39553,39556,39554,39557,39555)
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER25",TRANSMOG,40473,40494,40471,40472,40493)

	set = SetCollector:AddSet(70000,nil,RAID,7,"DR_TR_HEALER_07",LEATHER,DRUID,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER10",TRANSMOG,39531,39542,39538,39543,39539)
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER25",TRANSMOG,40461,40465,40463,40460,40462)]]--
	
	--[[set = SetCollector:AddSet(70000,nil,RAID,6,"DR_TR_MELEE_06",LEATHER,DRUID,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"DR_TR_MELEE_06",TRANSMOG,31039,31048,31042,34444,31034,34556,31044,34573)
				
	set = SetCollector:AddSet(70000,nil,RAID,6,"DR_TR_HEALER_06",LEATHER,DRUID,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"DR_TR_HEALER_06",TRANSMOG,31037,31047,31041,34445,31032,34554,31045,34571)]]--
				
	set = SetCollector:AddSet(70000,nil,RAID,6,"DR_TR_CASTER_06",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"DR_TR_CASTER_06",TRANSMOG,A(8087,14108,31040),A(8091,14117,31049),A(8088,14111,31043),A(8962,15974,34446),A(8086,14103,31035),A(9000,16036,34555),A(8089,14114,31046),A(9009,16053,34572))
	
	--[[set = SetCollector:AddSet(70000,nil,RAID,5,"DR_TR_MELEE_05",LEATHER,DRUID,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"DR_TR_MELEE_05",TRANSMOG,30228,30230,30222,30223,30229)
	
	set = SetCollector:AddSet(70000,nil,RAID,5,"DR_TR_HEALER_05",LEATHER,DRUID,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"DR_TR_HEALER_05",TRANSMOG,30219,30221,30216,30217,30220)]]--
	
	set = SetCollector:AddSet(70000,nil,RAID,5,"DR_TR_CASTER_05",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"DR_TR_CASTER_05",TRANSMOG,A(7858,13651,30233),A(7860,13653,30235),A(7856,13649,30231),A(7857,13650,30232),A(7859,13652,30234))
	
	--[[set = SetCollector:AddSet(70000,nil,RAID,4,"DR_TR_MELEE_04",LEATHER,DRUID,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"DR_TR_MELEE_04",TRANSMOG,29098,29100,29096,29097,29099)
	
	set = SetCollector:AddSet(70000,nil,RAID,4,"DR_TR_HEALER_04",LEATHER,DRUID,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"DR_TR_HEALER_04",TRANSMOG,29086,29089,29087,29090,29088)]]--
	
	set = SetCollector:AddSet(70000,nil,RAID,4,"DR_TR_CASTER_04",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"DR_TR_CASTER_04",TRANSMOG,A(7467,12969,29093),A(7470,12971,29095),A(7468,12967,29091),A(7471,12968,29092),A(7469,12970,29094))
	
	set = SetCollector:AddSet(70000,nil,RAID,3,"DR_TR_03",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"DR_TR_03",TRANSMOG,A(6017,8866,22490),A(6018,8867,22491),A(6015,8864,22488),A(6022,8871,22495),A(6020,8869,22493),A(6021,8870,22494),A(6016,8865,22489),A(6019,8868,22492),A(nil,nil,23064))
	
	set = SetCollector:AddSet(70000,nil,RAID,2,"DR_TR_02",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"DR_TR_02",TRANSMOG,A(5024,6964,16900),A(5026,6966,16902),A(5021,6961,16897),A(5028,6968,16904),A(5023,6963,16899),A(5027,6967,16903),A(5025,6965,16901),A(5022,6962,16898))
	
	set = SetCollector:AddSet(70000,nil,RAID,1,"DR_TR_01",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"DR_TR_01",TRANSMOG,A(4979,6919,16834),A(4981,6921,16836),A(4978,6918,16833),A(4975,6915,16830),A(4976,6916,16831),A(4973,6913,16828),A(4980,6920,16835),A(4974,6914,16829))
	
	-- Challenge Dungeon Sets
	set = SetCollector:AddSet(70000,nil,CHALLENGE,1,"DR_CD_90",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,CHALLENGE,set,"DR_CD_90",TRANSMOG,A(17870,46761,90062),A(17875,46764,90065),A(17877,46763,90064),A(17876,46765,90066),A(17873,46760,90061),A(17869,46758,90059),A(17874,46762,90063),A(17871,46759,90060))

	-- Dungeon Sets
	set = SetCollector:AddSet(70000,nil,DUNGEON,30,"DR_DG_03",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"DR_DG_03",TRANSMOG,A(7162,12416,28348),A(6923,12028,27737),A(7080,12324,28202),A(6855,11916,27468),A(6998,12118,27873))
				
	set = SetCollector:AddSet(70000,nil,DUNGEON,22,"DR_DG_AQ_2",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"DR_DG_AQ_2",TRANSMOG,A(5687,8384,21353),A(5688,8385,21354),A(5691,8388,21357),A(5690,8387,21356),A(5689,8386,21355))
				
	set = SetCollector:AddSet(70000,nil,DUNGEON,21,"DR_DG_AQ_1",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"DR_DG_AQ_1",TRANSMOG,A(5715,8419,21407),A(2979,8420,21409)) --,A(nil,nil,21408))
				
	set = SetCollector:AddSet(70000,nil,DUNGEON,20,"DR_DG_02",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"REPLICA",TRANSMOG,A(5929,39654,78249),A(5932,39652,78247),A(5933,39657,78252),A(5928,39658,78253),A(5930,39653,78248),A(5926,39651,78246),A(5931,39655,78250),A(5927,39656,78251))
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"ORIGINAL",TRANSMOG,A(5929,8723,22109),A(5932,8726,22112),A(5933,8727,22113),A(5928,8722,22108),A(5930,8724,22110),A(5926,8720,22106),A(5931,8725,22111),A(5927,8721,22107))
				
	set = SetCollector:AddSet(70000,nil,DUNGEON,10,"DR_DG_01",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"REPLICA",TRANSMOG,A(4920,39643,78238),A(4918,39644,78239),A(4908,39647,78242),A(4914,39645,78240),A(4917,39646,78241),A(4916,39649,78244),A(4919,39650,78245),A(4915,39648,78243))
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"ORIGINAL",TRANSMOG,A(4920,6851,16720),A(4918,6849,16718),A(4908,6837,16706),A(4914,6845,16714),A(4917,6848,16717),A(4916,6847,16716),A(4919,6850,16719),A(4915,6846,16715))

	-- PvP
	col = PVP
	set = SetCollector:AddSet(70000,nil,col,19,"DR_PVP_19",LEATHER,DRUID,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(30705,79587),A(30707,79590),A(30709,79589),A(30708,79592),A(30704,79586),A(30701,79591),A(30706,79588),A(30702,79585))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(30687,81442),A(30689,81445),A(30685,81444),A(30690,81447),A(30686,81441),A(30683,81446),A(30688,81443),A(30684,81440))
	set = SetCollector:AddSet(70000,nil,col,19,"DR_PVP_19",LEATHER,DRUID,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(30722,79651),A(30724,79654),A(30726,79653),A(30725,79656),A(30720,79650),A(30718,79655),A(30723,79652),A(30719,79649))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(30687,81442),A(30689,81445),A(30685,81444),A(30690,81447),A(30686,81441),A(30683,81446),A(30688,81443),A(30684,81440))
				
	set = SetCollector:AddSet(70000,nil,PVP,18,"DR_PVP_18",LEATHER,DRUID,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25974,71619,126190),A(25976,71622,126193),A(25972,71621,126192),A(25973,71618,126189),A(25975,71620,126191))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25974,71501,126033),A(25976,71504,126036),A(25972,71503,126035),A(25973,71500,126032),A(25975,71502,126034))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25570,71340,125831),A(25572,71343,125834),A(25574,71342,125833),A(25569,71339,125830),A(25571,71341,125832))
				
	set = SetCollector:AddSet(70000,nil,PVP,18,"DR_PVP_18",LEATHER,DRUID,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25965,71997,126667),A(25967,72000,126670),A(25963,71999,126669),A(25964,71996,126666),A(25966,71998,126668))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25965,71879,126510),A(25967,71882,126513),A(25963,71881,126512),A(25964,71878,126509),A(25966,71880,126511))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25561,71718,126310),A(25563,71721,126313),A(25565,71720,126312),A(25560,71717,126309),A(25562,71719,126311))
				
	set = SetCollector:AddSet(70000,nil,PVP,17,"DR_PVP_17",LEATHER,DRUID,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25965,70708,125076),A(25967,70711,125079),A(25963,70710,125078),A(25964,70707,125075),A(25966,70709,125077))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25965,70590,124919),A(25967,70593,124922),A(25963,70592,124921),A(25964,70589,124918),A(25966,70591,124920))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25561,70429,124717),A(25563,70432,124720),A(25565,70431,124719),A(25560,70428,124716),A(25562,70430,124718))
				
	set = SetCollector:AddSet(70000,nil,PVP,17,"DR_PVP_17",LEATHER,DRUID,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25974,71086,125553),A(25976,71089,125556),A(25972,71088,125555),A(25973,71085,125552),A(25975,71087,125554))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25974,70968,125396),A(25976,70971,125399),A(25972,70970,125398),A(25973,70967,125395),A(25975,70969,125397))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25570,70807,125196),A(25572,70810,125199),A(25574,70809,125198),A(25569,70806,125195),A(25571,70808,125197))
				
	set = SetCollector:AddSet(70000,nil,PVP,16,"DR_PVP_16",LEATHER,DRUID,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(23785,64108,115203),A(23787,64111,115206),A(23783,64110,115205),A(23784,64107,115202),A(23786,64109,115204))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(23785,63990,115055),A(23787,63993,115058),A(23783,63992,115057),A(23784,63989,115054),A(23786,63991,115056))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(24738,64515,115635),A(24740,64518,115638),A(24742,64517,115637),A(24737,64514,115634),A(24739,64516,115636))
				
	set = SetCollector:AddSet(70000,nil,PVP,16,"DR_PVP_16",LEATHER,DRUID,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(23793,67678,119980),A(23795,67681,119983),A(23791,67680,119982),A(23792,67677,119979),A(23794,67679,119981))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(23793,67573,119845),A(23795,67576,119848),A(23791,67575,119847),A(23792,67572,119844),A(23794,67574,119846))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,111108,111111,111110,111107,111109)
				
	--[[set = SetCollector:AddSet(70000,nil,PVP,15,"DR_PVP_MELEE_15",LEATHER,DRUID,MELEE,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ALLIANCE",TRANSMOG,A(20849,54822,102653),A(20854,54875,102741),A(20856,54805,102740),A(20852,54872,102739),A(20853,54933,102645))
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(20831,55164,103010),A(20836,55167,103013),A(20838,55166,103012),A(20834,55163,103009),A(20830,55161,103138),A(20835,55165,103011),A(20832,55162,103137))
				
	set = SetCollector:AddSet(70000,nil,PVP,15,"DR_PVP_HEALER_15",LEATHER,DRUID,HEALER,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ALLIANCE",TRANSMOG,102776,102658,102721,102657,102761)
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,103017,103020,103019,103016,103014,103018,103015)]]--
				
	set = SetCollector:AddSet(70000,nil,PVP,15,"DR_PVP_CASTER_15",LEATHER,DRUID,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ALLIANCE",TRANSMOG,A(20849,54822,102634),A(20854,54875,102700),A(20856,54805,102614),A(20852,54872,102696),A(20853,54933,102767))
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(20831,55164,103025),A(20836,55167,103028),A(20838,55166,103027),A(20834,55163,103024),A(20830,55161,103022),A(20835,55165,103026),A(20832,55162,103023))
				
	--[[set = SetCollector:AddSet(70000,nil,PVP,15,"DR_PVP_MELEE_15",LEATHER,DRUID,MELEE,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"HORDE",TRANSMOG,103381,103382,103383,103384,103385)
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,103012,103009,103010,103011,103013,103137,103138)
				
	set = SetCollector:AddSet(70000,nil,PVP,15,"DR_PVP_HEALER_15",LEATHER,DRUID,HEALER,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"HORDE",TRANSMOG,103389,103390,103391,103392,103393)
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,103017,103014,103015,103016,103018,103019,103020)]]--
				
	set = SetCollector:AddSet(70000,nil,PVP,15,"DR_PVP_CASTER_15",LEATHER,DRUID,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"HORDE",TRANSMOG,A(20840,55483,103399),A(20845,55486,103402),A(20847,55485,103401),A(20843,55482,103398),A(20844,55484,103400))
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(20831,55164,103025),A(20836,55167,103028),A(20838,55166,103027),A(20834,55163,103024),A(20830,55161,103022),A(20835,55165,103026),A(20832,55162,103023))
				
	--[[set = SetCollector:AddSet(70000,nil,PVP,14,"DR_PVP_MELEE_14",LEATHER,DRUID,MELEE,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ALLIANCE",TRANSMOG,100255,100261,100259,100253,100257)
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,100256,100262,100260,100254,100258)
				
	set = SetCollector:AddSet(70000,nil,PVP,14,"DR_PVP_HEALER_14",LEATHER,DRUID,HEALER,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ALLIANCE",TRANSMOG,100270,100276,100274,100268,100272)
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,100271,100277,100275,100269,100273)]]--
				
	set = SetCollector:AddSet(70000,nil,PVP,14,"DR_PVP_CASTER_14",LEATHER,DRUID,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ALLIANCE",TRANSMOG,A(20840,53414,100287),A(20845,53420,100293),A(20847,53418,100291),A(20843,53412,100285),A(20844,53416,100289))
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(20831,53415,100288),A(20836,53421,100294),A(20838,53419,100292),A(20834,53413,100286),A(20835,53417,100290))
				
	--[[set = SetCollector:AddSet(70000,nil,PVP,14,"DR_PVP_MELEE_14",LEATHER,DRUID,MELEE,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"HORDE",TRANSMOG,100597,100687,100686,100685,100598)
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,100256,100262,100260,100254,100258)
				
	set = SetCollector:AddSet(70000,nil,PVP,14,"DR_PVP_HEALER_14",LEATHER,DRUID,HEALER,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"HORDE",TRANSMOG,100722,100602,100667,100601,100707)
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,100271,100277,100275,100269,100273)]]--
				
	set = SetCollector:AddSet(70000,nil,PVP,14,"DR_PVP_CASTER_14",LEATHER,DRUID,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"HORDE",TRANSMOG,A(20849,53690,100577),A(20854,53743,100646),A(20856,53673,100557),A(20852,53740,100642),A(20853,53801,100713))
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(20831,53415,100288),A(20836,53421,100294),A(20838,53419,100292),A(20834,53413,100286),A(20835,53417,100290))
	
	-- OTHER
	col = OTHER
	set = SetCollector:AddSet(70000,nil,col,1100,"DR_OTH_19",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DR_OTH_19",TRANSMOG,A(32481,80998),A(32483,81000),A(32479,80995),A(32484,81002),A(32480,80997),A(32477,81001),A(32482,80999),A(32478,80996))
	
end

function SetCollector:GetHunterAppearances()
	local col = ""
	local set = ""
	
	-- LEGENDARY
	local col = LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,52,"HU_LG_RANGED_110",MAIL,HUNTER,RANGED,ANY)		-- Beastmastery
				SetCollector:AddVariant(70000,nil,col,set,"HU_LG_RANGED_110",TRANSMOG,A(8610,78749,137064),A(16241,78786,137101),A(16240,78765,137080),A(8006,76319,132466),A(21190,78889,137227))
	set = SetCollector:AddSet(70000,nil,col,50,"HU_LG_RANGED_110",MAIL,HUNTER,RANGED,ANY)		-- Marksmanship
				SetCollector:AddVariant(70000,nil,col,set,"HU_LG_RANGED_110",TRANSMOG,A(8610,78749,137064),A(15732,82382,141353),A(12489,78766,137081),A(8006,76319,132466),A(12609,78737,137033))
	set = SetCollector:AddSet(70000,nil,col,51,"HU_LG_MELEE_110",MAIL,HUNTER,MELEE,ANY)			-- Survival
				SetCollector:AddVariant(70000,nil,col,set,"HU_LG_MELEE_110",TRANSMOG,A(8610,78749,137064),A(16241,78786,137101),A(5429,78767,137082),A(8006,76319,132466),A(8348,78738,137034))

	-- RAID
	col = RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,210,"HU_TR_21",MAIL,HUNTER,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,200,"HU_TR_20",MAIL,HUNTER,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())

	set = SetCollector:AddSet(70000,nil,col,191,"HU_TR_19",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(31867,81076),A(31869,81078),A(32112,81079),A(31865,81074),A(31866,81075),A(31868,81077))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(29758,79868),A(29760,79883),A(30050,81552),A(29755,79859),A(29757,79862),A(29759,79874))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(29766,79869),A(29768,79884),A(30075,81553),A(29764,79860),A(29765,79863),A(29767,79875))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29904,79870),A(29905,79885),A(30129,81554),A(29902,79861),A(29903,79864),A(29906,79876))
				
	set = SetCollector:AddSet(70000,nil,col,181,"HU_TR_18",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(25749,69886),A(25751,69925),A(25747,69843),A(25748,69872),A(25745,69935),A(25750,69904),A(25746,69846))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(25741,69887),A(25743,69926),A(25739,69844),A(25740,69873),A(25737,69937),A(25742,69905),A(25738,69847))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25716,69888),A(25719,69927),A(25714,69845),A(25715,69874),A(25712,69938),A(25718,69906),A(25713,69848))
	
	set = SetCollector:AddSet(60000,nil,RAID,171,"HU_TR_17",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(60000,nil,RAID,set,"NORMAL",TRANSMOG,A(23777,64435,115545),A(23779,64437,115547),A(23775,64438,115548),A(23776,64439,115549),A(23778,64436,115546))
				SetCollector:AddVariant(60000,nil,RAID,set,"HEROIC",TRANSMOG,A(23769,67205,115545),A(23771,67209,115547),A(23767,67211,115548),A(23768,67213,115549),A(23770,67207,115546))
				SetCollector:AddVariant(60000,nil,RAID,set,"MYTHIC",TRANSMOG,A(23914,67206,115545),A(23920,67210,115547),A(23912,67212,115548),A(23913,67214,115549),A(23919,67208,115546))
				
	set = SetCollector:AddSet(70000,nil,RAID,160,"HU_TR_RANGED_16",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,A(20935,52361,99080),A(20937,52363,99082),A(20940,52366,99085),A(20941,52367,99086),A(20936,52362,99081))
				SetCollector:AddVariant(60000,nil,RAID,set,"NORMAL",TRANSMOG,A(20972,52941,99660),A(20974,52855,99574),A(20982,52858,99577),A(20983,52859,99578),A(20973,52854,99573))
				SetCollector:AddVariant(60000,nil,RAID,set,"HEROIC",TRANSMOG,A(20972,52438,99157),A(20974,52440,99159),A(20982,52448,99167),A(20983,52449,99168),A(20973,52439,99158))
				SetCollector:AddVariant(60000,nil,RAID,set,"MYTHIC",TRANSMOG,A(21040,52683,99402),A(21042,52685,99404),A(21043,52686,99405),A(21044,52687,99406),A(21041,52684,99403))

	set = SetCollector:AddSet(70000,nil,RAID,150,"HU_TR_RANGED_15",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,A(19912,50373,95884),A(19914,50375,95886),A(19910,50371,95882),A(19911,50372,95883),A(19913,50374,95885))
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(19920,49999,95257),A(19922,50001,95259),A(19918,49997,95255),A(19919,49998,95256),A(19921,50000,95258))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(19928,50997,96628),A(19930,50999,96630),A(19926,50995,96626),A(19927,50996,96627),A(19929,50998,96629))

	set = SetCollector:AddSet(70000,nil,RAID,140,"HU_TR_RANGED_14",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,A(18964,44534,86636),A(18962,44532,86634),A(18965,44536,86638),A(18714,44535,86637),A(18963,44533,86635))
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(18566,43654,85296),A(18564,43652,85294),A(18568,43656,85298),A(18567,43655,85297),A(18565,43653,85295))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(19063,44857,87004),A(19065,44859,87006),A(19061,44855,87002),A(19062,44856,87003),A(19064,44858,87005))

	set = SetCollector:AddSet(70000,nil,RAID,130,"HU_TR_RANGED_13",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"RAIDFINDER",TRANSMOG,A(16852,40130,78793),A(16855,40169,78832),A(16850,40093,78756),A(16857,40106,78769),A(16854,40141,78804))
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(16845,38851,77030),A(16847,38853,77032),A(16844,38849,77028),A(16849,38850,77029),A(15985,38852,77031))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(16816,40035,78698),A(16819,40074,78737),A(16814,39998,78661),A(16821,40011,78674),A(16818,40046,78709))

	set = SetCollector:AddSet(70000,nil,RAID,120,"HU_TR_RANGED_12",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(15722,36421,71051),A(15723,36423,71053),A(15721,36424,71054),A(15531,36420,71050),A(15637,36422,71052))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(15729,36730,71503),A(15731,36732,71505),A(15727,36728,71501),A(15728,36729,71502),A(15730,36731,71504))

	set = SetCollector:AddSet(70000,nil,RAID,110,"HU_TR_RANGED_11",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(14048,30035,60303),A(13964,30038,60306),A(13949,30036,60304),A(14033,30039,60307),A(13988,30037,60305))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(14757,32767,65206),A(14743,32769,65208),A(14718,32765,65204),A(14767,32766,65205),A(14090,32768,65207))

	set = SetCollector:AddSet(70000,nil,RAID,100,"HU_TR_RANGED_10",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"VENDOR",TRANSMOG,A(12310,24561,50115),A(12312,24563,50117),A(12313,24564,50118),A(12309,24560,50114),A(12311,24562,50116))
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(12234,25031,51153),A(12261,25029,51151),A(12272,25028,51150),A(12350,25032,51154),A(12224,25030,51152))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(12596,25164,51286),A(12481,25166,51288),A(12597,25167,51289),A(12453,25163,51285),A(12466,25165,51287))

	set = SetCollector:AddSet(70000,nil,RAID,90,"HU_TR_RANGED_A_09",MAIL,HUNTER,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,RAID,set,"VENDOR",TRANSMOG,A(11910,23378,48250),A(11926,23381,48253),A(11710,23379,48251),A(11986,23382,48254),A(11775,23380,48252))
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(11910,23385,48257),A(11926,23387,48259),A(11710,23383,48255),A(11986,23384,48256),A(11775,23386,48258))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(11910,23390,48262),A(11926,23388,48260),A(11710,23392,48264),A(11986,23391,48263),A(11775,23389,48261))
				
	set = SetCollector:AddSet(70000,nil,RAID,90,"HU_TR_RANGED_H_09",MAIL,HUNTER,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,RAID,set,"VENDOR",TRANSMOG,A(11909,23405,48277),A(11927,23407,48279),A(11988,23403,48275),A(11987,23404,48276),A(11848,23406,48278))
				SetCollector:AddVariant(70000,nil,RAID,set,"NORMAL",TRANSMOG,A(11909,23400,48272),A(11927,23398,48270),A(11796,23402,48274),A(11987,23401,48273),A(11848,23399,48271))
				SetCollector:AddVariant(70000,nil,RAID,set,"HEROIC",TRANSMOG,A(11909,23395,48267),A(11927,23397,48269),A(11796,23393,48265),A(11987,23394,48266),A(11848,23396,48268))

	set = SetCollector:AddSet(70000,nil,RAID,80,"HU_TR_RANGED_08",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER10",TRANSMOG,A(11411,21829,45361),A(11413,21831,45363),A(11414,21832,45364),A(11410,21828,45360),A(11412,21830,45362))
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER25",TRANSMOG,A(11659,22265,46143),A(11660,22267,46145),A(11658,22263,46141),A(11561,22264,46142),A(11565,22266,46144))

	set = SetCollector:AddSet(70000,nil,RAID,70,"HU_TR_RANGED_07",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER10",TRANSMOG,A(10173,18962,39578),A(10176,18965,39581),A(10174,18963,39579),A(10177,18966,39582),A(10175,18964,39580))
				SetCollector:AddVariant(70000,nil,RAID,set,"PLAYER25",TRANSMOG,A(10397,19478,40505),A(10399,19480,40507),A(10395,19476,40503),A(10396,19477,40504),A(10398,19479,40506))

	set = SetCollector:AddSet(70000,nil,RAID,60,"HU_TR_RANGED_06",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"HU_TR_RANGED_06",TRANSMOG,A(8070,14074,31003),A(8073,14077,31006),A(8071,14075,31004),A(8961,15971,34443),A(8069,14072,31001),A(8997,16032,34549),A(8072,14076,31005),A(9008,16051,34570))

	set = SetCollector:AddSet(70000,nil,RAID,50,"HU_TR_RANGED_05",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"HU_TR_RANGED_05",TRANSMOG,A(7821,13576,30141),A(7823,13578,30143),A(7819,13574,30139),A(7820,13575,30140),A(7822,13577,30142))

	set = SetCollector:AddSet(70000,nil,RAID,40,"HU_TR_RANGED_04",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"HU_TR_RANGED_04",TRANSMOG,A(7462,12957,29081),A(7465,12960,29084),A(7463,12958,29082),A(7466,12961,29085),A(7464,12959,29083))

	set = SetCollector:AddSet(70000,nil,RAID,30,"HU_TR_03",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"HU_TR_03",TRANSMOG,A(5993,8840,22438),A(5994,8841,22439),A(5991,8838,22436),A(5998,8845,22443),A(5996,8843,22441),A(5997,8844,22442),A(5992,8839,22437),A(5995,8842,22440)) --,A(nil,nil,23067))

	set = SetCollector:AddSet(70000,nil,RAID,20,"HU_TR_02",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"HU_TR_02",TRANSMOG,A(5062,7003,16939),A(5060,7001,16937),A(5065,7006,16942),A(5058,6999,16935),A(5063,7004,16940),A(5059,7000,16936),A(5061,7002,16938),A(5064,7005,16941))

	set = SetCollector:AddSet(70000,nil,RAID,10,"HU_TR_01",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,RAID,set,"HU_TR_01",TRANSMOG,A(4991,6931,16846),A(4993,6933,16848),A(4990,6930,16845),A(4995,6935,16850),A(4997,6937,16852),A(4996,6936,16851),A(4992,6932,16847),A(4994,6934,16849))
				
	-- Challenge Dungeon Sets
	set = SetCollector:AddSet(70000,nil,CHALLENGE,1,"HU_CD_90",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,CHALLENGE,set,"HU_CD_90",TRANSMOG,A(17679,46770,90072),A(17681,46772,90074),A(17677,46768,90070),A(17674,46773,90075),A(17678,46769,90071),A(17675,46766,90068),A(17680,46771,90073),A(17676,46767,90069))
	
	-- Dungeon Sets
	set = SetCollector:AddSet(70000,nil,DUNGEON,30,"HU_DG_03",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"HU_DG_03",TRANSMOG,A(7121,12367,28275),A(6961,12076,27801),A(7101,12345,28228),A(6856,11922,27474),A(6999,12119,27874))
				
	set = SetCollector:AddSet(70000,nil,DUNGEON,22,"HU_DG_AQ_2",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"HU_DG_AQ_2",TRANSMOG,A(5698,8395,21366),A(5699,8396,21367),A(5701,8398,21370),A(5700,8397,21368),A(5697,8394,21365))
				
	set = SetCollector:AddSet(70000,nil,DUNGEON,21,"HU_DG_AQ_1",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"HU_DG_AQ_1",TRANSMOG,A(5712,8415,21401),A(5716,8416,21403)) --,A(nil,nil,21402))
				
	set = SetCollector:AddSet(70000,nil,DUNGEON,20,"HU_DG_02",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"REPLICA",TRANSMOG,A(5880,39689,78284),A(5882,39686,78281),A(5884,39687,78282),A(5879,39688,78283),A(5881,39683,78278),A(5878,39690,78285),A(5883,39685,78280),A(5885,39684,78279))
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"ORIGINAL",TRANSMOG,A(5880,8674,22013),A(5882,8676,22016),A(5884,8678,22060),A(5879,8673,22011),A(5881,8675,22015),A(5878,8672,22010),A(5883,8677,22017),A(5885,8679,22061))
				
	set = SetCollector:AddSet(70000,nil,DUNGEON,10,"HU_DG_01",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"REPLICA",TRANSMOG,A(4880,39680,78275),A(4882,39678,78273),A(4877,39675,78270),A(4884,39682,78277),A(4879,39676,78271),A(4883,39679,78274),A(4881,39681,78276),A(4878,39677,78272))
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"ORIGINAL",TRANSMOG,A(4880,6808,16677),A(4882,6810,16679),A(4877,6805,16674),A(4884,6812,16681),A(4879,6807,16676),A(4883,6811,16680),A(4881,6809,16678),A(4878,6806,16675))
				
	-- PvP
	col = PVP
	set = SetCollector:AddSet(70000,nil,col,19,"HU_PVP_19",MAIL,HUNTER,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(29741,79596),A(29743,79598),A(29738,79593),A(29744,79600),A(29740,79595),A(29737,79599),A(29742,79597),A(29738,79594))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(29894,81459),A(29895,81461),A(29884,81456),A(29899,81463),A(29893,81458),A(29882,81462),A(29896,81460),A(29883,81457))
	set = SetCollector:AddSet(70000,nil,col,19,"HU_PVP_19",MAIL,HUNTER,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(29749,79660),A(29751,79662),A(29747,79657),A(29752,79664),A(29748,79659),A(29745,79663),A(29750,79661),A(29746,79658))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(29894,81459),A(29895,81461),A(29884,81456),A(29899,81463),A(29893,81458),A(29882,81462),A(29896,81460),A(29883,81457))
				
	set = SetCollector:AddSet(70000,nil,PVP,18,"HU_PVP_18",MAIL,HUNTER,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25957,71625,126196),A(25958,71627,126198),A(25955,71623,126194),A(25956,71624,126195),A(25959,71626,126197))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25957,71507,126039),A(25958,71509,126041),A(25955,71505,126037),A(25956,71506,126038),A(25959,71508,126040))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25757,71346,125837),A(25759,71348,125839),A(25755,71344,125835),A(25756,71345,125836),A(25758,71347,125838))
				
	set = SetCollector:AddSet(70000,nil,PVP,18,"HU_PVP_18",MAIL,HUNTER,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25941,72003,126673),A(25942,72005,126675),A(25939,72001,126671),A(25940,72002,126672),A(25943,72004,126674))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25941,71885,126516),A(25942,71887,126518),A(25939,71883,126514),A(25940,71884,126515),A(25943,71886,126517))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25733,71724,126316),A(25735,71726,126318),A(25731,71722,126314),A(25732,71723,126315),A(25734,71725,126317))
				
	set = SetCollector:AddSet(70000,nil,PVP,17,"HU_PVP_17",MAIL,HUNTER,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25941,70714,125082),A(25942,70716,125084),A(25939,70712,125080),A(25940,70713,125081),A(25943,70715,125083))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25941,70596,124925),A(25942,70598,124927),A(25939,70594,124923),A(25940,70595,124924),A(25943,70597,124926))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25733,70435,124723),A(25735,70437,124725),A(25731,70433,124721),A(25732,70434,124722),A(25734,70436,124724))
				
	set = SetCollector:AddSet(70000,nil,PVP,17,"HU_PVP_17",MAIL,HUNTER,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25957,71092,125559),A(25958,71094,125561),A(25955,71090,125557),A(25956,71091,125558),A(25959,71093,125560))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25957,70974,125402),A(25958,70976,125404),A(25955,70972,125400),A(25956,70973,125401),A(25959,70975,125403))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25757,70813,125202),A(25759,70815,125204),A(25755,70811,125200),A(25756,70812,125201),A(25758,70814,125203))
				
	set = SetCollector:AddSet(70000,nil,PVP,16,"HU_PVP_16",MAIL,HUNTER,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(24281,64114,115209),A(24283,64116,115211),A(24279,64112,115207),A(24280,64113,115208),A(24282,64115,115210))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(24281,63996,115061),A(24283,63998,115063),A(24279,63994,115059),A(24280,63995,115060),A(24282,63997,115062))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(24211,64521,115641),A(24213,64523,115643),A(24209,64519,115639),A(24210,64520,115640),A(24212,64522,115642))
				
	set = SetCollector:AddSet(70000,nil,PVP,16,"HU_PVP_16",MAIL,HUNTER,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(24294,67684,119986),A(24296,67686,119988),A(24292,67682,119984),A(24293,67683,119985),A(24295,67685,119987))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(24294,67579,119851),A(24296,67581,119853),A(24292,67577,119849),A(24293,67578,119850),A(24295,67580,119852))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(24219,60178,111114),A(24221,60180,111116),A(24217,60176,111112),A(24218,60177,111113),A(24220,60179,111115))
				
	set = SetCollector:AddSet(70000,nil,PVP,15,"HU_PVP_RANGED_15",MAIL,HUNTER,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ALLIANCE",TRANSMOG,A(20729,54866,102690),A(20731,54907,102734),A(20727,54865,102689),A(20728,54909,102737),A(20730,54852,102670))
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(20745,55178,103039),A(20747,55180,103041),A(20743,55176,103037),A(20744,55177,103038),A(20741,55172,103033),A(20746,55179,103040),A(20742,55174,103035))
				
	set = SetCollector:AddSet(70000,nil,PVP,15,"HU_PVP_RANGED_15",MAIL,HUNTER,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"HORDE",TRANSMOG,A(20737,55516,103418),A(20739,55518,103420),A(20735,55514,103416),A(20736,55515,103417),A(20738,55517,103419))
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(20745,55178,103039),A(20747,55180,103041),A(20743,55176,103037),A(20744,55177,103038),A(20741,55172,103033),A(20746,55179,103040),A(20742,55174,103035))
				
	set = SetCollector:AddSet(70000,nil,PVP,14,"HU_PVP_RANGED_14",MAIL,HUNTER,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ALLIANCE",TRANSMOG,A(20737,53446,100322),A(20739,53450,100326),A(20735,53442,100318),A(20736,53444,100320),A(20738,53448,100324))
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(20745,53447,100323),A(20747,53451,100327),A(20743,53443,100319),A(20744,53445,100321),A(20746,53449,100325))
				
	set = SetCollector:AddSet(70000,nil,PVP,14,"HU_PVP_RANGED_14",MAIL,HUNTER,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"HORDE",TRANSMOG,A(20729,53734,100636),A(20731,53775,100680),A(20727,53733,100635),A(20728,53777,100683),A(20730,53720,100614))
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(20745,53447,100323),A(20747,53451,100327),A(20743,53443,100319),A(20744,53445,100321),A(20746,53449,100325))
	
	-- OTHER
	col = OTHER
	set = SetCollector:AddSet(70000,nil,col,1100,"HU_OTH_19",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"HU_OTH_19",TRANSMOG,A(32491,80982),A(32493,80984),A(32489,80979),A(32494,80986),A(32490,80981),A(32487,80985),A(32492,80983),A(32488,80980))
	
end

function SetCollector:GetMageAppearances()
	local col = ""
	local set = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,52,"MA_LG_CASTER_110",CLOTH,MAGE,CASTER,ANY)		-- Arcane
				SetCollector:AddVariant(70000,nil,col,set,"MA_LG_CASTER_110",TRANSMOG,A(12341,78708,133977),A(6358,76281,132413),A(5240,76304,132442),A(12777,76308,132451),A(7318,76312,132455))
	set = SetCollector:AddSet(70000,nil,col,50,"MA_LG_CASTER_110",CLOTH,MAGE,CASTER,ANY)		-- Fire
				SetCollector:AddVariant(70000,nil,col,set,"MA_LG_CASTER_110",TRANSMOG,A(3456,76439,132863),A(12341,78708,133977),A(15880,76275,132406),A(20215,76311,132454),A(7318,76312,132455))
	set = SetCollector:AddSet(70000,nil,col,51,"MA_LG_CASTER_110",CLOTH,MAGE,CASTER,ANY)		-- Frost
				SetCollector:AddVariant(70000,nil,col,set,"MA_LG_CASTER_110",TRANSMOG,A(12341,78708,133977),A(7193,79506,138140),A(11598,76279,132411),A(16439,78710,133970),A(7318,76312,132455))

	-- RAID
	col = RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,210,"MA_TR_21",CLOTH,MAGE,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,200,"MA_TR_20",CLOTH,MAGE,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(33524,86207),A(33526,86219),A(33528,86215),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,190,"MA_TR_19",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(31938,81117),A(31940,81120),A(32048,81121),A(31942,81119),A(31937,81116),A(31939,81118))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(30785,79778),A(30787,79805),A(31175,81107),A(30789,79796),A(30784,79769),A(30786,79787))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(30776,79779),A(30778,79806),A(31171,81419),A(30780,79797),A(30775,79770),A(30777,79788))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31083,79780),A(31085,79807),A(31115,80174),A(31087,79798),A(31082,79771),A(31084,79789))
				
	set = SetCollector:AddSet(70000,nil,col,181,"MA_TR_18",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(25451,69597),A(25453,69654),A(25455,69633),A(25450,69578),A(25452,69613),A(25448,69555))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(25423,69598),A(25425,69655),A(25427,69634),A(25422,69579),A(25424,69614),A(25420,69557))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25530,69599),A(25532,69656),A(25534,69635),A(25539,69580),A(25531,69615),A(25531,69615))
	set = SetCollector:AddSet(70000,nil,col,171,"MA_TR_17",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23413,64443),A(23416,64441),A(23415,64440),A(23412,64442),A(23409,62867),A(23414,64444),A(23410,62812))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23422,67108),A(23425,67104),A(23424,67102),A(23421,67106),A(23418,62868),A(23423,67110),A(23419,62813))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23604,67109),A(23607,67105),A(23606,67103),A(23603,67107),A(23600,62869),A(23605,67111),A(23601,62814))
	set = SetCollector:AddSet(70000,nil,col,160,"MA_TR_CASTER_16",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20939,52365,99084),A(20934,52360,99079),A(20933,52359,99078),A(20938,52364,99083),A(20932,52358,99077))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20976,52857,99576),A(20971,52940,99659),A(20970,52939,99658),A(20975,52856,99575),A(20977,52938,99657))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20976,52442,99161),A(20971,52434,99153),A(20970,52433,99152),A(20975,52441,99160),A(20977,52443,99162))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21036,52679,99398),A(21039,52682,99401),A(21038,52681,99400),A(21035,52678,99397),A(21037,52680,99399))
	set = SetCollector:AddSet(70000,nil,col,150,"MA_TR_CASTER_15",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20203,50377,95891),A(20199,50380,95894),A(20201,50379,95893),A(20202,50376,95890),A(20204,50378,95892))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20212,50003,95261),A(20208,50006,95264),A(20210,50005,95263),A(20211,50002,95260),A(20213,50004,95262))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20221,51001,96635),A(20217,51004,96638),A(20219,51003,96637),A(20220,51000,96634),A(20222,51002,96636))
	set = SetCollector:AddSet(70000,nil,col,140,"MA_TR_CASTER_14",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18659,44615,86717),A(18657,44612,86714),A(17946,44613,86715),A(17947,44616,86718),A(18660,44614,86716))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(18589,43735,85377),A(18586,43732,85374),A(18587,43733,85375),A(18590,43736,85378),A(18588,43734,85376))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(18668,44861,87008),A(18664,44864,87011),A(18666,44863,87010),A(18667,44860,87007),A(18669,44862,87009))
	set = SetCollector:AddSet(70000,nil,col,130,"MA_TR_CASTER_13",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16649,40133,78796),A(16652,40810,78843),A(16651,40161,78824),A(16648,40103,78766),A(16650,40152,78815))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16667,38463,76213),A(16669,38466,76216),A(16668,38465,76215),A(16666,38462,76212),A(15978,38464,76214))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(16658,40038,78701),A(16661,40085,78748),A(16660,40066,78729),A(16657,40008,78671),A(16659,40057,78720))
	set = SetCollector:AddSet(70000,nil,col,120,"MA_TR_CASTER_12",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15707,36569,71287),A(15710,36572,71290),A(15709,36571,71289),A(15706,36568,71286),A(15708,36570,71288))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15690,36734,71508),A(15693,36737,71511),A(15692,36736,71510),A(15689,36733,71507),A(15691,36735,71509))
	set = SetCollector:AddSet(70000,nil,col,110,"MA_TR_CASTER_11",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(13963,29992,60243),A(13984,29995,60246),A(14025,29993,60244),A(14097,29996,60247),A(13107,29994,60245))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14095,32771,65210),A(14729,32774,65213),A(14709,32773,65212),A(14773,32770,65209),A(14774,32772,65211))
	set = SetCollector:AddSet(70000,nil,col,100,"MA_TR_CASTER_10",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12388,24659,50276),A(12391,24662,50279),A(12390,24661,50278),A(12387,24658,50275),A(12389,24660,50277))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12574,25036,51158),A(12573,25033,51155),A(12426,25034,51156),A(12256,25037,51159),A(12215,25035,51157))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12592,25159,51281),A(12595,25162,51284),A(12594,25161,51283),A(12591,25158,51280),A(12593,25160,51282))
	set = SetCollector:AddSet(70000,nil,col,90,"MA_TR_CASTER_A_09",CLOTH,MAGE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11918,22963,47748),A(11932,22966,47751),A(11758,22964,47749),A(11792,22967,47752),A(11944,22965,47750))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11918,22969,47754),A(11932,22972,47757),A(11758,22971,47756),A(11792,22968,47753),A(11944,22970,47755))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11918,22976,47761),A(11932,22973,47758),A(11758,22974,47759),A(11792,22977,47762),A(11944,22975,47760))
	set = SetCollector:AddSet(70000,nil,col,90,"MA_TR_CASTER_H_09",CLOTH,MAGE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11945,22989,47774),A(11947,22992,47777),A(11836,22991,47776),A(11854,22988,47773),A(11946,22990,47775))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11945,22986,47771),A(11947,22983,47768),A(11836,22984,47769),A(11854,22987,47772),A(11946,22985,47770))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11945,22979,47764),A(11947,22982,47767),A(11836,22981,47766),A(11854,22978,47763),A(11946,22980,47765))
	set = SetCollector:AddSet(70000,nil,col,80,"MA_TR_CASTER_08",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11415,21833,45365),A(11418,21836,45369),A(11417,21835,45368),A(11652,22254,46131),A(11416,21834,45367))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11650,22252,46129),A(10463,22257,46134),A(11651,22253,46130),A(10461,22255,46132),A(11653,22256,46133))
	set = SetCollector:AddSet(70000,nil,col,70,"MA_TR_CASTER_07",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10146,18914,39491),A(10149,18917,39494),A(10147,18915,39492),A(10150,18918,39495),A(10148,18916,39493))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10358,19406,40416),A(10361,19409,40419),A(10360,19408,40418),A(10357,19405,40415),A(10359,19407,40417))
	set = SetCollector:AddSet(70000,nil,col,60,"MA_TR_CASTER_06",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"MA_TR_CASTER_06",TRANSMOG,A(8098,14124,31056),A(8101,14127,31059),A(8099,14125,31057),A(8963,15975,34447),A(8097,14123,31055),A(9001,16038,34557),A(8100,14126,31058),A(9010,16055,34574))
	set = SetCollector:AddSet(70000,nil,col,50,"MA_TR_CASTER_05",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"MA_TR_CASTER_05",TRANSMOG,A(7848,13624,30206),A(7850,13628,30210),A(7845,13619,30196),A(7847,13623,30205),A(7849,13625,30207))
	set = SetCollector:AddSet(70000,nil,col,40,"MA_TR_CASTER_04",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"MA_TR_CASTER_04",TRANSMOG,A(7457,12952,29076),A(7460,12955,29079),A(7458,12953,29077),A(7461,12956,29080),A(7459,12954,29078))
	set = SetCollector:AddSet(70000,nil,col,30,"MA_TR_03",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"MA_TR_03",TRANSMOG,A(6025,8874,22498),A(6026,8875,22499),A(6023,8872,22496),A(1474,8879,22503),A(6028,8877,22501),A(6029,8878,22502),A(6024,8873,22497),A(6027,8876,22500))
	set = SetCollector:AddSet(70000,nil,col,20,"MA_TR_02",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"MA_TR_02",TRANSMOG,A(5038,6978,16914),A(5041,6981,16917),A(5040,6980,16916),A(5042,6982,16918),A(5037,6977,16913),A(4963,6903,16818),A(5039,6979,16915),A(5036,6976,16912))
	set = SetCollector:AddSet(70000,nil,col,10,"MA_TR_01",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"MA_TR_01",TRANSMOG,A(4941,6880,16795),A(4943,6882,16797),A(4944,6883,16798),A(4945,6884,16799),A(4947,6886,16801),A(4948,6887,16802),A(4942,6881,16796),A(4946,6885,16800))

	-- Challenge Dungeon Sets
	set = SetCollector:AddSet(70000,nil,CHALLENGE,1,"MA_CD_90",CLOTH,MAGE,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,CHALLENGE,set,"MA_CD_90",TRANSMOG,A(19473,46779,90082),A(19474,46782,90085),A(18544,46781,90084),A(18543,46783,90086),A(18545,46778,90081),A(19472,46776,90079),A(18547,46780,90083),A(18541,46777,90080))

	-- Dungeon Sets
	set = SetCollector:AddSet(70000,nil,DUNGEON,30,"MA_DG_03",CLOTH,MAGE,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"MA_DG_03",TRANSMOG,A(7122,12368,28278),A(6924,12029,27738),A(7102,12346,28229),A(6874,11942,27508),A(6981,12097,27838))
				
	set = SetCollector:AddSet(70000,nil,DUNGEON,22,"MA_DG_AQ_2",CLOTH,MAGE,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"MA_DG_AQ_2",TRANSMOG,A(5682,8378,21347),A(5681,8376,21345),A(5679,8374,21343),A(1475,8377,21346),A(5680,8375,21344))
				
	set = SetCollector:AddSet(70000,nil,DUNGEON,21,"MA_DG_AQ_1",CLOTH,MAGE,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"MA_DG_AQ_1",TRANSMOG,A(5713,8423,21413),A(2437,8424,21415))
				
	set = SetCollector:AddSet(70000,nil,DUNGEON,20,"MA_DG_02",CLOTH,MAGE,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"REPLICA",TRANSMOG,A(5889,39605,78198),A(5892,39608,78201),A(5893,39607,78200),A(5887,39610,78203),A(5890,39604,78197),A(5886,39609,78202),A(5891,39606,78199),A(5888,39603,78196))
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"ORIGINAL",TRANSMOG,A(5889,8683,22065),A(5892,8686,22068),A(5893,8687,22069),A(5887,8681,22063),A(5890,8684,22066),A(5886,8680,22062),A(5891,8685,22067),A(5888,8682,22064))
				
	set = SetCollector:AddSet(70000,nil,DUNGEON,10,"MA_DG_01",CLOTH,MAGE,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"REPLICA",TRANSMOG,A(4889,39597,78188),A(4891,39600,78191),A(4890,39599,78190),A(4886,39602,78193),A(4887,39596,78187),A(4888,39601,78192),A(4008,39598,78189),A(4885,39595,78186))
				SetCollector:AddVariant(70000,nil,DUNGEON,set,"ORIGINAL",TRANSMOG,A(4889,6817,16686),A(4891,6820,16689),A(4890,6819,16688),A(4886,6814,16683),A(4887,6815,16684),A(4888,6816,16685),A(4008,6818,16687),A(4885,6813,16682))
					
	-- PvP
	col = PVP
	set = SetCollector:AddSet(70000,nil,col,19,"MA_PVP_19",CLOTH,MAGE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(30749,79603),A(30751,79606),A(30753,79605),A(30752,79608),A(30748,79602),A(30745,79607),A(30750,79604),A(30746,79601))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(31101,81474),A(31103,81477),A(31105,81476),A(31104,81479),A(31100,81473),A(31097,81478),A(31102,81475),A(31098,81472))
	set = SetCollector:AddSet(70000,nil,col,19,"MA_PVP_19",CLOTH,MAGE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(30758,79667),A(30760,79670),A(30756,79669),A(30761,79672),A(30757,79666),A(30754,79671),A(30759,79668),A(30755,79665))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(31101,81474),A(31103,81477),A(31105,81476),A(31104,81479),A(31100,81473),A(31097,81478),A(31102,81475),A(31098,81472))
				
	set = SetCollector:AddSet(70000,nil,PVP,18,"MA_PVP_18",CLOTH,MAGE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25854,71634,126211),A(25856,71637,126214),A(25858,71636,126213),A(25853,71633,126210),A(25855,71635,126212))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25854,71537,126078),A(25856,71540,126081),A(25858,71539,126080),A(25853,71536,126077),A(25855,71538,126079))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25442,71384,125884),A(25444,71387,125887),A(25446,71386,125886),A(25441,71383,125883),A(25443,71385,125885))
				
	set = SetCollector:AddSet(70000,nil,PVP,18,"MA_PVP_18",CLOTH,MAGE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25835,72012,126688),A(25837,72015,126691),A(25839,72014,126690),A(25834,72011,126687),A(25836,72013,126689))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25835,71915,126555),A(25837,71918,126558),A(25839,71917,126557),A(25834,71914,126554),A(25836,71916,126556))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25433,71762,126363),A(25435,71765,126366),A(25437,71764,126365),A(25432,71761,126362),A(25434,71763,126364))
				
	set = SetCollector:AddSet(70000,nil,PVP,17,"MA_PVP_17",CLOTH,MAGE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25835,70723,125097),A(25837,70726,125100),A(25839,70725,125099),A(25834,70722,125096),A(25836,70724,125098))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25835,70626,124964),A(25837,70629,124967),A(25839,70628,124966),A(25834,70625,124963),A(25836,70627,124965))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25433,70473,124770),A(25435,70476,124773),A(25437,70475,124772),A(25432,70472,124769),A(25434,70474,124771))
				
	set = SetCollector:AddSet(70000,nil,PVP,17,"MA_PVP_17",CLOTH,MAGE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25854,71101,125574),A(25856,71104,125577),A(25858,71103,125576),A(25853,71100,125573),A(25855,71102,125575))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25854,71004,125441),A(25856,71007,125444),A(25858,71006,125443),A(25853,71003,125440),A(25855,71005,125442))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25442,70851,125249),A(25444,70854,125252),A(25446,70853,125251),A(25441,70850,125248),A(25443,70852,125250))
				
	set = SetCollector:AddSet(70000,nil,PVP,16,"MA_PVP_16",CLOTH,MAGE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(24392,64121,115221),A(24395,64124,115224),A(24394,64123,115223),A(24391,64120,115220),A(24393,64122,115222))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(24392,64017,115091),A(24395,64020,115094),A(24394,64019,115093),A(24391,64016,115090),A(24393,64018,115092))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(24104,64545,115678),A(24106,64548,115681),A(24108,64547,115680),A(24103,64544,115677),A(24105,64546,115679))
				
	set = SetCollector:AddSet(70000,nil,PVP,16,"MA_PVP_16",CLOTH,MAGE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(24401,67691,119998),A(24404,67694,120001),A(24403,67693,120000),A(24400,67690,119997),A(24402,676922,119999))
				SetCollector:AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(24401,67593,119874),A(24404,67596,119877),A(24403,67595,119876),A(24400,67592,119873),A(24402,67594,119875))
				SetCollector:AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(24113,60206,111151),A(24115,60209,111154),A(24117,60208,111153),A(24112,60205,111150),A(24114,60207,111152))
				
	set = SetCollector:AddSet(70000,nil,PVP,15,"MA_PVP_CASTER_15",CLOTH,MAGE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ALLIANCE",TRANSMOG,A(21130,54849,102667),A(21131,54854,102673),A(21136,54888,102715),A(21140,54908,102735),A(21130,54849,102648))
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(21106,55182,103043),A(21112,55185,103046),A(21110,55184,103045),A(21092,55130,102991),A(21104,55181,103042),A(21108,55183,103044),A(21096,55133,102994))
				
	set = SetCollector:AddSet(70000,nil,PVP,15,"MA_PVP_CASTER_15",CLOTH,MAGE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"HORDE",TRANSMOG,A(21105,55520,103422),A(21111,55523,103425),A(21109,55522,103424),A(21103,55519,103421),A(21107,55521,103423))
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(21106,55182,103043),A(21112,55185,103046),A(21110,55184,103045),A(21092,55130,102991),A(21104,55181,103042),A(21108,55183,103044),A(21096,55133,102994))
				
	set = SetCollector:AddSet(70000,nil,PVP,14,"MA_PVP_CASTER_14",CLOTH,MAGE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,PVP,set,"ALLIANCE",TRANSMOG,A(21105,53454,100330),A(21111,53460,100336),A(21109,53458,100334),A(21103,53452,100328),A(21107,53456,100332))
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(21106,53455,100331),A(21112,53461,100337),A(21110,53459,100335),A(21104,53453,100329),A(21108,53457,100333))
				
	set = SetCollector:AddSet(70000,nil,PVP,14,"MA_PVP_CASTER_14",CLOTH,MAGE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,PVP,set,"HORDE",TRANSMOG,A(21130,53717,100611),A(21131,53722,100619),A(21136,53756,100661),A(21140,53776,100681),A(21127,53700,100592))
				SetCollector:AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(21106,53455,100331),A(21112,53461,100337),A(21110,53459,100335),A(21104,53453,100329),A(21108,53457,100333))
	
	-- OTHER
	col = OTHER
	set = SetCollector:AddSet(70000,nil,col,1100,"MA_OTH_19",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"MA_OTH_19",TRANSMOG,A(32507,81021),A(32509,81024),A(32512,81023),A(32511,81026),A(32506,81020),A(32504,81025),A(32510,81022),A(32505,81019))
	
end

function SetCollector:GetMonkAppearances()
	local col = ""
	local set = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,52,"MO_LG_TANK_110",LEATHER,MONK,TANK,ANY)		-- Brewmaster
				SetCollector:AddVariant(70000,nil,col,set,"MO_LG_TANK_110",TRANSMOG,A(18147,78748),A(23935,78720),A(19854,78714),A(10290,78764),A(20250,78731))
	set = SetCollector:AddSet(70000,nil,col,50,"MO_LG_HEALER_110",LEATHER,MONK,HEALER,ANY)		-- Mistweaver
				SetCollector:AddVariant(70000,nil,col,set,"MO_LG_HEALER_110",TRANSMOG,A(26598,78758),A(12414,78781),A(19027,80336),A(11177,78753),A(17416,78732))
	set = SetCollector:AddSet(70000,nil,col,51,"MO_LG_MELEE_110",LEATHER,MONK,MELEE,ANY)		-- Windwalker
				SetCollector:AddVariant(70000,nil,col,set,"MO_LG_MELEE_110",TRANSMOG,A(17491,78723),A(9805,78782),A(15533,78742),A(19854,78714),A(7107,78733))

	-- RAID
	col = RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,210,"MO_TR_21",LEATHER,MONK,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,200,"MO_TR_20",LEATHER,MONK,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())

	set = SetCollector:AddSet(70000,nil,col,190,"MO_TR_19",LEATHER,MONK,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(30634,81086),A(30645,81088),A(30535,81089),A(30633,81108),A(30643,81085),A(30644,81087))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(32043,79835),A(32046,79853),A(31917,81109),A(32042,79817),A(32044,79826),A(32045,79844))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(30617,79836),A(30619,79854),A(30510,81110),A(30615,79818),A(30616,79827),A(30618,79845))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(30670,79837),A(30671,79855),A(30491,81556),A(30669,79819),A(30672,79828),A(30673,79846))
	set = SetCollector:AddSet(70000,nil,col,181,"MO_TR_18",LEATHER,MONK,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(26104,69764),A(26105,69802),A(26108,69710),A(26103,69743),A(26100,69812),A(26106,69785),A(26101,69724))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(26113,69755),A(26115,69803),A(26117,69711),A(26112,69744),A(26109,69814),A(26114,69786),A(26110,69726))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(26141,69766),A(26144,69804),A(26146,69712),A(26140,69745),A(26137,69815),A(26143,69787),A(26138,69727))
	set = SetCollector:AddSet(70000,nil,col,171,"MO_TR_17",LEATHER,MONK,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23479,64446),A(23481,64449),A(23477,64448),A(23478,64445),A(23480,64447))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23471,67242),A(23473,67248),A(23469,67246),A(23470,67240),A(23472,67244))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23640,67243),A(23642,67249),A(23638,67247),A(23639,67241),A(23641,67245))
	set = SetCollector:AddSet(70000,nil,col,160,"MO_TR_MELEE_16",LEATHER,MONK,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20931,52364),A(20923,52356),A(20929,52352),A(20930,52353),A(20922,52355))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20967,52934),A(20969,52936),A(20965,52836),A(20966,52837),A(20968,52935))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20967,52437),A(20969,52427),A(20965,52435),A(20966,52436),A(20968,52426))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21033,52674),A(21030,52676),A(21031,52677),A(21032,52673),A(21034,52675))
	set = SetCollector:AddSet(70000,nil,col,150,"MO_TR_MELEE_15",LEATHER,MONK,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20257,50383),A(20262,50385),A(20259,50381),A(20260,50382),A(20261,50384))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20241,50009),A(20246,50011),A(20243,50007),A(20244,50008),A(20245,50010))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20249,51007),A(20254,51009),A(20251,51005),A(20252,51006),A(20253,51008))
	set = SetCollector:AddSet(70000,nil,col,140,"MO_TR_MELEE_14",LEATHER,MONK,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18799,44628),A(18803,44631),A(18801,44630),A(18718,44627),A(18802,44629))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(18593,43748),A(18591,43751),A(18595,43750),A(18594,43747),A(18592,43749))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(18806,44926),A(18811,44929),A(18808,44928),A(18809,44925),A(18810,44927))
				
	--  CHALLENGE
	col = CHALLENGE
	set = SetCollector:AddSet(70000,nil,col,90,"MO_CD_90",LEATHER,MONK,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"MO_CD_90",TRANSMOG,A(19477,46789),A(19478,46791),A(18141,46787),A(18145,46792),A(18142,46788),A(19476,46785),A(18143,46790),A(18140,46786))
	
	-- DUNGEON
	col = DUNGEON
				
	--  PvP
	col = PVP
	set = SetCollector:AddSet(70000,nil,col,19,"MO_PVP_19",LEATHER,MONK,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(30576,79611),A(30578,79613),A(30573,79614),A(30580,79616),A(30575,79610),A(30571,79615),A(30577,79612),A(30572,79609))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(30678,81490),A(30679,81492),A(30677,81493),A(30682,81495),A(30681,81489),A(30675,81494),A(30680,81491),A(30676,81488))
	set = SetCollector:AddSet(70000,nil,col,19,"MO_PVP_19",LEATHER,MONK,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(30609,79675),A(30611,79677),A(30607,79678),A(30612,79680),A(30608,79674),A(30605,79679),A(30610,79676),A(30606,79673))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(30678,81490),A(30679,81492),A(30677,81493),A(30682,81495),A(30681,81489),A(30675,81494),A(30680,81491),A(30676,81488))
				
	set = SetCollector:AddSet(70000,nil,col,18,"MO_PVP_18",LEATHER,MONK,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25974,71642),A(25976,71644),A(25972,71645),A(25973,71641),A(25975,71643))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25974,71553),A(25976,71555),A(25972,71556),A(25973,71552),A(25975,71554))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26132,71408),A(26133,71410),A(26136,71411),A(26131,71407),A(26134,71409))
	set = SetCollector:AddSet(70000,nil,col,18,"MO_PVP_18",LEATHER,MONK,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25965,72020),A(25967,72022),A(25963,72023),A(25964,72019),A(25966,72021))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25965,71931),A(25967,71933),A(25963,71934),A(25964,71930),A(25966,71932))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26122,71786),A(26123,71788),A(26126,71789),A(26121,71785),A(26124,71787))
				
	set = SetCollector:AddSet(70000,nil,col,17,"MO_PVP_17",LEATHER,MONK,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25965,70731),A(25967,70733),A(25963,70734),A(25964,70730),A(25966,70732))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25965,70642),A(25967,70644),A(25963,70645),A(25964,70641),A(25966,70643))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26122,70497),A(26123,70499),A(26126,70500),A(26121,70496),A(26124,70498))
	set = SetCollector:AddSet(70000,nil,col,17,"MO_PVP_17",LEATHER,MONK,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25974,71109),A(25976,71111),A(25972,71112),A(25973,71108),A(25975,71110))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25974,71020),A(25976,71022),A(25972,71023),A(25973,71019),A(25975,71021))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26132,70875),A(26133,70877),A(26136,70878),A(26131,70874),A(26134,70876))
				
	set = SetCollector:AddSet(70000,nil,col,16,"MO_PVP_16",LEATHER,MONK,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23785,64129),A(23787,64131),A(23783,64132),A(23784,64128),A(23786,64130))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23785,64028),A(23787,64030),A(23787,64030),A(23783,64031),A(23784,64027))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23932,64559),A(23936,64561),A(23935,64562),A(23933,64558),A(23934,64560))
	set = SetCollector:AddSet(70000,nil,col,16,"MO_PVP_16",LEATHER,MONK,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23793,67699),A(23795,67701),A(23791,67702),A(23792,67698),A(23794,67700))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23793,67604),A(23795,67606),A(23791,67607),A(23792,67603),A(23794,67605))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23944,60220),A(23955,60222),A(23940,60223),A(23941,60219),A(23954,60221))
				
	set = SetCollector:AddSet(70000,nil,col,15,"MO_PVP_MELEE_15",LEATHER,MONK,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21065,54885),A(21070,54815),A(21067,54893),A(21068,54855),A(21069,54839))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(21083,55189),A(21088,55191),A(21085,55192),A(21086,55188),A(21082,55186),A(21087,55190),A(21084,55187))
	set = SetCollector:AddSet(70000,nil,col,15,"MO_PVP_MELEE_15",LEATHER,MONK,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(21074,55528),A(21079,55530),A(21076,55531),A(21077,55527),A(21078,55529))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(21083,55189),A(21088,55191),A(21085,55192),A(21086,55188),A(21082,55186),A(21087,55190),A(21084,55187))
				
	set = SetCollector:AddSet(70000,nil,col,14,"MO_PVP_MELEE_14",LEATHER,MONK,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21074,53469),A(21079,53473),A(21076,53475),A(21077,53467),A(21078,53471))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(21083,53470),A(21088,53474),A(21085,53476),A(21086,53468),A(21087,53472))
	set = SetCollector:AddSet(70000,nil,col,14,"MO_PVP_MELEE_14",LEATHER,MONK,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(21065,53753),A(21070,53810),A(21067,53761),A(21077,55527),A(21069,53707))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(21083,53470),A(21088,53474),A(21085,53476),A(21086,53468),A(21087,53472))
	
	-- OTHER
	col = OTHER
	set = SetCollector:AddSet(70000,nil,col,1100,"MO_OTH_19",LEATHER,MONK,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"MO_OTH_19",TRANSMOG,A(32527,81006),A(32529,81008),A(32525,81003),A(32530,81010),A(32526,81005),A(32523,81009),A(32528,81007),A(32524,81004))
	
end

function SetCollector:GetPaladinAppearances()
	local set = ""
	local col = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,50,"PA_LG_HEALER_110",PLATE,PALADIN,HEALER,ANY)		-- Holy
				SetCollector:AddVariant(70000,nil,col,set,"PA_LG_HEALER_110",TRANSMOG,A(23720,78761),A(8370,78790),A(4129,78744),A(8489,78771),A(13785,76305))
	set = SetCollector:AddSet(70000,nil,col,51,"PA_LG_TANK_110",PLATE,PALADIN,TANK,ANY)		-- Protection
				SetCollector:AddVariant(70000,nil,col,set,"PA_LG_TANK_110",TRANSMOG,A(7784,78721),A(8370,78790),A(8489,78771),A(21048,78755),A(13785,76305))
	set = SetCollector:AddSet(70000,nil,col,52,"PA_LG_MELEE_110",PLATE,PALADIN,MELEE,ANY)		-- Retribution
				SetCollector:AddVariant(70000,nil,col,set,"PA_LG_MELEE_110",TRANSMOG,A(10703,78750),A(18877,78724),A(19946,81795),A(8489,78771),A(13785,76305))

	-- RAID
	col = RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,210,"PA_TR_21",PLATE,PALADIN,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	set = SetCollector:AddSet(70000,nil,col,201,"PA_TR_20",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32925,86259),A(32927,86267),A(32999,86251),A(32923,86247),A(32928,86643),A(32924,86255),A(32921,86639),A(32926,86263),A(32922,86619))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(32946,86260),A(32948,86268),A(32979,86252),A(32944,86248),A(32949,86644),A(32945,86256),A(32942,86640),A(32947,86264),A(32943,86620))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(32901,86261),A(32903,86269),A(32962,86253),A(32899,86249),A(32904,86645),A(32900,86257),A(32897,86641),A(32902,86265),A(32898,86621))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(32917,86262),A(32919,86270),A(32993,86254),A(32915,86250),A(32920,86646),A(32916,86258),A(32913,86642),A(32918,86266),A(32914,86622))

	set = SetCollector:AddSet(70000,nil,col,191,"PA_TR_19",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32147,81058),A(32149,81060),A(32105,81549),A(32151,81056),A(32146,81057),A(32148,81059))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(29644,79910),A(29647,79928),A(29707,81547),A(29646,79892),A(29643,79901),A(29645,79919))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(29653,79911),A(29655,79929),A(29717,81061),A(29657,79893),A(29652,79902),A(29654,79920))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29452,79912),A(29454,79930),A(29676,81548),A(29456,79894),A(29451,79903),A(29453,79921))
	set = SetCollector:AddSet(70000,nil,col,181,"PA_TR_18",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(25700,70020),A(25701,70062),A(25698,69966),A(25699,70003),A(25696,70068),A(25702,70041),A(25697,69980))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(25708,70021),A(25709,70063),A(25706,69967),A(25707,70004),A(25704,70070),A(25710,70042),A(25705,69982))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25778,70022),A(25779,70064),A(25776,69968),A(25777,70005),A(25774,70071),A(25780,70043),A(25775,69983))
	set = SetCollector:AddSet(70000,nil,col,171,"PA_TR_17",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23009,64458),A(23011,64455),A(23007,64456),A(23008,64457),A(23010,64459))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23001,67303),A(23003,67297),A(22999,67299),A(23000,67301),A(23002,67305))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23221,67304),A(23223,67298),A(23219,67300),A(23220,67302),A(23222,67306))
	set = SetCollector:AddSet(70000,nil,col,161,"PA_TR_MELEE_16",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20889,52266),A(20895,52268),A(20901,52333),A(20892,52283),A(20890,52267))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20964,52932),A(20961,52943),A(20962,52847),A(20963,52906),A(20960,52942))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20964,52419),A(20961,52413),A(20962,52417),A(20963,52418),A(20960,52420))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21028,52660),A(21025,52654),A(21026,52668),A(21027,52661),A(21029,52653))
	set = SetCollector:AddSet(70000,nil,col,151,"PA_TR_MELEE_15",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(19952,50398),A(19954,70000),A(19950,50396),A(19951,50397),A(19953,50399))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(19935,50024),A(19937,50026),A(19933,50022),A(19934,50023),A(19936,50025))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(19943,51022),A(19945,51024),A(19941,51020),A(19942,51021),A(19944,51023))
	set = SetCollector:AddSet(70000,nil,col,141,"PA_TR_MELEE_14",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18036,44579),A(18038,44577),A(18034,44581),A(18035,44580),A(18037,44578))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(18021,43699),A(18023,43697),A(18019,43701),A(18020,43700),A(18022,43698))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(18044,44937),A(18046,44939),A(18042,44935),A(18043,44936),A(18045,44938))
	set = SetCollector:AddSet(70000,nil,col,131,"PA_TR_MELEE_13",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16862,40125),A(16864,40174),A(16860,40159),A(16861,40107),A(16863,40144))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16870,38744),A(16871,38746),A(16868,38742),A(16869,38743),A(15980,38745))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(16876,40030),A(16878,40079),A(16874,40064),A(16875,40012),A(16877,40049))
	set = SetCollector:AddSet(70000,nil,col,121,"PA_TR_MELEE_12",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15681,36433),A(15683,36435),A(15685,36431),A(15530,36432),A(15682,36434))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15674,36740),A(15676,36742),A(15678,36738),A(15673,36739),A(15675,36741))
	set = SetCollector:AddSet(70000,nil,col,111,"PA_TR_MELEE_11",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(14049,30073),A(13974,30075),A(13217,30071),A(14001,30072),A(14035,30074))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14755,32777),A(14738,32779),A(14722,32775),A(14715,32776),A(14765,32778))
	set = SetCollector:AddSet(70000,nil,col,101,"PA_TR_MELEE_10",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12411,24693),A(12409,24691),A(12413,24695),A(12412,24694),A(12410,24692))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12280,25040),A(12240,25038),A(12263,25042),A(12248,25041),A(12225,25039))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12498,25155),A(12452,25157),A(12485,25153),A(12469,25154),A(12456,25156))
	set = SetCollector:AddSet(70000,nil,col,91,"PA_TR_MELEE_A_09",PLATE,PALADIN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11907,23677),A(11925,23679),A(11763,23675),A(12005,23676),A(11738,23678))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11907,23687),A(11925,23685),A(11763,23689),A(12005,23688),A(11738,23686))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11907,23682),A(11925,23684),A(11763,23680),A(12005,23681),A(11738,23683))
	set = SetCollector:AddSet(70000,nil,col,91,"PA_TR_MELEE_H_09",PLATE,PALADIN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11908,23702),A(11924,23700),A(11842,23704),A(12006,23703),A(11819,23701))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11908,23697),A(11924,23695),A(11842,23699),A(12006,23698),A(11819,23696))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11908,23692),A(11924,23694),A(11842,23690),A(12006,23691),A(11819,23693))
	set = SetCollector:AddSet(70000,nil,col,81,"PA_TR_MELEE_08",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11421,21844),A(11422,21847),A(11424,21842),A(11419,21843),A(11420,21846))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11668,22277),A(11664,22273),A(11666,22275),A(11667,22276),A(11665,22274))
	set = SetCollector:AddSet(70000,nil,col,71,"PA_TR_MELEE_07",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10194,19010),A(10197,19012),A(10195,19008),A(10198,19009),A(10196,19005))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10427,19543),A(10429,19545),A(10425,19541),A(10426,19542),A(10428,19544))
	set = SetCollector:AddSet(70000,nil,col,61,"PA_TR_MELEE_06",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PA_TR_MELEE_06",TRANSMOG,A(8064,14060),A(8067,14068),A(8065,14061),A(8956,15960),A(8063,14053),A(8975,15993),A(8066,14064),A(9003,16042))
	set = SetCollector:AddSet(70000,nil,col,51,"PA_TR_MELEE_05",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PA_TR_MELEE_05",TRANSMOG,A(7816,13566),A(7818,13568),A(7814,13564),A(7815,13565),A(7817,13567))
	set = SetCollector:AddSet(70000,nil,col,41,"PA_TR_MELEE_04",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PA_TR_MELEE_04",TRANSMOG,A(7452,12949),A(7455,12951),A(7453,12947),A(7456,12948),A(7454,12950))
	set = SetCollector:AddSet(70000,nil,col,31,"PA_TR_03",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PA_TR_03",TRANSMOG,A(5987,8834),A(5988,8835),A(5984,8831),A(5983,8830),A(5985,8832),A(5990,8837),A(5986,8833),A(5989,8836))
	set = SetCollector:AddSet(70000,nil,col,21,"PA_TR_02",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PA_TR_02",TRANSMOG,A(5078,7019),A(5076,7017),A(5081,7022),A(5074,7015),A(5079,7020),A(5075,7016),A(5077,7018),A(5080,7021))
	set = SetCollector:AddSet(70000,nil,col,11,"PA_TR_01",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PA_TR_01",TRANSMOG,A(4999,6939),A(5001,6941),A(4998,6938),A(5002,6942),A(5005,6945),A(5003,6943),A(5000,6940),A(5004,6944))
				
	--  CHALLENGE
	col = CHALLENGE
	set = SetCollector:AddSet(70000,nil,col,90,"PA_CD_90",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PA_CD_90",TRANSMOG,A(17548,46797),A(17550,46799),A(17546,46795),A(17551,46800),A(17547,46796),A(17544,46793),A(17549,46798),A(17545,46794))
	
	-- DUNGEON
	col = DUNGEON
	set = SetCollector:AddSet(70000,nil,col,30,"PA_DG_03",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PA_DG_03",TRANSMOG,A(7123,12369),A(6925,12030),A(7081,12325),A(6890,11963),A(6982,12098))
				
	set = SetCollector:AddSet(70000,nil,col,22,"PA_DG_AQ_2",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PA_DG_AQ_2",TRANSMOG,A(5707,8404),A(5711,8408),A(5709,8406),A(5710,8407),A(5708,8405))
				
	set = SetCollector:AddSet(70000,nil,col,21,"PA_DG_AQ_1",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PA_DG_AQ_1",TRANSMOG,A(5713,8411),A(5714,8412))
				
	set = SetCollector:AddSet(70000,nil,col,20,"PA_DG_02",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(5915,39717),A(5917,39721),A(5913,39718),A(5912,39722),A(5914,39719),A(5910,39716),A(5916,39720),A(5911,39715))
				
	set = SetCollector:AddSet(70000,nil,col,10,"PA_DG_01",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(4926,39712),A(4928,39713),A(4925,39711),A(4921,39709),A(4923,39708),A(4922,39707),A(4927,39710),A(4924,39714))
				
	--  PvP
	col = PVP
	set = SetCollector:AddSet(70000,nil,col,19,"PA_PVP_19",PLATE,PALADIN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(29626,79620),A(29628,79622),A(29630,79617),A(29629,79624),A(29625,79619),A(29622,79623),A(29627,79621),A(29623,79618))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(29443,81507),A(29445,81509),A(29447,81504),A(29446,81511),A(29442,81506),A(29439,81510),A(29444,81508),A(29440,81505))
	set = SetCollector:AddSet(70000,nil,col,19,"PA_PVP_19",PLATE,PALADIN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(29635,79684),A(29637,79686),A(29639,79681),A(29638,79688),A(29634,79683),A(29631,79687),A(29636,79685),A(29632,79682))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(29443,81507),A(29445,81509),A(29447,81504),A(29446,81511),A(29442,81506),A(29439,81510),A(29444,81508),A(29440,81505))
				
	set = SetCollector:AddSet(70000,nil,col,18,"PA_PVP_18",PLATE,PALADIN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71648),A(25919,71650),A(25915,71646),A(25916,71647),A(25918,71649))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,71559),A(25919,71561),A(25915,71557),A(25916,71558),A(25918,71560))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25692,71414),A(25693,71416),A(25690,71412),A(25691,71413),A(25694,71415))
	set = SetCollector:AddSet(70000,nil,col,18,"PA_PVP_18",PLATE,PALADIN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,72026),A(25927,72028),A(25923,72024),A(25924,72025),A(25926,72027))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,71937),A(25927,71939),A(25923,71935),A(25924,71936),A(25926,71938))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25684,71792),A(25685,71794),A(25682,71790),A(25683,71791),A(25686,71793))
				
	set = SetCollector:AddSet(70000,nil,col,17,"PA_PVP_17",PLATE,PALADIN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,70737),A(25927,70739),A(25923,70735),A(25924,70736),A(25926,70738))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,70648),A(25927,70650),A(25923,70646),A(25924,70647),A(25926,70649))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25684,70503),A(25685,70505),A(25682,70501),A(25683,70502),A(25686,70504))
	set = SetCollector:AddSet(70000,nil,col,17,"PA_PVP_17",PLATE,PALADIN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71115),A(25919,71117),A(25915,71113),A(25916,71114),A(25918,71116))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,71026),A(25919,71028),A(25915,71024),A(25916,71025),A(25918,71027))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25692,70881),A(25693,70883),A(25690,70879),A(25691,70880),A(25694,70882))
				
	set = SetCollector:AddSet(70000,nil,col,16,"PA_PVP_16",PLATE,PALADIN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23971,64135),A(23973,64137),A(23969,64133),A(23970,64134),A(23972,64136))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23971,64034),A(23973,64036),A(23969,64032),A(23970,64033),A(23972,64035))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23710,64565),A(23712,64567),A(23708,64563),A(23709,64564),A(23711,64566))
	set = SetCollector:AddSet(70000,nil,col,16,"PA_PVP_16",PLATE,PALADIN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23979,67705),A(23981,67707),A(23977,67703),A(23978,67704),A(23980,67706))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23979,67610),A(23981,67612),A(23977,67608),A(23978,67609),A(23980,67611))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23718,60226),A(23720,60228),A(23716,60224),A(23717,60225),A(23719,60227))
				
	set = SetCollector:AddSet(70000,nil,col,15,"PA_PVP_MELEE_15",PLATE,PALADIN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20676,54944),A(20678,54915),A(20674,54917),A(20675,54819),A(20677,54945))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20684,55200),A(20686,55202),A(20682,55198),A(20683,55199),A(20680,55203),A(20685,55201),A(20681,55206))
	set = SetCollector:AddSet(70000,nil,col,15,"PA_PVP_MELEE_15",PLATE,PALADIN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20692,55539),A(20694,55541),A(20690,55537),A(20691,55538),A(20693,55540))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20684,55200),A(20686,55202),A(20682,55198),A(20683,55199),A(20680,55203),A(20685,55201),A(20681,55206))
				
	set = SetCollector:AddSet(70000,nil,col,14,"PA_PVP_MELEE_14",PLATE,PALADIN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20692,53491),A(20694,53495),A(20690,53487),A(20691,53489),A(20693,53493))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20684,53492),A(20686,53496),A(20682,53488),A(20683,53490),A(20685,53494))
	set = SetCollector:AddSet(70000,nil,col,14,"PA_PVP_MELEE_14",PLATE,PALADIN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20676,53812),A(20678,53783),A(20674,53785),A(20675,53687),A(20677,53813))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20684,53492),A(20686,53496),A(20682,53488),A(20683,53490),A(20685,53494))
	
	-- OTHER
	col = OTHER
	set = SetCollector:AddSet(70000,nil,col,1100,"PA_OTH_19",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PA_OTH_19",TRANSMOG,A(32553,80966),A(32555,80968),A(32551,80963),A(32556,80970),A(32552,80965),A(32549,80969),A(32554,80967),A(32550,80964))
	
end

function SetCollector:GetPriestAppearances()
	local set = ""
	local col = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,50,"PR_LG_CASTER_110",CLOTH,PRIEST,CASTER,ANY)		-- Shadow
				SetCollector:AddVariant(70000,nil,col,set,"PR_LG_CASTER_110",TRANSMOG,A(15918,78706),A(8351,78709),A(12788,78717),A(6939,78713),A(7318,76312))
	set = SetCollector:AddSet(70000,nil,col,51,"PR_LG_HEALER_110",CLOTH,PRIEST,HEALER,ANY)		-- Holy
				SetCollector:AddVariant(70000,nil,col,set,"PR_LG_HEALER_110",TRANSMOG,A(3006,78815),A(5230,78716),A(5902,78712),A(19872,78707),A(7318,76312))
	set = SetCollector:AddSet(70000,nil,col,52,"PR_LG_HEALER_110",CLOTH,PRIEST,HEALER,ANY)		-- Discipline
				SetCollector:AddVariant(70000,nil,col,set,"PR_LG_HEALER_110",TRANSMOG,A(6038,76438),A(7245,78715),A(15368,78705),A(8612,78711),A(7318,76312))

	-- RAID
	col = RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,210,"PR_TR_21",CLOTH,PRIEST,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,200,"PR_TR_20",CLOTH,PRIEST,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())

	set = SetCollector:AddSet(70000,nil,col,191,"PR_TR_19",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(31947,81102),A(31949,81105),A(32060,81106),A(31950,81104),A(31946,81101),A(31948,81103))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(30262,79781),A(30264,79808),A(30177,81563),A(30266,79799),A(30261,79772),A(30263,79790))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(30271,79782),A(30273,79809),A(30189,81564),A(30275,79800),A(30270,79773),A(30272,79791))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(30280,79783),A(30282,79810),A(30231,81565),A(30283,79801),A(30279,79774),A(30281,79792))
	set = SetCollector:AddSet(70000,nil,col,181,"PR_TR_18",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(25908,69600),A(25911,69657),A(25909,69636),A(25907,69581),A(25904,69663),A(25910,69616),A(25905,69559))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(25890,69601),A(25893,69658),A(25891,69637),A(25889,69582),A(25886,69665),A(25892,69617),A(25887,69561))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25872,69602),A(25874,69659),A(25876,69638),A(25871,69583),A(25868,69666),A(25873,69618),A(25869,69562))
	set = SetCollector:AddSet(70000,nil,col,171,"PR_TR_17",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23821,64453),A(23819,64451),A(23823,64450),A(23820,64452),A(23822,64454))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23832,67263),A(23835,67259),A(23834,67257),A(23831,67261),A(23833,67265))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(24029,67264),A(24031,67260),A(24033,67258),A(24028,67262),A(24030,67266))
	set = SetCollector:AddSet(70000,nil,col,161,"PR_TR_CASTER_16",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20910,52301),A(20903,52286),A(20902,52285),A(20909,52300),A(20911,52302))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(21060,52868),A(21059,52909),A(20950,52908),A(20959,52867),A(20958,52869))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20957,52403),A(20951,52392),A(20950,52391),A(20959,52402),A(20958,52404))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21023,52641),A(21021,52644),A(21020,52643),A(21022,52640),A(21024,52642))
	set = SetCollector:AddSet(70000,nil,col,151,"PR_TR_CASTER_15",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20049,50417),A(20045,50415),A(20047,50419),A(20048,50416),A(20050,50418))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20058,50043),A(50054,50046),A(20056,50045),A(20057,50042),A(20059,50044))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20040,51041),A(20036,51044),A(20038,51043),A(20039,51040),A(20041,51042))
	set = SetCollector:AddSet(70000,nil,col,141,"PR_TR_CASTER_14",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18981,44603),A(18980,44606),A(17712,44605),A(17713,44602),A(17715,44604))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(18585,43723),A(18584,43726),A(17694,43725),A(17695,43722),A(17697,43724))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(19087,44956),A(19088,44959),A(17703,44958),A(17704,44955),A(17706,44957))
	set = SetCollector:AddSet(70000,nil,col,131,"PR_TR_CASTER_13",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(17037,40135),A(17033,40182),A(17035,40163),A(17036,40114),A(17038,40154))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16918,38568),A(16916,38565),A(16917,38566),A(16919,38569),A(15979,38567))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(17049,40040),A(17045,40087),A(17047,40068),A(17048,40019),A(17050,40059))
	set = SetCollector:AddSet(70000,nil,col,121,"PR_TR_CASTER_12",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15761,36559),A(15764,36562),A(15763,36561),A(15535,36558),A(15762,36560))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15754,36759),A(15757,36762),A(15756,36761),A(15753,36758),A(15755,36760))
	set = SetCollector:AddSet(70000,nil,col,111,"PR_TR_CASTER_11",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(14024,30005),A(13993,30002),A(14037,30003),A(13976,30006),A(14000,30004))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14710,32796),A(14723,32799),A(14763,32798),A(14736,32795),A(14716,32797))
	set = SetCollector:AddSet(70000,nil,col,101,"PR_TR_CASTER_10",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12416,24702),A(12419,24968),A(12418,24704),A(12415,24701),A(12417,24703))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12254,25062),A(12438,25060),A(12341,25058),A(12344,25061),A(12575,25059))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12475,25133),A(12588,25135),A(12507,25137),A(12509,25134),A(12589,25136))
	set = SetCollector:AddSet(70000,nil,col,91,"PR_TR_CASTER_A_09",CLOTH,PRIEST,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11983,23229),A(11934,23232),A(11723,23231),A(11980,23228),A(11733,23230))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11919,23234),A(11934,23237),A(11723,23236),A(11980,23233),A(11733,23235))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11919,23241),A(11934,23238),A(11723,23239),A(11980,23242),A(11733,23240))
	set = SetCollector:AddSet(70000,nil,col,91,"PR_TR_CASTER_H_09",CLOTH,PRIEST,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11920,23224),A(11935,23227),A(11807,23226),A(11982,23223),A(11815,23225))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11920,23221),A(11935,23218),A(11807,23219),A(11982,23222),A(11815,23220))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11920,23214),A(11935,23217),A(11807,23216),A(11982,23213),A(11815,23215))
	set = SetCollector:AddSet(70000,nil,col,81,"PR_TR_CASTER_08",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11427,21858),A(11431,21860),A(11430,21862),A(11428,21859),A(11429,21861))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11678,22292),A(11675,22286),A(11676,22289),A(11674,22284),A(11677,22291))
	set = SetCollector:AddSet(70000,nil,col,71,"PR_TR_CASTER_07",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10157,18933),A(10160,18937),A(10158,18935),A(10161,18938),A(10159,18936))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10157,19439),A(10374,19442),A(10373,19441),A(10371,19437),A(10372,19440))
	set = SetCollector:AddSet(70000,nil,col,61,"PR_TR_CASTER_06",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PR_TR_CASTER_06",TRANSMOG,A(8104,14132),A(8107,14138),A(8105,14133),A(8957,15963),A(8102,14129),A(8989,16018),A(8106,14135),A(9004,16044))
	set = SetCollector:AddSet(70000,nil,col,51,"PR_TR_CASTER_05",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PR_TR_CASTER_05",TRANSMOG,A(7835,13592),A(7834,13594),A(7830,13590),A(7831,13591),A(7833,13593))
	set = SetCollector:AddSet(70000,nil,col,41,"PR_TR_CASTER_04",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PR_TR_CASTER_04",TRANSMOG,A(7446,12934),A(7449,12936),A(7447,12932),A(7451,12933),A(7448,12935))
	set = SetCollector:AddSet(70000,nil,col,31,"PR_TR_03",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PR_TR_03",TRANSMOG,A(6040,8890),A(6041,8891),A(6038,8888),A(6045,8895),A(6043,8893),A(6044,8894),A(6039,8889),A(6042,8892))		-- Get Source ID's from player's who have collected
	set = SetCollector:AddSet(70000,nil,col,21,"PR_TR_02",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PR_TR_02",TRANSMOG,A(5045,6985),A(5048,6988),A(5047,6987),A(5050,6990),A(5044,6984),A(5049,6989),A(5046,6986),A(5043,6983))
	set = SetCollector:AddSet(70000,nil,col,11,"PR_TR_01",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PR_TR_01",TRANSMOG,A(4959,6898),A(4961,6901),A(4960,6900),A(4964,6904),A(4958,6897),A(4962,6902),A(3094,6899),A(4957,6896))
				
	--  CHALLENGE
	col = CHALLENGE
	set = SetCollector:AddSet(70000,nil,col,90,"PR_CD_90",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PR_CD_90",TRANSMOG,A(19482,46813),A(19481,46810),A(18917,46811),A(18916,46809),A(18918,46812),A(19480,46807),A(18920,46814),A(18914,46808))
	
	-- DUNGEON
	col = DUNGEON
	set = SetCollector:AddSet(70000,nil,col,30,"PR_DG_03",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PR_DG_03",TRANSMOG,A(7195,12457),A(6944,12058),A(7103,12347),A(6891,11964),A(7000,12120))
				
	set = SetCollector:AddSet(70000,nil,col,22,"PR_DG_AQ_2",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PR_DG_AQ_2",TRANSMOG,A(5683,8379),A(5685,8381),A(5686,8382),A(3512,8383),A(5684,8380))
				
	set = SetCollector:AddSet(70000,nil,col,21,"PR_DG_AQ_1",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PR_DG_AQ_1",TRANSMOG,A(5715,8421),A(2409,8422))
				
	set = SetCollector:AddSet(70000,nil,col,20,"PR_DG_02",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(5904,39623),A(5906,39620),A(5907,39619),A(5903,39622),A(5905,39624),A(5902,39625),A(5909,39621),A(5908,39626))
				
	set = SetCollector:AddSet(70000,nil,col,10,"PR_DG_01",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(4895,39612),A(4897,39611),A(4892,39616),A(4899,39618),A(4894,39615),A(4898,39614),A(4896,39613),A(4893,39617))
				
	--  PvP
	col = PVP
	set = SetCollector:AddSet(70000,nil,col,19,"PR_PVP_19",CLOTH,PRIEST,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(30244,79627),A(30246,79630),A(30248,79629),A(30247,79632),A(30243,79626),A(30240,79631),A(30245,79628),A(30241,79625))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(30289,81683),A(30291,81686),A(30292,81685),A(30293,81688),A(30288,81682),A(30285,81687),A(30290,81684),A(30286,81681))
	set = SetCollector:AddSet(70000,nil,col,19,"PR_PVP_19",CLOTH,PRIEST,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(30253,79691),A(30255,79694),A(30257,79693),A(30256,79696),A(30252,79690),A(30249,79695),A(30254,79692),A(30250,79689))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(30289,81683),A(30291,81686),A(30292,81685),A(30293,81688),A(30288,81682),A(30285,81687),A(30290,81684),A(30286,81681))
				
	set = SetCollector:AddSet(70000,nil,col,18,"PR_PVP_18",CLOTH,PRIEST,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25854,71655),A(25856,71658),A(25858,71657),A(25853,71654),A(25855,71656))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25854,71574),A(25856,71577),A(25858,71576),A(25853,71573),A(25855,71575))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25899,71437),A(25902,71440),A(25900,71439),A(25898,71436),A(25901,71438))
	set = SetCollector:AddSet(70000,nil,col,18,"PR_PVP_18",CLOTH,PRIEST,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25835,72033),A(25837,72036),A(25839,71954),A(25834,72032),A(25836,72034))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25835,71952),A(25837,71955),A(25839,71954),A(25834,71951),A(25836,71953))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25881,71815),A(25884,71818),A(25882,71817),A(25880,71814),A(25883,71816))
				
	set = SetCollector:AddSet(70000,nil,col,17,"PR_PVP_17",CLOTH,PRIEST,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25835,70744),A(25837,70747),A(25839,70746),A(25834,70743),A(25836,70745))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25835,70663),A(25837,70666),A(25839,70665),A(25834,70662),A(25836,70664))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25881,70526),A(25884,70529),A(25882,70528),A(25880,70525),A(25883,70527))
	set = SetCollector:AddSet(70000,nil,col,17,"PR_PVP_17",CLOTH,PRIEST,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25854,71122),A(25856,71125),A(25858,71124),A(25853,71121),A(25855,71123))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25854,71041),A(25856,71044),A(25858,71043),A(25853,71040),A(25855,71042))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25899,70904),A(25902,70907),A(25900,70906),A(25898,70903),A(25901,70905))
				
	set = SetCollector:AddSet(70000,nil,col,16,"PR_PVP_16",CLOTH,PRIEST,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24392,64142),A(24395,64145),A(24394,64144),A(24391,64141),A(24393,64143))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24392,64044),A(24395,64047),A(24394,64046),A(24391,64043),A(24393,64045))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24923,64578),A(24925,64581),A(24927,64580),A(24922,64577),A(24924,64579))
	set = SetCollector:AddSet(70000,nil,col,16,"PR_PVP_16",CLOTH,PRIEST,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24401,67712),A(24404,67715),A(24403,67714),A(24400,67711),A(24402,67713))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24401,67620),A(24404,67623),A(24403,67622),A(24400,67619),A(24402,67621))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24913,60239),A(24916,60242),A(24918,60241),A(24912,60238),A(24915,60240))
				
	set = SetCollector:AddSet(70000,nil,col,15,"PR_PVP_CASTER_15",CLOTH,PRIEST,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20884,54920),A(20880,54853),A(20882,54812),A(20883,54880),A(20885,54811))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20874,55223),A(20870,55226),A(20872,55225),A(20873,55222),A(20868,55275),A(20875,55224),A(20869,55274))
	set = SetCollector:AddSet(70000,nil,col,15,"PR_PVP_CASTER_15",CLOTH,PRIEST,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20864,55561),A(20860,55564),A(20862,55563),A(20863,55560),A(20865,55562))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20874,55223),A(20870,55226),A(20872,55225),A(20873,55222),A(20868,55275),A(20875,55224),A(20869,55274))
				
	set = SetCollector:AddSet(70000,nil,col,14,"PR_PVP_CASTER_14",CLOTH,PRIEST,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20864,53541),A(20860,53547),A(20862,53545),A(20863,53539),A(20865,53543))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20874,55223),A(20870,55226),A(20872,55225),A(20873,55222),A(20875,55224))
	set = SetCollector:AddSet(70000,nil,col,14,"PR_PVP_CASTER_14",CLOTH,PRIEST,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20884,53745),A(20880,53787),A(20882,53726),A(20883,53674),A(20885,53746))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20874,55223),A(20870,55226),A(20872,55225),A(20873,55222),A(20875,55224))
	
	-- OTHER
	col = OTHER
	set = SetCollector:AddSet(70000,nil,col,1100,"PR_OTH_19",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PR_OTH_19",TRANSMOG,A(32472,81029),A(32474,81032),A(32476,81031),A(32475,81034),A(32471,81028),A(32468,81033),A(32473,81030),A(32469,81027))
	
end

function SetCollector:GetRogueAppearances()
	local set = ""
	local col = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,50,"RO_LG_MELEE_110",LEATHER,ROGUE,CASTER,ANY)		-- Assassination
				SetCollector:AddVariant(70000,nil,col,set,"RO_LG_MELEE_110",TRANSMOG,A(19454,78725),A(26599,78763),A(19854,78714),A(4464,78754),A(15486,78734))
	set = SetCollector:AddSet(70000,nil,col,51,"RO_LG_MELEE_110",LEATHER,ROGUE,HEALER,ANY)		-- Outlaw
				SetCollector:AddVariant(70000,nil,col,set,"RO_LG_MELEE_110",TRANSMOG,A(16717,78784),A(12239,82377),A(19854,78714),A(4464,78754),A(5542,78735))
	set = SetCollector:AddSet(70000,nil,col,52,"RO_LG_MELEE_110",LEATHER,ROGUE,MELEE,ANY)		-- Subtlety
				SetCollector:AddVariant(70000,nil,col,set,"RO_LG_MELEE_110",TRANSMOG,A(19454,78725),A(17341,78785),A(19854,78714),A(4464,78754),A(11721,78736))
	set = SetCollector:AddSet(70000,nil,col,30,"LG_ROGUE_85",ANY,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16977,39516),A(16977,39517))

	-- RAID
	col = RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,210,"RO_TR_21",LEATHER,ROGUE,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,200,"RO_TR_20",LEATHER,ROGUE,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())

	set = SetCollector:AddSet(70000,nil,col,190,"RO_TR_19",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32083,81082),A(32084,81084),A(32298,81555),A(32079,81080),A(32080,81081),A(32081,81083))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(29870,79838),A(29872,79856),A(32292),A(29868,79820),A(29869,79829),A(29871,79847))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(29197,79839),A(29218,79857),A(32282),A(29195,79821),A(29196,79830),A(29217,79848))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(28986,79840),A(28988,79858),A(32317),A(28984,79822),A(28985,81081),A(28987,79849))
				
	set = SetCollector:AddSet(70000,nil,col,181,"RO_TR_18",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(25802,69767),A(25805,69805),A(25800,69713),A(25801,69746),A(25803,69788),A(25799,69728))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(25810,69768),A(25813,69806),A(25808,69714),A(25809,69747),A(25811,69789),A(25807,69730))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25819,69769),A(25821,69807),A(25817,69715),A(25818,69748),A(25820,69790),A(25816,69731))
				
	set = SetCollector:AddSet(70000,nil,col,171,"RO_TR_17",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23127,64462),A(23132,64464),A(23129,64460),A(23130,64461),A(23131,64463))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23140,67317),A(23135,67321),A(23138,67313),A(23137,67315),A(23136,67319))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23489,67318),A(23491,67322),A(23487,67314),A(23488,67316),A(23490,67320))
				
	set = SetCollector:AddSet(70000,nil,col,160,"RO_TR_MELEE_16",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20906,52289),A(20908,52291),A(20904,52287),A(20905,52288),A(20907,52290))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(21061,52912),A(21062,52916),A(20952,52910),A(20953,52911),A(20955,52915))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20954,52395),A(20956,52397),A(20952,52393),A(20953,52394),A(20955,52396))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21015,52629),A(21017,52631),A(21019,52637),A(21018,52636),A(21016,52630))
				
	set = SetCollector:AddSet(70000,nil,col,150,"RO_TR_MELEE_15",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20098,50423),A(20103,50425),A(20100,50421),A(20101,50422),A(20102,50424))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20082,50049),A(20087,50051),A(20084,50047),A(20085,50048),A(20086,50050))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20090,51047),A(20095,51049),A(20092,51045),A(20093,51046),A(20094,51048))
				
	set = SetCollector:AddSet(70000,nil,col,140,"RO_TR_MELEE_14",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18968,44539),A(18966,44537),A(18969,44541),A(18715,44540),A(18967,44538))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(18571,43659),A(18569,43657),A(18573,43661),A(18572,43660),A(18570,43658))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(19085,44962),A(19092,44964),A(19089,44960),A(19090,44961),A(19091,44963))
				
	set = SetCollector:AddSet(70000,nil,col,130,"RO_TR_MELEE_13",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16722,40131),A(16724,40170),A(16720,40096),A(16721,40111),A(16723,40140))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16730,38846),A(16731,38848),A(16728,38844),A(16729,38845),A(15983,38847))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(16714,40036),A(16716,40075),A(16712,40001),A(16713,40016),A(16715,40045))
				
	set = SetCollector:AddSet(70000,nil,col,120,"RO_TR_MELEE_12",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15642,36417),A(15644,36419),A(15641,36415),A(15533,36416),A(15643,36418))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15649,36765),A(15651,36767),A(15647,36763),A(15648,36764),A(15650,36766))
				
	set = SetCollector:AddSet(70000,nil,col,110,"RO_TR_MELEE_11",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(14041,30031),A(13950,30034),A(13611,30033),A(13965,30030),A(13996,30032))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14760,32802),A(14746,32804),A(14731,32800),A(14742,32801),A(14720,32803))
				
	set = SetCollector:AddSet(70000,nil,col,100,"RO_TR_MELEE_10",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12296,24547),A(12303,24554),A(12294,24545),A(12295,24546),A(12297,24548))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12288,25065),A(12244,25063),A(12252,25067),A(12260,25066),A(12222,25064))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12505,25130),A(12467,25132),A(12473,25128),A(12482,25129),A(12495,25131))
				
	set = SetCollector:AddSet(70000,nil,col,90,"RO_TR_MELEE_A_09",LEATHER,ROGUE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11914,23348),A(11929,23351),A(11730,23349),A(11936,23352),A(11716,23350))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11914,23355),A(11929,23357),A(11730,23353),A(11936,23354),A(11716,23356))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11914,23360),A(11929,23358),A(11730,23362),A(11936,23361),A(11716,23359))
				
	set = SetCollector:AddSet(70000,nil,col,90,"RO_TR_MELEE_H_09",LEATHER,ROGUE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11913,23375),A(11930,23377),A(11813,23373),A(11966,23374),A(11802,23376))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11913,23370),A(11930,23368),A(11813,23372),A(11966,23371),A(11802,23369))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11913,23365),A(11930,23367),A(11813,23363),A(11966,23364),A(11802,23366))
				
	set = SetCollector:AddSet(70000,nil,col,80,"RO_TR_MELEE_08",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11434,21865),A(11436,21867),A(11432,21863),A(11433,21864),A(11435,21866))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11647,22249),A(11649,22251),A(11645,22247),A(11646,22248),A(11648,22250))
				
	set = SetCollector:AddSet(70000,nil,col,70,"RO_TR_MELEE_07",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10170,18959),A(10172,18961),A(10168,18957),A(10169,18958),A(10171,18960))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10392,19472),A(10394,19475),A(10389,19469),A(10390,19470),A(10393,19473))
				
	set = SetCollector:AddSet(70000,nil,col,60,"RO_TR_MELEE_06",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RO_TR_MELEE_06",TRANSMOG,A(8082,14097),A(8085,14100),A(8083,14098),A(8964,15976),A(8081,14096),A(9002,16039),A(8084,14099),A(9011,16056))
				
	set = SetCollector:AddSet(70000,nil,col,50,"RO_TR_MELEE_05",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RO_TR_MELEE_05",TRANSMOG,A(7826,13581),A(7829,13584),A(7824,13579),A(7825,13580),A(7828,13583))
				
	set = SetCollector:AddSet(70000,nil,col,40,"RO_TR_MELEE_04",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RO_TR_MELEE_04",TRANSMOG,A(7441,12922),A(7444,12925),A(7442,12923),A(7445,12926),A(7443,12924))
				
	set = SetCollector:AddSet(70000,nil,col,30,"RO_TR_03",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RO_TR_03",TRANSMOG,A(6009,8858),A(6010,8859),A(6007,8856),A(6014,8863),A(6012,8861),A(6013,8862),A(6008,8857),A(6011,8860))
				
	set = SetCollector:AddSet(70000,nil,col,20,"RO_TR_02",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RO_TR_02",TRANSMOG,A(5032,6972),A(4977,6917),A(5029,6969),A(5035,6975),A(5031,6971),A(5034,6974),A(5033,6973),A(5030,6970))
				
	set = SetCollector:AddSet(70000,nil,col,10,"RO_TR_01",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RO_TR_01",TRANSMOG,A(4966,6906),A(4968,6908),A(4965,6905),A(4970,6910),A(4971,6911),A(4972,6912),A(4967,6907),A(4969,6909))
				
	--  CHALLENGE
	col = CHALLENGE
	set = SetCollector:AddSet(70000,nil,col,90,"RO_CD_90",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RO_CD_90",TRANSMOG,A(17620,46817),A(17625,46822),A(17622,46819),A(17626,46823),A(17623,46820),A(17619,46816),A(17624,46821),A(17621,46818))
				
	-- DUNGEON
	col = DUNGEON
	set = SetCollector:AddSet(70000,nil,col,30,"RO_DG_03",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_DG_03",TRANSMOG,A(7196,12458),A(6945,12059),A(7082,12326),A(6875,11943),A(7019,12146))
				
	set = SetCollector:AddSet(70000,nil,col,22,"RO_DG_AQ_2",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_DG_AQ_2",TRANSMOG,A(5693,8390),A(5694,8391),A(5696,8393),A(5695,8392),A(5692,8389))
				
	set = SetCollector:AddSet(70000,nil,col,21,"RO_DG_AQ_1",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_DG_AQ_1",TRANSMOG,A(5717,8417),A(1832,8418))
				
	set = SetCollector:AddSet(70000,nil,col,20,"RO_DG_02",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(5873,39668),A(5876,39672),A(5877,39674),A(5872,39669),A(5874,39671),A(5870,39670),A(5875,39673),A(5871,39667))
				
	set = SetCollector:AddSet(70000,nil,col,10,"RO_DG_01",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(4909,39665),A(4910,39666),A(4685,6852),A(3879,39660),A(4913,39662),A(567,39664),A(4911,39663),A(4912,39661))	
				
	--  PvP
	col = PVP
	set = SetCollector:AddSet(70000,nil,col,19,"RO_PVP_19",LEATHER,ROGUE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(29152,78454),A(29154,78456),A(29150,78451),A(29155,78458),A(29151,78453),A(29148,78457),A(29153,78455),A(29149,78452))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(28994,78462),A(28996,78464),A(28992,78459),A(28997,78466),A(28993,78461),A(28990,78465),A(28995,78463),A(28991,78460))
	set = SetCollector:AddSet(70000,nil,col,19,"RO_PVP_19",LEATHER,ROGUE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(29189,78446),A(29191,78448),A(29187,78443),A(29192,78450),A(29188,78445),A(29185,78449),A(29190,78447),A(29186,78444))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(28994,78462),A(28996,78464),A(28992,78459),A(28997,78466),A(28993,78461),A(28990,78465),A(28995,78463),A(28991,78460))
				
	set = SetCollector:AddSet(70000,nil,col,18,"RO_PVP_18",LEATHER,ROGUE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25974,71661),A(25976,71663),A(25972,71659),A(25973,71660),A(25975,71662))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25974,71580),A(25976,71582),A(25972,71578),A(25973,71579),A(25975,71581))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25794,71443),A(25797,71445),A(25792,71441),A(25793,71442),A(25795,71444))
	set = SetCollector:AddSet(70000,nil,col,18,"RO_PVP_18",LEATHER,ROGUE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25965,72039),A(25967,72041),A(25963,72037),A(25964,72038),A(25966,72040))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25965,72039),A(25967,71960),A(25963,71956),A(25964,71957),A(25966,71959))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25786,71821),A(25789,71823),A(25784,71819),A(25785,71820),A(25787,71822))
				
	set = SetCollector:AddSet(70000,nil,col,17,"RO_PVP_17",LEATHER,ROGUE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25965,70750),A(25967,70752),A(25963,70748),A(25964,70749),A(25966,70751))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25965,70669),A(25967,70671),A(25963,70667),A(25964,70668),A(25966,70670))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25786,70532),A(25789,70534),A(25784,70530),A(25785,70531),A(25787,70533))
	set = SetCollector:AddSet(70000,nil,col,17,"RO_PVP_17",LEATHER,ROGUE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25794,71128),A(25976,71130),A(25972,71126),A(25973,71127),A(25975,71129))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25974,71047),A(25976,71049),A(25972,71045),A(25973,71046),A(25975,71048))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25794,70910),A(25797,70912),A(25792,70908),A(25793,70909),A(25795,70911))
				
	set = SetCollector:AddSet(70000,nil,col,16,"RO_PVP_16",LEATHER,ROGUE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23785,64148),A(23787,64150),A(23783,64146),A(23784,64147),A(23786,64149))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23785,64050),A(23787,64052),A(23783,64048),A(23784,64049),A(23786,64051))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23732,64584),A(23734,64586),A(23730,64582),A(23731,64583),A(23733,64585))
	set = SetCollector:AddSet(70000,nil,col,16,"RO_PVP_16",LEATHER,ROGUE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23793,67718),A(23795,67720),A(23791,67716),A(23792,67717),A(23794,67719))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23793,67626),A(23795,67628),A(23791,67624),A(23792,67625),A(23794,67625))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23741,60245),A(23743,60247),A(23739,60243),A(23740,60244),A(23742,60246))
				
	set = SetCollector:AddSet(70000,nil,col,15,"RO_PVP_MELEE_15",LEATHER,ROGUE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20770,54883),A(20772,54904),A(20768,54900),A(20769,54845),A(20771,54903))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20762,55231),A(20764,55233),A(20760,55229),A(20761,55230),A(20758,55227),A(20763,55232),A(20759,55228))
	set = SetCollector:AddSet(70000,nil,col,15,"RO_PVP_MELEE_15",LEATHER,ROGUE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20754,55575),A(20756,55577),A(20752,55573),A(20753,55574),A(20755,55576))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20762,55231),A(20764,55233),A(20760,55229),A(20761,55230),A(20758,55227),A(20763,55232),A(20759,55228))
				
	set = SetCollector:AddSet(70000,nil,col,14,"RO_PVP_MELEE_14",LEATHER,ROGUE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20754,53558),A(20756,53562),A(20752,53554),A(20753,53556),A(20755,53560))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20762,53559),A(20764,53563),A(20760,53555),A(20761,53557),A(20758,53561))
	set = SetCollector:AddSet(70000,nil,col,14,"RO_PVP_MELEE_14",LEATHER,ROGUE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20770,55054),A(20772,55075),A(20768,55071),A(20769,55016),A(20771,55074))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20762,53559),A(20764,53563),A(20760,53555),A(20761,53557),A(20758,53561))

	-- OTHER
	col = OTHER
	set = SetCollector:AddSet(70000,nil,col,1100,"RO_OTH_19",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RO_OTH_19",TRANSMOG,A(32535,81014),A(32537,81016),A(32533,81011),A(32538,81018),A(32534,81013),A(32531,81017),A(32536,81015),A(32532,81012))		-- Need belt and feet for each variant
	
end