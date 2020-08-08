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
	set = SetCollector:AddSet(70000,nil,col,210,"SH_TR_21",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(35098,90235),A(35100,90243),A(35772,90227),A(35096,90223),A(35101,89905),A(35097,90231),A(35094,89897),A(35099,90239),A(35095,90580))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(35089,90236),A(35091,90244),A(35764,90228),A(35087,90224),A(35092,89906),A(35088,90232),A(35085,89898),A(35090,90240),A(35086,90581))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(35106,90237),A(35108,90245),A(35768,90229),A(35104,90225),A(35109,89907),A(35105,90233),A(35102,89899),A(35107,90241),A(35103,90582))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(35122,90238),A(35124,90246),A(35780,90230),A(35120,90226),A(35125,89908),A(35121,90234),A(35118,89900),A(35123,90242),A(35119,90583))
	-- Tomb of Sargeras
	set = SetCollector:AddSet(70000,nil,col,200,"SH_TR_20",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(34317,86331),A(34319,86339),A(34302,86323),A(34321,86319),A(34316,86327),A(34314,86727),A(34318,86335),A(34315,86707))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(33702,86332),A(33704,86340),A(34299,86324),A(33706,86320),A(33701,86328),A(33698,86728),A(33703,86336),A(33699,86708))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(33720,86333),A(33722,86341),A(34310,86325),A(33724,86321),A(33719,86329),A(33716,86729),A(33721,86337),A(33717,86709))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(33868,86334),A(33870,86342),A(34311,86326),A(33872,86322),A(33867,86330),A(33865,86730),A(33869,86338),A(33866,86710))
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,190,"SH_TR_19",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32095,81070),A(32096,81073),A(32086,81539),A(32099,81072),A(32098,81257),A(32094,81069),A(32091,81961),A(32097,81071),A(32092,81869))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(30937,79871),A(30938,79886),A(31364,81536),A(30942,79880),A(30940,80523),A(30936,79865),A(30933,81958),A(30939,79877),A(30934,81866))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(30909,79872),A(30912,79887),A(31338,81537),A(30914,79881),A(30931,81255),A(30908,79866),A(30906,81959),A(30910,79878),A(30911,81867))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31039,79873),A(31041,79888),A(31348,81538),A(31043,79882),A(31042,81256),A(31038,79867),A(30964,81960),A(31040,79879),A(31036,81868))

	col = SetCollector.PVP
	set = SetCollector:AddSet(70200,nil,col,19,"SH_PVP_20",MAIL,SHAMAN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(30928,79636),A(30929,79638),A(30926,79633),A(30931,79640),A(30927,79635),A(30924,79639),A(30930,79637),A(30925,79634))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(313229,81523),A(31334,81525),A(31336,81520),A(31335,81527),A(31332,81522),A(31328,81526),A(31333,81524),A(31330,81521))
	set = SetCollector:AddSet(70200,nil,col,19,"SH_PVP_20",MAIL,SHAMAN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(30918,79700),A(30919,79702),A(30921,79697),A(30920,79704),A(30917,79699),A(30915,79703),A(30922,79701),A(30923,79698))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(313229,81523),A(31334,81525),A(31336,81520),A(31335,81527),A(31332,81522),A(31328,81526),A(31333,81524),A(31330,81521))

	set = SetCollector:AddSet(70000,nil,col,19,"SH_PVP_19",MAIL,SHAMAN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(30928,79636),A(30929,79638),A(30926,79633),A(30931,79640),A(30927,79635),A(30924,79639),A(30930,79637),A(30925,79634))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(313229,81523),A(31334,81525),A(31336,81520),A(31335,81527),A(31332,81522),A(31328,81526),A(31333,81524),A(31330,81521))
	set = SetCollector:AddSet(70000,nil,col,19,"SH_PVP_19",MAIL,SHAMAN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(30918,79700),A(30919,79702),A(30921,79697),A(30920,79704),A(30917,79699),A(30915,79703),A(30922,79701),A(30923,79698))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(313229,81523),A(31334,81525),A(31336,81520),A(31335,81527),A(31332,81522),A(31328,81526),A(31333,81524),A(31330,81521))

	col = SetCollector.OTHER
	set = SetCollector:AddSet(70000,nil,col,1100,"SH_OTH_19",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_OTH_19",TRANSMOG,A(32499,80974),A(32501,80976),A(32497,80971),A(32502,80978),A(32498,80973),A(32495,80977),A(32500,80975),A(32496,80972))
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
	--set = SetCollector:AddSet(70000,nil,col,210,"WR_TR_21",PLATE,WARRIOR,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A()),A(),A(),A(),A(),A(),A(),A())

	-- Tomb of Sargeras
	--set = SetCollector:AddSet(70000,nil,col,200,"WR_TR_20",PLATE,WARRIOR,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--			SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	-- The Nighthold
	set = SetCollector:AddSet(70000,nil,col,191,"WR_TR_19",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32157,81052),A(32160,81054),A(32127,81055),A(32156,81050),A(32158,81051),A(32159,81053))		-- Need belt and feet for each variant
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(31444,79913),A(31447,79931),A(32242,81544),A(31443,79895),A(31445,79904),A(31446,79922))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(31410,79914),A(31413,79932),A(31545,81545),A(31409,79896),A(31411,79905),A(31412,79923))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31449,79915),A(31455,79933),A(32229,81546),A(31452,79897),A(31453,79906),A(31454,79924))
				
	col = SetCollector.PVP
	set = SetCollector:AddSet(70000,nil,col,19,"WR_PVP_19",PLATE,WARRIOR,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(31436,79740),A(31439,79742),A(31435,79737),A(31440,79744),A(31437,79739),A(31433,79743),A(31438,79741),A(31434,79738))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(31319,79756),A(31325,79758),A(31322,79753),A(31326,79760),A(31323,79755),A(31320,79759),A(31324,79757),A(31321,79754))
	set = SetCollector:AddSet(70000,nil,col,19,"WR_PVP_19",PLATE,WARRIOR,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(31418,79748),A(31421,79750),A(31417,79745),A(31422,79742),A(31419,79747),A(31415,79751),A(31420,79749),A(31416,79746))
				SetCollector:AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(31319,79756),A(31325,79758),A(31322,79753),A(31326,79760),A(31323,79755),A(31320,79759),A(31324,79757),A(31321,79754))
				
	col = SetCollector.OTHER
	set = SetCollector:AddSet(70000,nil,col,1100,"WR_OTH_19",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WR_OTH_19",TRANSMOG,A(32561,80958),A(32563,80960),A(32559,80955),A(32564,80962),A(32560,80957),A(32557,80961),A(32562,80959),A(32558,80956))
end

--
--	GLOBAL FUNCTIONS
--

function SetCollector:GetVersion07Appearances()
	GetLegendaries()
	GetShamanAppearances()
	GetWarriorAppearances()
end