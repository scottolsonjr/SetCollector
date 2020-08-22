-- Appearances from Legion (v.7.x)

--
-- LOCAL VARIABLES
--

local ALL			= SetCollector.ALL
local ANY			= SetCollector.ANY

-- Armor Type
local CLOTH			= SetCollector.CLOTH
local LEATHER		= SetCollector.LEATHER
local MAIL			= SetCollector.MAIL
local PLATE			= SetCollector.PLATE

-- Classes
local DEATHKNIGHT	= SetCollector.DEATHKNIGHT
local DEMONHUNTER	= SetCollector.DEMONHUNTER
local DRUID 		= SetCollector.DRUID
local HUNTER 		= SetCollector.HUNTER
local MAGE 			= SetCollector.MAGE
local MONK 			= SetCollector.MONK
local PALADIN 		= SetCollector.PALADIN
local PRIEST 		= SetCollector.PRIEST
local ROGUE 		= SetCollector.ROGUE
local SHAMAN 		= SetCollector.SHAMAN
local WARLOCK 		= SetCollector.WARLOCK
local WARRIOR 		= SetCollector.WARRIOR

-- Factions
local ALLIANCE 		= SetCollector.ALLIANCE
local HORDE 		= SetCollector.HORDE

-- Roles
local TANK 			= SetCollector.TANK
local HEALER 		= SetCollector.HEALER
local CASTER 		= SetCollector.CASTER
local RANGED 		= SetCollector.RANGED
local MELEE 		= SetCollector.MELEE

-- Obtainable
local OBTAIN		= SetCollector.OBTAIN
local NOOBTAIN 		= SetCollector.NOOBTAIN

-- Useable as Transmog
local TRANSMOG 		= SetCollector.TRANSMOG
local NOTRANSMOG 	= SetCollector.NOTRANSMOG


--
-- LOCAL FUNCTIONS
--

local function A(a, s, i, ...)
	return SetCollector:A(a, s, i, ...)
end


local function GetLegendaries()
	local col = SetCollector.LEGENDARY
	local set = ""
end


local function GetExpansionAppearances()
	local col = SetCollector.EXPANSION
	local set = ""
	
	set = SetCollector:AddSet(70000,nil,col,10701,"DK_OTH_19",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DK_OTH_19",TRANSMOG,A(32543,80950),A(32545,80952),A(32541,80947),A(32546,80954),A(32542,80949),A(32539,80953),A(32544,80951),A(32540,80948))
	set = SetCollector:AddSet(70000,nil,col,10701,"DH_OTH_19",LEATHER,DEMONHUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DH_OTH_19",TRANSMOG,A(32573,80990),A(32575,80992),A(32570,80987),A(32576,80994),A(32571,80989),A(32568,80993),A(32574,80991),A(32569,80988))
	set = SetCollector:AddSet(70000,nil,col,10701,"DR_OTH_19",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DR_OTH_19",TRANSMOG,A(32481,80998),A(32483,81000),A(32479,80995),A(32484,81002),A(32480,80997),A(32477,81001),A(32482,80999),A(32478,80996))
	set = SetCollector:AddSet(70000,nil,col,10701,"HU_OTH_19",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"HU_OTH_19",TRANSMOG,A(32491,80982),A(32493,80984),A(32489,80979),A(32494,80986),A(32490,80981),A(32487,80985),A(32492,80983),A(32488,80980))
	set = SetCollector:AddSet(70000,nil,col,10701,"MA_OTH_19",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"MA_OTH_19",TRANSMOG,A(32507,81021),A(32509,81024),A(32512,81023),A(32511,81026),A(32506,81020),A(32504,81025),A(32510,81022),A(32505,81019))
	set = SetCollector:AddSet(70000,nil,col,10701,"MO_OTH_19",LEATHER,MONK,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"MO_OTH_19",TRANSMOG,A(32527,81006),A(32529,81008),A(32525,81003),A(32530,81010),A(32526,81005),A(32523,81009),A(32528,81007),A(32524,81004))
	set = SetCollector:AddSet(70000,nil,col,10701,"PA_OTH_19",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PA_OTH_19",TRANSMOG,A(32553,80966),A(32555,80968),A(32551,80963),A(32556,80970),A(32552,80965),A(32549,80969),A(32554,80967),A(32550,80964))
	set = SetCollector:AddSet(70000,nil,col,10701,"PR_OTH_19",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PR_OTH_19",TRANSMOG,A(32472,81029),A(32474,81032),A(32476,81031),A(32475,81034),A(32471,81028),A(32468,81033),A(32473,81030),A(32469,81027))
	set = SetCollector:AddSet(70000,nil,col,10701,"RO_OTH_19",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RO_OTH_19",TRANSMOG,A(32535,81014),A(32537,81016),A(32533,81011),A(32538,81018),A(32534,81013),A(32531,81017),A(32536,81015),A(32532,81012))
	set = SetCollector:AddSet(70000,nil,col,10701,"SH_OTH_19",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_OTH_19",TRANSMOG,A(32499,80974),A(32501,80976),A(32497,80971),A(32502,80978),A(32498,80973),A(32495,80977),A(32500,80975),A(32496,80972))
	set = SetCollector:AddSet(70000,nil,col,10701,"WK_OTH_19",CLOTH,WARLOCK,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WK_OTH_19",TRANSMOG,A(32517,81037),A(32519,81040),A(32521,81039),A(32520,81042),A(32516,81036),A(32513,81041),A(32518,81038),A(32514,81035))
	set = SetCollector:AddSet(70000,nil,col,10701,"WR_OTH_19",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WR_OTH_19",TRANSMOG,A(32561,80958),A(32563,80960),A(32559,80955),A(32564,80962),A(32560,80957),A(32557,80961),A(32562,80959),A(32558,80956))
end


local function GetDeathKnightAppearances()
	local col = ""
	local set = ""

	col = SetCollector.LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,50,"DK_LG_MELEE_110",PLATE,DEATHKNIGHT,MELEE,ANY)		-- Frost
				SetCollector:AddVariant(70000,nil,col,set,"DK_LG_MELEE_110",TRANSMOG,A(16823,76316),A(18947,76268),A(18047,76315),A(6904,76263),A(13785,76305))
	set = SetCollector:AddSet(70000,nil,col,51,"DK_LG_MELEE_110",PLATE,DEATHKNIGHT,MELEE,ANY)		-- Unholy
				SetCollector:AddVariant(70000,nil,col,set,"DK_LG_MELEE_110",TRANSMOG,A(20431,78760),A(18947,76268),A(11353,76307),A(16827,76303),A(13785,76305))
	set = SetCollector:AddSet(70000,nil,col,52,"DK_LG_TANK_110",PLATE,DEATHKNIGHT,TANK,ANY)			-- Blood
				SetCollector:AddVariant(70000,nil,col,set,"DK_LG_TANK_110",TRANSMOG,A(18947,76268),A(11888,76262),A(20434,76264),A(14758,76310),A(13785,76305))

	col = SetCollector.RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,10703,"DK_TR_21",PLATE,DEATHKNIGHT,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,10702,"DK_TR_20",PLATE,DEATHKNIGHT,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,10701,"DK_TR_19",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32139,81064),A(32141,81066),A(31975,81068),A(32137,81062),A(32138,81063),A(32140,81065))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(29805,79907),A(29807,79925),A(29974,81550),A(29800,79889),A(29804,79898),A(29806,79916))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(29813,79908),A(29815,79926),A(29961,81551),A(29811,79890),A(29812,79899),A(29814,79917))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29829,79909),A(29831,79927),A(29939,81067),A(29827,79891),A(29828,79900),A(29830,79918))

	col = SetCollector.PVP
	set = SetCollector:AddSet(70000,nil,col,10701,"DK_PVP_19",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(29794,79580),A(29796,79582),A(29792,79577),A(29797,79584),A(29793,79579),A(29790,79583),A(29795,79581),A(29791,79578))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(29837,81427),A(29839,81429),A(29835,81424),A(29840,81431),A(29836,81426),A(29833,81430),A(29838,81428),A(29834,81425))
	set = SetCollector:AddSet(70000,nil,col,10701,"DK_PVP_19",PLATE,DEATHKNIGHT,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(29821,79644),A(29823,79646),A(29819,79641),A(29824,79648),A(29820,79643),A(29817,79647),A(29822,79645),A(29818,79642))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(29837,81427),A(29839,81429),A(29835,81424),A(29840,81431),A(29836,81426),A(29833,81430),A(29838,81428),A(29834,81425))
end


local function GetDemonHunterAppearances()
	local col = ""
	local set = ""

	col = SetCollector.LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,50,"DH_LG_MELEE_110",LEATHER,DEMONHUNTER,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DH_LG_MELEE_110",TRANSMOG,A(8342,78746),A(11154,78718),A(21430,78775),A(19854,78714),A(16625,78726))
	set = SetCollector:AddSet(70000,nil,col,51,"DH_LG_TANK_110",LEATHER,DEMONHUNTER,TANK,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DH_LG_TANK_110",TRANSMOG,A(11787,78756),A(7741,78751),A(26599,78776),A(19854,78714),A(18100,80337))

	col = SetCollector.RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,10703,"DH_TR_21",LEATHER,DEMONHUNTER,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,10702,"DH_TR_20",LEATHER,DEMONHUNTER,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,10701,"DH_TR_19",LEATHER,DEMONHUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32020,81113),A(32022,81115),A(32100,81543),A(32018,81111),A(32019,81112),A(32021,81114))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(32004,80181),A(32006,80187),A(32208,81540),A(32002,80175),A(32003,80178),A(32005,80184))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(32012,80182),A(32014,80188),A(32220,81541),A(32010,80176),A(32011,80179),A(32013,80185))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31913,80183),A(31915,80189),A(32166,81542),A(31911,80177),A(31912,80180),A(31914,80186))
	
	col = SetCollector.PVP
	set = SetCollector:AddSet(70000,nil,col,10701,"DH_PVP_19",LEATHER,DEMONHUNTER,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(31988,79707),A(31990,79710),A(31986,79709),A(31991,79712),A(31987,79706),A(31984,79711),A(31989,79708),A(31985,79705))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(31930,79723),A(31932,79726),A(31928,79725),A(31933,79728),A(31929,79722),A(31926,79727),A(31931,79724),A(31927,79721))
	set = SetCollector:AddSet(70000,nil,col,10701,"DH_PVP_19",LEATHER,DEMONHUNTER,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(31996,79715),A(31998,79718),A(31994,79717),A(31999,79720),A(31995,79714),A(31992,79719),A(31997,79716),A(31993,79713))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(31930,79723),A(31932,79726),A(31928,79725),A(31933,79728),A(31929,79722),A(31926,79727),A(31931,79724),A(31927,79721))
end


local function GetDruidAppearances()
	local col = ""
	local set = ""

	col = SetCollector.LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,50,"DR_LG_CASTER_110",LEATHER,DRUID,CASTER,ANY)		-- Balance
				SetCollector:AddVariant(70000,nil,col,set,"DR_LG_CASTER_110",TRANSMOG,A(6935,78747,137062),A(13520,78719,137015),A(12554,78777,137092),A(19854,78714,133976),A(15543,78727,137023))
	set = SetCollector:AddSet(70000,nil,col,50,"DR_LG_MELEE_110",LEATHER,DRUID,MELEE,ANY)		-- Feral
				SetCollector:AddVariant(70000,nil,col,set,"DR_LG_MELEE_110",TRANSMOG,A(13520,78719,137015),A(25591,78741,137056),A(6468,78779,137094),A(19854,78714,133976),A(12217,78728,137024))
	set = SetCollector:AddSet(70000,nil,col,50,"DR_LG_TANK_110",LEATHER,DRUID,TANK,ANY)			-- Guardian
				SetCollector:AddVariant(70000,nil,col,set,"DR_LG_TANK_110",TRANSMOG,A(13520,78719,137015),A(25591,78741,137056),A(19854,78714,133976),A(17323,78752,137067),A(5689,78729,137025))
	set = SetCollector:AddSet(70000,nil,col,50,"DR_LG_HEALER_110",LEATHER,DRUID,HEALER,ANY)			-- Restoration
				SetCollector:AddVariant(70000,nil,col,set,"DR_LG_HEALER_110",TRANSMOG,A(20969,78757,137072),A(13520,78719,137015),A(27243,78780,137095),A(19027,78763,137078),A(25585,78730,137026))

	col = SetCollector.RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,10703,"DR_TR_21",LEATHER,DRUID,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,10702,"DR_TR_20",LEATHER,DRUID,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,10701,"DR_TR_19",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32072,81092),A(32074,81094),A(32221,81558),A(32076,81090),A(32071,81091),A(32073,81093))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(30740,79832),A(30742,79850),A(31035,80486),A(30744,79814),A(30739,79823),A(30741,79841))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(30731,79833),A(30733,79851),A(31024,81557),A(30735,79815),A(30730,79824),A(30732,79842))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(30696,79834),A(30698,79852),A(30819,81095),A(30700,79816),A(30695,79825),A(30697,79843))

	col = SetCollector.PVP
	set = SetCollector:AddSet(70000,nil,col,10701,"DR_PVP_19",LEATHER,DRUID,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(30705,79587),A(30707,79590),A(30709,79589),A(30708,79592),A(30704,79586),A(30701,79591),A(30706,79588),A(30702,79585))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(30687,81442),A(30689,81445),A(30685,81444),A(30690,81447),A(30686,81441),A(30683,81446),A(30688,81443),A(30684,81440))
	set = SetCollector:AddSet(70000,nil,col,10701,"DR_PVP_19",LEATHER,DRUID,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(30722,79651),A(30724,79654),A(30726,79653),A(30725,79656),A(30720,79650),A(30718,79655),A(30723,79652),A(30719,79649))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(30687,81442),A(30689,81445),A(30685,81444),A(30690,81447),A(30686,81441),A(30683,81446),A(30688,81443),A(30684,81440))
end


local function GetHunterAppearances()
	local col = ""
	local set = ""

	col = SetCollector.LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,52,"HU_LG_RANGED_110",MAIL,HUNTER,RANGED,ANY)		-- Beastmastery
				SetCollector:AddVariant(70000,nil,col,set,"HU_LG_RANGED_110",TRANSMOG,A(8610,78749,137064),A(16241,78786,137101),A(16240,78765,137080),A(8006,76319,132466),A(21190,78889,137227))
	set = SetCollector:AddSet(70000,nil,col,50,"HU_LG_RANGED_110",MAIL,HUNTER,RANGED,ANY)		-- Marksmanship
				SetCollector:AddVariant(70000,nil,col,set,"HU_LG_RANGED_110",TRANSMOG,A(8610,78749,137064),A(15732,82382,141353),A(12489,78766,137081),A(8006,76319,132466),A(12609,78737,137033))
	set = SetCollector:AddSet(70000,nil,col,51,"HU_LG_MELEE_110",MAIL,HUNTER,MELEE,ANY)			-- Survival
				SetCollector:AddVariant(70000,nil,col,set,"HU_LG_MELEE_110",TRANSMOG,A(8610,78749,137064),A(16241,78786,137101),A(5429,78767,137082),A(8006,76319,132466),A(8348,78738,137034))

	col = SetCollector.RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,10703,"HU_TR_21",MAIL,HUNTER,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,10702,"HU_TR_20",MAIL,HUNTER,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())

	set = SetCollector:AddSet(70000,nil,col,10701,"HU_TR_19",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(31867,81076),A(31869,81078),A(32112,81079),A(31865,81074),A(31866,81075),A(31868,81077))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(29758,79868),A(29760,79883),A(30050,81552),A(29755,79859),A(29757,79862),A(29759,79874))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(29766,79869),A(29768,79884),A(30075,81553),A(29764,79860),A(29765,79863),A(29767,79875))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29904,79870),A(29905,79885),A(30129,81554),A(29902,79861),A(29903,79864),A(29906,79876))

	col = SetCollector.PVP
	set = SetCollector:AddSet(70000,nil,col,10701,"HU_PVP_19",MAIL,HUNTER,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(29741,79596),A(29743,79598),A(29738,79593),A(29744,79600),A(29740,79595),A(29737,79599),A(29742,79597),A(29738,79594))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(29894,81459),A(29895,81461),A(29884,81456),A(29899,81463),A(29893,81458),A(29882,81462),A(29896,81460),A(29883,81457))
	set = SetCollector:AddSet(70000,nil,col,10701,"HU_PVP_19",MAIL,HUNTER,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(29749,79660),A(29751,79662),A(29747,79657),A(29752,79664),A(29748,79659),A(29745,79663),A(29750,79661),A(29746,79658))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(29894,81459),A(29895,81461),A(29884,81456),A(29899,81463),A(29893,81458),A(29882,81462),A(29896,81460),A(29883,81457))
end


local function GetMageAppearances()
	local col = ""
	local set = ""

	col = SetCollector.LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,52,"MA_LG_CASTER_110",CLOTH,MAGE,CASTER,ANY)		-- Arcane
				SetCollector:AddVariant(70000,nil,col,set,"MA_LG_CASTER_110",TRANSMOG,A(12341,78708,133977),A(6358,76281,132413),A(5240,76304,132442),A(12777,76308,132451),A(7318,76312,132455))
	set = SetCollector:AddSet(70000,nil,col,50,"MA_LG_CASTER_110",CLOTH,MAGE,CASTER,ANY)		-- Fire
				SetCollector:AddVariant(70000,nil,col,set,"MA_LG_CASTER_110",TRANSMOG,A(3456,76439,132863),A(12341,78708,133977),A(15880,76275,132406),A(20215,76311,132454),A(7318,76312,132455))
	set = SetCollector:AddSet(70000,nil,col,51,"MA_LG_CASTER_110",CLOTH,MAGE,CASTER,ANY)		-- Frost
				SetCollector:AddVariant(70000,nil,col,set,"MA_LG_CASTER_110",TRANSMOG,A(12341,78708,133977),A(7193,79506,138140),A(11598,76279,132411),A(16439,78710,133970),A(7318,76312,132455))

	col = SetCollector.RAID
	-- Antorus, the Burning Throne
	set = SetCollector:AddSet(70000,nil,col,10703,"MA_TR_21",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(34562),A(34565),A(35304),A(34563),A(34566),A(34561),A(34559),A(34564),A(34560))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(34546),A(34549),A(35296),A(34547),A(34550),A(34545),A(34543),A(34548),A(34544))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(34554),A(34557),A(35300),A(34555),A(34558),A(34553),A(34551),A(34556),A(34552))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(34578),A(34581),A(35284),A(34579),A(34582),A(34577),A(34575),A(34580),A(34576))
	-- Tomb of Sargeras
	set = SetCollector:AddSet(70000,nil,col,10702,"MA_TR_20",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(33524),A(33526),A(34134),A(33528),A(33363),A(33523),A(33521),A(33525),A(33358))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(33532),A(33534),A(34145),A(36833),A(33355),A(33531),A(33529),A(33533),A(33350))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(33540),A(33542),A(34148),A(33544),A(33371),A(33539),A(33537),A(33541),A(33366))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(33556),A(33558),A(34152),A(33560),A(33387),A(33555),A(33553),A(33557),A(33382))
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,10701,"MA_TR_19",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(31938,81117),A(31940,81120),A(32048,81121),A(31942,81119),A(31937,81116),A(31939,81118))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(30785,79778),A(30787,79805),A(31175,81107),A(30789,79796),A(30784,79769),A(30786,79787))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(30776,79779),A(30778,79806),A(31171,81419),A(30780,79797),A(30775,79770),A(30777,79788))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31083,79780),A(31085,79807),A(31115,80174),A(31087,79798),A(31082,79771),A(31084,79789))

	col = SetCollector.PVP
	set = SetCollector:AddSet(70000,nil,col,10701,"MA_PVP_19",CLOTH,MAGE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(30749,79603),A(30751,79606),A(30753,79605),A(30752,79608),A(30748,79602),A(30745,79607),A(30750,79604),A(30746,79601))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(31101,81474),A(31103,81477),A(31105,81476),A(31104,81479),A(31100,81473),A(31097,81478),A(31102,81475),A(31098,81472))
	set = SetCollector:AddSet(70000,nil,col,10701,"MA_PVP_19",CLOTH,MAGE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(30758,79667),A(30760,79670),A(30756,79669),A(30761,79672),A(30757,79666),A(30754,79671),A(30759,79668),A(30755,79665))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(31101,81474),A(31103,81477),A(31105,81476),A(31104,81479),A(31100,81473),A(31097,81478),A(31102,81475),A(31098,81472))
end


local function GetMonkAppearances()
	local col = ""
	local set = ""

	col = SetCollector.LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,52,"MO_LG_TANK_110",LEATHER,MONK,TANK,ANY)		-- Brewmaster
				SetCollector:AddVariant(70000,nil,col,set,"MO_LG_TANK_110",TRANSMOG,A(18147,78748),A(23935,78720),A(19854,78714),A(10290,78764),A(20250,78731))
	set = SetCollector:AddSet(70000,nil,col,50,"MO_LG_HEALER_110",LEATHER,MONK,HEALER,ANY)		-- Mistweaver
				SetCollector:AddVariant(70000,nil,col,set,"MO_LG_HEALER_110",TRANSMOG,A(26598,78758),A(12414,78781),A(19027,80336),A(11177,78753),A(17416,78732))
	set = SetCollector:AddSet(70000,nil,col,51,"MO_LG_MELEE_110",LEATHER,MONK,MELEE,ANY)		-- Windwalker
				SetCollector:AddVariant(70000,nil,col,set,"MO_LG_MELEE_110",TRANSMOG,A(17491,78723),A(9805,78782),A(15533,78742),A(19854,78714),A(7107,78733))

	col = SetCollector.RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,10703,"MO_TR_21",LEATHER,MONK,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,10702,"MO_TR_20",LEATHER,MONK,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,10701,"MO_TR_19",LEATHER,MONK,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(30634,81086),A(30645,81088),A(30535,81089),A(30633,81108),A(30643,81085),A(30644,81087))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(32043,79835),A(32046,79853),A(31917,81109),A(32042,79817),A(32044,79826),A(32045,79844))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(30617,79836),A(30619,79854),A(30510,81110),A(30615,79818),A(30616,79827),A(30618,79845))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(30670,79837),A(30671,79855),A(30491,81556),A(30669,79819),A(30672,79828),A(30673,79846))

	col = SetCollector.PVP
	set = SetCollector:AddSet(70000,nil,col,10701,"MO_PVP_19",LEATHER,MONK,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(30576,79611),A(30578,79613),A(30573,79614),A(30580,79616),A(30575,79610),A(30571,79615),A(30577,79612),A(30572,79609))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(30678,81490),A(30679,81492),A(30677,81493),A(30682,81495),A(30681,81489),A(30675,81494),A(30680,81491),A(30676,81488))
	set = SetCollector:AddSet(70000,nil,col,10701,"MO_PVP_19",LEATHER,MONK,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(30609,79675),A(30611,79677),A(30607,79678),A(30612,79680),A(30608,79674),A(30605,79679),A(30610,79676),A(30606,79673))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(30678,81490),A(30679,81492),A(30677,81493),A(30682,81495),A(30681,81489),A(30675,81494),A(30680,81491),A(30676,81488))
end


local function GetPaladinAppearances()
	local col = ""
	local set = ""

	col = SetCollector.LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,50,"PA_LG_HEALER_110",PLATE,PALADIN,HEALER,ANY)		-- Holy
				SetCollector:AddVariant(70000,nil,col,set,"PA_LG_HEALER_110",TRANSMOG,A(23720,78761),A(8370,78790),A(4129,78744),A(8489,78771),A(13785,76305))
	set = SetCollector:AddSet(70000,nil,col,51,"PA_LG_TANK_110",PLATE,PALADIN,TANK,ANY)		-- Protection
				SetCollector:AddVariant(70000,nil,col,set,"PA_LG_TANK_110",TRANSMOG,A(7784,78721),A(8370,78790),A(8489,78771),A(21048,78755),A(13785,76305))
	set = SetCollector:AddSet(70000,nil,col,52,"PA_LG_MELEE_110",PLATE,PALADIN,MELEE,ANY)		-- Retribution
				SetCollector:AddVariant(70000,nil,col,set,"PA_LG_MELEE_110",TRANSMOG,A(10703,78750),A(18877,78724),A(19946,81795),A(8489,78771),A(13785,76305))

	col = SetCollector.RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,10703,"PA_TR_21",PLATE,PALADIN,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	set = SetCollector:AddSet(70000,nil,col,10702,"PA_TR_20",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32925,86259),A(32927,86267),A(32999,86251),A(32923,86247),A(32928,86643),A(32924,86255),A(32921,86639),A(32926,86263),A(32922,86619))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(32946,86260),A(32948,86268),A(32979,86252),A(32944,86248),A(32949,86644),A(32945,86256),A(32942,86640),A(32947,86264),A(32943,86620))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(32901,86261),A(32903,86269),A(32962,86253),A(32899,86249),A(32904,86645),A(32900,86257),A(32897,86641),A(32902,86265),A(32898,86621))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(32917,86262),A(32919,86270),A(32993,86254),A(32915,86250),A(32920,86646),A(32916,86258),A(32913,86642),A(32918,86266),A(32914,86622))
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,10701,"PA_TR_19",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32147,81058),A(32149,81060),A(32105,81549),A(32151,81056),A(32146,81057),A(32148,81059))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(29644,79910),A(29647,79928),A(29707,81547),A(29646,79892),A(29643,79901),A(29645,79919))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(29653,79911),A(29655,79929),A(29717,81061),A(29657,79893),A(29652,79902),A(29654,79920))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29452,79912),A(29454,79930),A(29676,81548),A(29456,79894),A(29451,79903),A(29453,79921))

	col = SetCollector.PVP
	set = SetCollector:AddSet(70000,nil,col,10701,"PA_PVP_19",PLATE,PALADIN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(29626,79620),A(29628,79622),A(29630,79617),A(29629,79624),A(29625,79619),A(29622,79623),A(29627,79621),A(29623,79618))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(29443,81507),A(29445,81509),A(29447,81504),A(29446,81511),A(29442,81506),A(29439,81510),A(29444,81508),A(29440,81505))
	set = SetCollector:AddSet(70000,nil,col,10701,"PA_PVP_19",PLATE,PALADIN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(29635,79684),A(29637,79686),A(29639,79681),A(29638,79688),A(29634,79683),A(29631,79687),A(29636,79685),A(29632,79682))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(29443,81507),A(29445,81509),A(29447,81504),A(29446,81511),A(29442,81506),A(29439,81510),A(29444,81508),A(29440,81505))
end


local function GetPriestAppearances()
	local col = ""
	local set = ""

	col = SetCollector.LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,50,"PR_LG_CASTER_110",CLOTH,PRIEST,CASTER,ANY)		-- Shadow
				SetCollector:AddVariant(70000,nil,col,set,"PR_LG_CASTER_110",TRANSMOG,A(15918,78706),A(8351,78709),A(12788,78717),A(6939,78713),A(7318,76312))
	set = SetCollector:AddSet(70000,nil,col,51,"PR_LG_HEALER_110",CLOTH,PRIEST,HEALER,ANY)		-- Holy
				SetCollector:AddVariant(70000,nil,col,set,"PR_LG_HEALER_110",TRANSMOG,A(3006,78815),A(5230,78716),A(5902,78712),A(19872,78707),A(7318,76312))
	set = SetCollector:AddSet(70000,nil,col,52,"PR_LG_HEALER_110",CLOTH,PRIEST,HEALER,ANY)		-- Discipline
				SetCollector:AddVariant(70000,nil,col,set,"PR_LG_HEALER_110",TRANSMOG,A(6038,76438),A(7245,78715),A(15368,78705),A(8612,78711),A(7318,76312))

	col = SetCollector.RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,10703,"PR_TR_21",CLOTH,PRIEST,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,10702,"PR_TR_20",CLOTH,PRIEST,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,10701,"PR_TR_19",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(31947,81102),A(31949,81105),A(32060,81106),A(31950,81104),A(31946,81101),A(31948,81103))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(30262,79781),A(30264,79808),A(30177,81563),A(30266,79799),A(30261,79772),A(30263,79790))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(30271,79782),A(30273,79809),A(30189,81564),A(30275,79800),A(30270,79773),A(30272,79791))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(30280,79783),A(30282,79810),A(30231,81565),A(30283,79801),A(30279,79774),A(30281,79792))

	col = SetCollector.PVP
	set = SetCollector:AddSet(70000,nil,col,10701,"PR_PVP_19",CLOTH,PRIEST,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(30244,79627),A(30246,79630),A(30248,79629),A(30247,79632),A(30243,79626),A(30240,79631),A(30245,79628),A(30241,79625))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(30289,81683),A(30291,81686),A(30292,81685),A(30293,81688),A(30288,81682),A(30285,81687),A(30290,81684),A(30286,81681))
	set = SetCollector:AddSet(70000,nil,col,10701,"PR_PVP_19",CLOTH,PRIEST,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(30253,79691),A(30255,79694),A(30257,79693),A(30256,79696),A(30252,79690),A(30249,79695),A(30254,79692),A(30250,79689))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(30289,81683),A(30291,81686),A(30292,81685),A(30293,81688),A(30288,81682),A(30285,81687),A(30290,81684),A(30286,81681))
end


local function GetRogueAppearances()
	local col = ""
	local set = ""

	col = SetCollector.LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,50,"RO_LG_MELEE_110",LEATHER,ROGUE,CASTER,ANY)		-- Assassination
				SetCollector:AddVariant(70000,nil,col,set,"RO_LG_MELEE_110",TRANSMOG,A(19454,78725),A(26599,78763),A(19854,78714),A(4464,78754),A(15486,78734))
	set = SetCollector:AddSet(70000,nil,col,51,"RO_LG_MELEE_110",LEATHER,ROGUE,HEALER,ANY)		-- Outlaw
				SetCollector:AddVariant(70000,nil,col,set,"RO_LG_MELEE_110",TRANSMOG,A(16717,78784),A(12239,82377),A(19854,78714),A(4464,78754),A(5542,78735))
	set = SetCollector:AddSet(70000,nil,col,52,"RO_LG_MELEE_110",LEATHER,ROGUE,MELEE,ANY)		-- Subtlety
				SetCollector:AddVariant(70000,nil,col,set,"RO_LG_MELEE_110",TRANSMOG,A(19454,78725),A(17341,78785),A(19854,78714),A(4464,78754),A(11721,78736))
	set = SetCollector:AddSet(70000,nil,col,30,"LG_ROGUE_85",ANY,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16977,39516),A(16977,39517))

	col = SetCollector.RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,10703,"RO_TR_21",LEATHER,ROGUE,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,10702,"RO_TR_20",LEATHER,ROGUE,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,10701,"RO_TR_19",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32083,81082),A(32084,81084),A(32298,81555),A(32079,81080),A(32080,81081),A(32081,81083))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(29870,79838),A(29872,79856),A(32292),A(29868,79820),A(29869,79829),A(29871,79847))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(29197,79839),A(29218,79857),A(32282),A(29195,79821),A(29196,79830),A(29217,79848))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(28986,79840),A(28988,79858),A(32317),A(28984,79822),A(28985,81081),A(28987,79849))

	col = SetCollector.PVP
	set = SetCollector:AddSet(70000,nil,col,10701,"RO_PVP_19",LEATHER,ROGUE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(29152,78454),A(29154,78456),A(29150,78451),A(29155,78458),A(29151,78453),A(29148,78457),A(29153,78455),A(29149,78452))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(28994,78462),A(28996,78464),A(28992,78459),A(28997,78466),A(28993,78461),A(28990,78465),A(28995,78463),A(28991,78460))
	set = SetCollector:AddSet(70000,nil,col,10701,"RO_PVP_19",LEATHER,ROGUE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(29189,78446),A(29191,78448),A(29187,78443),A(29192,78450),A(29188,78445),A(29185,78449),A(29190,78447),A(29186,78444))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(28994,78462),A(28996,78464),A(28992,78459),A(28997,78466),A(28993,78461),A(28990,78465),A(28995,78463),A(28991,78460))
end


local function GetShamanAppearances()
	local col = ""
	local set = ""

	col = SetCollector.ARTIFACT
	--[[set = SetCollector:AddSet(70000,nil,col,10,"SH_AR_CASTER_10",MAIL,SHAMAN,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"ONE",TRANSMOG,A(27742,76534,128935),A(29134,77278,128936))
				SetCollector:AddVariant(70000,nil,col,set,"TWO",TRANSMOG,A(27870,77653,128935),A(29135,77279,128936))
				SetCollector:AddVariant(70000,nil,col,set,"THREE",TRANSMOG,A(27871,77654,128935),A(29136,77280,128936))
				SetCollector:AddVariant(70000,nil,col,set,"FOUR",TRANSMOG,A(27872,77655,128935),A(29137,77281,128936))
	set = SetCollector:AddSet(70000,nil,col,11,"SH_AR_CASTER_11",MAIL,SHAMAN,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"ONE",TRANSMOG,A(27873,77656,128935),A(30544,78644,128936))
	set = SetCollector:AddSet(70000,nil,col,10,"SH_AR_MELEE_10",MAIL,SHAMAN,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"ONE",TRANSMOG,A(27384,76535,128819),A(27609,73717,128873))
				SetCollector:AddVariant(70000,nil,col,set,"TWO",TRANSMOG,A(27385,76543,128819),A(27609,80554,128873))
				SetCollector:AddVariant(70000,nil,col,set,"THREE",TRANSMOG,A(27386,76544,128819),A(27609,80555,128873))
				SetCollector:AddVariant(70000,nil,col,set,"FOUR",TRANSMOG,A(27387,76545,128819),A(27609,80556,128873))
	set = SetCollector:AddSet(70000,nil,col,11,"SH_AR_MELEE_11",MAIL,SHAMAN,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"ONE",TRANSMOG,A(27374,76546,128819),A(31838,80557,128873))
	set = SetCollector:AddSet(70000,nil,col,10,"SH_AR_HEALER_10",MAIL,SHAMAN,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"ONE",TRANSMOG,A(27676,76536,128911),A(28097,76537,128934))
				SetCollector:AddVariant(70000,nil,col,set,"TWO",TRANSMOG,A(27677,77672,128911),A(28098,77691,128934))
				SetCollector:AddVariant(70000,nil,col,set,"THREE",TRANSMOG,A(27678,77673,128911),A(28099,77692,128934))
				SetCollector:AddVariant(70000,nil,col,set,"FOUR",TRANSMOG,A(27679,77674,128911),A(28100,77693,128934))
	set = SetCollector:AddSet(70000,nil,col,11,"SH_AR_HEALER_11",MAIL,SHAMAN,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"ONE",TRANSMOG,A(27743,77675,128911),A(28097,77694,128934))]]--

	col = SetCollector.LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,50,"SH_LG_CASTER_110",MAIL,SHAMAN,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_LG_CASTER_110",TRANSMOG,A(6844,78759),A(10114,78787),A(17407,78768),A(8006,76319),A(16160,78739))
	set = SetCollector:AddSet(70000,nil,col,51,"SH_LG_HEALER_110",MAIL,SHAMAN,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_LG_CASTER_110",TRANSMOG,A(8443,78789),A(9923,78743),A(4573,78770),A(8006,76319),A(15925,78740))
	set = SetCollector:AddSet(70000,nil,col,52,"SH_LG_MELEE_110",MAIL,SHAMAN,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_LG_CASTER_110",TRANSMOG,A(18562,79374),A(15919,78769),A(13592,78788),A(8006,76319),A(19925,79500))

	col = SetCollector.RAID
	-- Antorus, the Burning Throne
	set = SetCollector:AddSet(70000,nil,col,10703,"SH_TR_21",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(35098,90235),A(35100,90243),A(35772,90227),A(35096,90223),A(35101,89905),A(35097,90231),A(35094,89897),A(35099,90239),A(35095,90580))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(35089,90236),A(35091,90244),A(35764,90228),A(35087,90224),A(35092,89906),A(35088,90232),A(35085,89898),A(35090,90240),A(35086,90581))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(35106,90237),A(35108,90245),A(35768,90229),A(35104,90225),A(35109,89907),A(35105,90233),A(35102,89899),A(35107,90241),A(35103,90582))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(35122,90238),A(35124,90246),A(35780,90230),A(35120,90226),A(35125,89908),A(35121,90234),A(35118,89900),A(35123,90242),A(35119,90583))
	-- Tomb of Sargeras
	set = SetCollector:AddSet(70000,nil,col,10702,"SH_TR_20",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(34317,86331),A(34319,86339),A(34302,86323),A(34321,86319),A(34316,86327),A(34314,86727),A(34318,86335),A(34315,86707))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(33702,86332),A(33704,86340),A(34299,86324),A(33706,86320),A(33701,86328),A(33698,86728),A(33703,86336),A(33699,86708))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(33720,86333),A(33722,86341),A(34310,86325),A(33724,86321),A(33719,86329),A(33716,86729),A(33721,86337),A(33717,86709))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(33868,86334),A(33870,86342),A(34311,86326),A(33872,86322),A(33867,86330),A(33865,86730),A(33869,86338),A(33866,86710))
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,10701,"SH_TR_19",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32095,81070),A(32096,81073),A(32086,81539),A(32099,81072),A(32098,81257),A(32094,81069),A(32091,81961),A(32097,81071),A(32092,81869))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(30937,79871),A(30938,79886),A(31364,81536),A(30942,79880),A(30940,80523),A(30936,79865),A(30933,81958),A(30939,79877),A(30934,81866))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(30909,79872),A(30912,79887),A(31338,81537),A(30914,79881),A(30931,81255),A(30908,79866),A(30906,81959),A(30910,79878),A(30911,81867))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31039,79873),A(31041,79888),A(31348,81538),A(31043,79882),A(31042,81256),A(31038,79867),A(30964,81960),A(31040,79879),A(31036,81868))

	col = SetCollector.PVP
	set = SetCollector:AddSet(70200,nil,col,10702,"SH_PVP_20",MAIL,SHAMAN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(30928,79636),A(30929,79638),A(30926,79633),A(30931,79640),A(30927,79635),A(30924,79639),A(30930,79637),A(30925,79634))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(313229,81523),A(31334,81525),A(31336,81520),A(31335,81527),A(31332,81522),A(31328,81526),A(31333,81524),A(31330,81521))
	set = SetCollector:AddSet(70200,nil,col,10702,"SH_PVP_20",MAIL,SHAMAN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(30918,79700),A(30919,79702),A(30921,79697),A(30920,79704),A(30917,79699),A(30915,79703),A(30922,79701),A(30923,79698))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(313229,81523),A(31334,81525),A(31336,81520),A(31335,81527),A(31332,81522),A(31328,81526),A(31333,81524),A(31330,81521))

	set = SetCollector:AddSet(70000,nil,col,10701,"SH_PVP_19",MAIL,SHAMAN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(30928,79636),A(30929,79638),A(30926,79633),A(30931,79640),A(30927,79635),A(30924,79639),A(30930,79637),A(30925,79634))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(313229,81523),A(31334,81525),A(31336,81520),A(31335,81527),A(31332,81522),A(31328,81526),A(31333,81524),A(31330,81521))
	set = SetCollector:AddSet(70000,nil,col,10701,"SH_PVP_19",MAIL,SHAMAN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(30918,79700),A(30919,79702),A(30921,79697),A(30920,79704),A(30917,79699),A(30915,79703),A(30922,79701),A(30923,79698))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(313229,81523),A(31334,81525),A(31336,81520),A(31335,81527),A(31332,81522),A(31328,81526),A(31333,81524),A(31330,81521))
end


local function GetWarlockAppearances()
	local col = ""
	local set = ""
	
	--[[col = SetCollector.ARTIFACT
	set = SetCollector:AddSet(70000,nil,col,10,"WK_AR_CASTER_10",CLOTH,WARLOCK,CASTER,ANY)				-- Destruction
				SetCollector:AddVariant(70000,nil,col,set,"ONE",TRANSMOG,A(27902,74595,128941))
				SetCollector:AddVariant(70000,nil,col,set,"TWO",TRANSMOG,A(27900,74596,128941))]]--
	
	col = SetCollector.LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,50,"WK_LG_CASTER_110",CLOTH,WARLOCK,CASTER,ANY)		-- Destruction
				SetCollector:AddVariant(70000,nil,col,set,"WK_LG_CASTER_110",TRANSMOG,A(24713,76267),A(1466,76276),A(21312,76313),A(14774,76251),A(7318,76312))
	set = SetCollector:AddSet(70000,nil,col,51,"WK_LG_CASTER_110",CLOTH,WARLOCK,CASTER,ANY)		-- Demonology
				SetCollector:AddVariant(70000,nil,col,set,"WK_LG_CASTER_110",TRANSMOG,A(18071,76273),A(12774,76270),A(14717,76266),A(14774,76251),A(7318,76312))
	set = SetCollector:AddSet(70000,nil,col,52,"WK_LG_CASTER_110",CLOTH,WARLOCK,CASTER,ANY)		-- Affliction
				SetCollector:AddVariant(70000,nil,col,set,"WK_LG_CASTER_110",TRANSMOG,A(12764,76274),A(26163,76272),A(3131,76314),A(14774,76251),A(7318,76312))

	col = SetCollector.RAID
	-- Antorus, the Burning Throne
	set = SetCollector:AddSet(70000,nil,col,10703,"WK_TR_21",CLOTH,WARLOCK,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(34814,90255),A(34816,90267),A(35367,90247),A(34818,90263),A(34817,89785),A(34812,90251),A(34810,89737),A(34815,90259),A(34811,89749))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(34797,90256),A(34799,90268),A(35357,90248),A(34801,90264),A(34800,89786),A(34796,90252),A(34794,89738),A(34798,90260),A(34795,89750))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(34789,90257),A(34791,90269),A(35352,90249),A(34793,90265),A(34792,89787),A(34788,90253),A(34786,89739),A(34790,90261),A(34787,89751))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(34839,90258),A(34841,90270),A(35342,90250),A(34843,90266),A(34842,89788),A(34838,90254),A(34836,89740),A(34840,90262),A(34837,89752))
	-- Tomb of Sargeras
	set = SetCollector:AddSet(70000,nil,col,10702,"WK_TR_20",CLOTH,WARLOCK,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(33203,86351),A(33205,86363),A(33232,86343),A(33207,86359),A(33202,86347),A(33199,86759),A(33204,86355),A(33200,86739))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(33149,86352),A(33151,86364),A(33226,86344),A(33153,86360),A(33148,86348),A(33145,86760),A(33150,86356),A(33146,86740))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(33096,86353),A(33098,86365),A(33214,86345),A(33100,86361),A(33095,86349),A(33092,86761),A(33097,86357),A(33093,86741))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(33194,86354),A(33196,86366),A(33238,86346),A(33198,86362),A(33193,86350),A(33190,86762),A(33195,86358),A(33191,86742))
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,10701,"WK_TR_19",CLOTH,WARLOCK,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(31884,81097),A(31886,81100),A(31871,81562),A(31888,81099),A(31883,81096),A(31885,81098))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(29171,79784),A(29173,79811),A(29040,81559),A(29175,79802),A(29170,79775),A(29172,79793))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(29161,79785),A(29163,79812),A(29028,81560),A(29165,79803),A(29160,79776),A(29162,79794))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29083,79786),A(29085,79813),A(29049,81561),A(29087,79804),A(29082,79777),A(29084,79795))
				
	col = SetCollector.PVP
	set = SetCollector:AddSet(70000,nil,col,10701,"WK_PVP_19",CLOTH,WARLOCK,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(29144,78502),A(29146,78505),A(29145,78504),A(29147,78507),A(29142,78501),A(29139,78506),A(29143,78503),A(29140,78500))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(29073,78485),A(29076,78488),A(29078,78487),A(29077,78490),A(29072,78484),A(29069,78489),A(29074,78486),A(29070,78483))
	set = SetCollector:AddSet(70000,nil,col,10701,"WK_PVP_19",CLOTH,WARLOCK,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(29180,78494),A(29182,78497),A(29184,78496),A(29183,78499),A(29179,78493),A(29176,78498),A(29181,78495),A(29177,78492))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(29073,78485),A(29076,78488),A(29078,78487),A(29077,78490),A(29072,78484),A(29069,78489),A(29074,78486),A(29070,78483))
end


local function GetWarriorAppearances()
	local col = ""
	local set = ""

	col = SetCollector.LEGENDARY
	set = SetCollector:AddSet(70000,nil,col,50,"WR_LG_MELEE_110",PLATE,WARRIOR,MELEE,ANY)		-- Arms
				SetCollector:AddVariant(70000,nil,col,set,"WR_LG_MELEE_110",TRANSMOG,A(15788,78792),A(20175,78745),A(26953,78772),A(11590,78762),A(13785,76305))
	set = SetCollector:AddSet(70000,nil,col,51,"WR_LG_MELEE_110",PLATE,WARRIOR,MELEE,ANY)		-- Fury
				SetCollector:AddVariant(70000,nil,col,set,"WR_LG_MELEE_110",TRANSMOG,A(7730,78773),A(18867,78812),A(15788,78792),A(26953,78772),A(13785,76305))
	set = SetCollector:AddSet(70000,nil,col,52,"WR_LG_TANK_110",PLATE,WARRIOR,TANK,ANY)		-- Protection
				SetCollector:AddVariant(70000,nil,col,set,"WR_LG_TANK_110",TRANSMOG,A(11157,78722),A(15788,78792),A(6335,78793),A(15910,78774),A(13785,76305))

	col = SetCollector.RAID
	-- Antorus, the Burning Throne
	--set = SetCollector:AddSet(70000,nil,col,10703,"WR_TR_21",PLATE,WARRIOR,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())

	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,10702,"WR_TR_20",PLATE,WARRIOR,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,10701,"WR_TR_19",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32157,81052),A(32160,81054),A(32127,81055),A(32156,81050),A(32158,81051),A(32159,81053))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(31444,79913),A(31447,79931),A(32242,81544),A(31443,79895),A(31445,79904),A(31446,79922))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(31410,79914),A(31413,79932),A(31545,81545),A(31409,79896),A(31411,79905),A(31412,79923))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31449,79915),A(31455,79933),A(32229,81546),A(31452,79897),A(31453,79906),A(31454,79924))
				
	col = SetCollector.PVP
	set = SetCollector:AddSet(70000,nil,col,10701,"WR_PVP_19",PLATE,WARRIOR,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(31436,79740),A(31439,79742),A(31435,79737),A(31440,79744),A(31437,79739),A(31433,79743),A(31438,79741),A(31434,79738))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(31319,79756),A(31325,79758),A(31322,79753),A(31326,79760),A(31323,79755),A(31320,79759),A(31324,79757),A(31321,79754))
	set = SetCollector:AddSet(70000,nil,col,10701,"WR_PVP_19",PLATE,WARRIOR,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(31418,79748),A(31421,79750),A(31417,79745),A(31422,79742),A(31419,79747),A(31415,79751),A(31420,79749),A(31416,79746))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(31319,79756),A(31325,79758),A(31322,79753),A(31326,79760),A(31323,79755),A(31320,79759),A(31324,79757),A(31321,79754))
end

--
--	GLOBAL FUNCTIONS
--

function SetCollector:GetVersion07Appearances(expansion)
	if expansion.v07 then
		-- Common
		GetLegendaries()
		GetExpansionAppearances()
		-- Class-specific
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
	end
end


function SetCollector:GetVersion07Status()
	return SetCollector:GetExpansionStatus("7")
end


function SetCollector:SetVersion07Status()
	SetCollector:SetExpansionStatus("7")
end