-- Appearances from Wrath of the Lich King (v.3.x)

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
				
	set = SetCollector:AddSet(70000,nil,col,3,"LG_HEALER_80",ANY,ANY,HEALER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"LG_HEALER_80",TRANSMOG,A(11613,22178,46017))
end


local function GetDeathKnightAppearances()
	local col = ""
	local set = ""
				
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,10304,"DK_TR_MELEE_10",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12300,24551),A(12302,24553),A(12298,24549),A(12299,24550),A(12301,24552))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12569,25005),A(12567,25003),A(12571,25007),A(12570,25006),A(12568,25004))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12463,25190),A(12474,25192),A(12444,25188),A(12491,25189),A(12448,25191))
				
	set = SetCollector:AddSet(70000,nil,col,10303,"DK_TR_MELEE_A_09",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11905),A(11923),A(11746),A(11791),A(11757))
				
	set = SetCollector:AddSet(70000,nil,col,10303,"DK_TR_MELEE_H_09",PLATE,DEATHKNIGHT,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11904),A(11921),A(11827),A(11960),A(11838))
				
	set = SetCollector:AddSet(70000,nil,col,10302,"DK_TR_MELEE_08",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11400,21810),A(11403,21812),A(11399,21808),A(11401,21809),A(11402,21811))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10325,22239),A(10328,22241),A(10326,22236),A(10329,22238),A(11644,22240))
				
	set = SetCollector:AddSet(70000,nil,col,10301,"DK_TR_MELEE_07",PLATE,DEATHKNIGHT,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10191,18994),A(10193,18996),A(10189,18992),A(10190,18993),A(10192,18995))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10418,19521),A(10420,19524),A(10415,19518),A(10416,19519),A(10419,19523))
end


local function GetDruidAppearances()
	local col = ""
	local set = ""
				
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,10304,"DR_TR_CASTER_10",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12306,24900,50821),A(12308,24898,50819),A(12304,24902,50823),A(12305,24901,50822),A(12307,24899,50820))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12262,25027,51149),A(12340,25025,51147),A(12572,25023,51145),A(12239,25026,51148),A(12221,25024,51146))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12484,25168,51290),A(12506,25170,51292),A(12598,25172,51294),A(12450,25169,51291),A(12494,25171,51293))
	
	set = SetCollector:AddSet(70000,nil,col,10303,"DR_TR_CASTER_A_09",LEATHER,DRUID,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11915),A(11896),A(11751),A(11984),A(11777))
	
	set = SetCollector:AddSet(70000,nil,col,10303,"DR_TR_CASTER_H_09",LEATHER,DRUID,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11916),A(11931),A(11829),A(11985),A(11858))

	set = SetCollector:AddSet(70000,nil,col,10302,"DR_TR_CASTER_08",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11405,22428,46313),A(11408,21820,45352),A(11407,21822,45354),A(11404,21819,45351),A(11406,21821,45353))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11673,22311,46191),A(11669,22316,46196),A(11671,22314,46194),A(11670,22309,46189),A(11672,22312,46192))
	
	set = SetCollector:AddSet(70000,nil,col,10301,"DR_TR_CASTER_07",LEATHER,DRUID,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10162,18948,39545),A(10165,18951,39548),A(10167,18950,39547),A(10166,18947,39544),A(10164,18949,39546))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10378,19450,40467),A(10382,19453,40470),A(10380,19452,40469),A(10377,19449,40466),A(10379,19451,40468))
end


local function GetHunterAppearances()
	local col = ""
	local set = ""

	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,10304,"HU_TR_RANGED_10",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12310,24561,50115),A(12312,24563,50117),A(12313,24564,50118),A(12309,24560,50114),A(12311,24562,50116))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12234,25031,51153),A(12261,25029,51151),A(12272,25028,51150),A(12350,25032,51154),A(12224,25030,51152))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12596,25164,51286),A(12481,25166,51288),A(12597,25167,51289),A(12453,25163,51285),A(12466,25165,51287))

	set = SetCollector:AddSet(70000,nil,col,10303,"HU_TR_RANGED_A_09",MAIL,HUNTER,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11910),A(11926),A(11710),A(11986),A(11775))
				
	set = SetCollector:AddSet(70000,nil,col,10303,"HU_TR_RANGED_H_09",MAIL,HUNTER,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11909),A(11927),A(11988),A(11987),A(11848))

	set = SetCollector:AddSet(70000,nil,col,10302,"HU_TR_RANGED_08",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11411,21829,45361),A(11413,21831,45363),A(11414,21832,45364),A(11410,21828,45360),A(11412,21830,45362))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11659,22265,46143),A(11660,22267,46145),A(11658,22263,46141),A(11561,22264,46142),A(11565,22266,46144))

	set = SetCollector:AddSet(70000,nil,col,10301,"HU_TR_RANGED_07",MAIL,HUNTER,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10173,18962,39578),A(10176,18965,39581),A(10174,18963,39579),A(10177,18966,39582),A(10175,18964,39580))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10397,19478,40505),A(10399,19480,40507),A(10395,19476,40503),A(10396,19477,40504),A(10398,19479,40506))
end


local function GetMageAppearances()
	local col = ""
	local set = ""

	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,10304,"MA_TR_CASTER_10",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12388,24659,50276),A(12391,24662,50279),A(12390,24661,50278),A(12387,24658,50275),A(12389,24660,50277))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12574,25036,51158),A(12573,25033,51155),A(12426,25034,51156),A(12256,25037,51159),A(12215,25035,51157))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12592,25159,51281),A(12595,25162,51284),A(12594,25161,51283),A(12591,25158,51280),A(12593,25160,51282))
	set = SetCollector:AddSet(70000,nil,col,10303,"MA_TR_CASTER_A_09",CLOTH,MAGE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11918),A(11932),A(11758),A(11792),A(11944))
	set = SetCollector:AddSet(70000,nil,col,10303,"MA_TR_CASTER_H_09",CLOTH,MAGE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11945),A(11947),A(11836),A(11854),A(11946))
	set = SetCollector:AddSet(70000,nil,col,10302,"MA_TR_CASTER_08",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11415,21833,45365),A(11418,21836,45369),A(11417,21835,45368),A(11652,22254,46131),A(11416,21834,45367))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11650,22252,46129),A(10463,22257,46134),A(11651,22253,46130),A(10461,22255,46132),A(11653,22256,46133))
	set = SetCollector:AddSet(70000,nil,col,10301,"MA_TR_CASTER_07",CLOTH,MAGE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10146,18914,39491),A(10149,18917,39494),A(10147,18915,39492),A(10150,18918,39495),A(10148,18916,39493))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10358,19406,40416),A(10361,19409,40419),A(10360,19408,40418),A(10357,19405,40415),A(10359,19407,40417))
end


local function GetPaladinAppearances()
	local col = ""
	local set = ""

	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,10304,"PA_TR_MELEE_10",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12411,24693),A(12409,24691),A(12413,24695),A(12412,24694),A(12410,24692))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12280,25040),A(12240,25038),A(12263,25042),A(12248,25041),A(12225,25039))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12498,25155),A(12452,25157),A(12485,25153),A(12469,25154),A(12456,25156))
	set = SetCollector:AddSet(70000,nil,col,10303,"PA_TR_MELEE_A_09",PLATE,PALADIN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11907),A(11925),A(11763),A(12005),A(11738))
	set = SetCollector:AddSet(70000,nil,col,10303,"PA_TR_MELEE_H_09",PLATE,PALADIN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11908),A(11924),A(11842),A(12006),A(11819))
	set = SetCollector:AddSet(70000,nil,col,10302,"PA_TR_MELEE_08",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11421,21844),A(11422,21847),A(11424,21842),A(11419,21843),A(11420,21846))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11668,22277),A(11664,22273),A(11666,22275),A(11667,22276),A(11665,22274))
	set = SetCollector:AddSet(70000,nil,col,10301,"PA_TR_MELEE_07",PLATE,PALADIN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10194,19010),A(10197,19012),A(10195,19008),A(10198,19009),A(10196,19005))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10427,19543),A(10429,19545),A(10425,19541),A(10426,19542),A(10428,19544))
end


local function GetPriestAppearances()
	local col = ""
	local set = ""

	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,10304,"PR_TR_CASTER_10",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12416,24702),A(12419,24968),A(12418,24704),A(12415,24701),A(12417,24703))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12254,25062),A(12438,25060),A(12341,25058),A(12344,25061),A(12575,25059))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12475,25133),A(12588,25135),A(12507,25137),A(12509,25134),A(12589,25136))
	set = SetCollector:AddSet(70000,nil,col,10303,"PR_TR_CASTER_A_09",CLOTH,PRIEST,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11983),A(11934),A(11723),A(11980),A(11733))
	set = SetCollector:AddSet(70000,nil,col,10303,"PR_TR_CASTER_H_09",CLOTH,PRIEST,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11920),A(11935),A(11807),A(11982),A(11815))
	set = SetCollector:AddSet(70000,nil,col,10302,"PR_TR_CASTER_08",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11427,21858),A(11431,21860),A(11430,21862),A(11428,21859),A(11429,21861))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11678,22292),A(11675,22286),A(11676,22289),A(11674,22284),A(11677,22291))
	set = SetCollector:AddSet(70000,nil,col,10301,"PR_TR_CASTER_07",CLOTH,PRIEST,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10157,18933),A(10160,18937),A(10158,18935),A(10161,18938),A(10159,18936))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10157,19439),A(10374,19442),A(10373,19441),A(10371,19437),A(10372,19440))
end


local function GetRogueAppearances()
	local col = ""
	local set = ""

	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,10304,"RO_TR_MELEE_10",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12296,24547),A(12303,24554),A(12294,24545),A(12295,24546),A(12297,24548))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12288,25065),A(12244,25063),A(12252,25067),A(12260,25066),A(12222,25064))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12505,25130),A(12467,25132),A(12473,25128),A(12482,25129),A(12495,25131))
				
	set = SetCollector:AddSet(70000,nil,col,10303,"RO_TR_MELEE_A_09",LEATHER,ROGUE,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11914),A(11929),A(11730),A(11936),A(11716))
				
	set = SetCollector:AddSet(70000,nil,col,10303,"RO_TR_MELEE_H_09",LEATHER,ROGUE,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11913),A(11930),A(11813),A(11966),A(11802))
				
	set = SetCollector:AddSet(70000,nil,col,10302,"RO_TR_MELEE_08",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11434,21865),A(11436,21867),A(11432,21863),A(11433,21864),A(11435,21866))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11647,22249),A(11649,22251),A(11645,22247),A(11646,22248),A(11648,22250))
				
	set = SetCollector:AddSet(70000,nil,col,10301,"RO_TR_MELEE_07",LEATHER,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10170,18959),A(10172,18961),A(10168,18957),A(10169,18958),A(10171,18960))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10392,19472),A(10394,19475),A(10389,19469),A(10390,19470),A(10393,19473))
end


local function GetShamanAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,10304,"SH_TR_CASTER_10",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12538,24921),A(12550,24923),A(12547,24919),A(12524,24859),A(12548,24920),A(12529,24869),A(12549,24922),A(12559,24985))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12355,25080),A(12279,25082),A(12345,25078),A(12265,24502),A(12282,25079),A(12258,24492),A(12223,25081),A(12219,24476))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12458,25115),A(26844,25113),A(12510,25117),A(12488,24797),A(12500,25116),A(12479,24784),A(12587,25114),A(12471,24771))
				
	set = SetCollector:AddSet(70000,nil,col,10303,"SH_TR_CASTER_A_09",MAIL,SHAMAN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11911),A(11898),A(11785),A(11742),A(11943),A(11722),A(11747))
				
	set = SetCollector:AddSet(70000,nil,col,10303,"SH_TR_CASTER_H_09",MAIL,SHAMAN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11912),A(11928),A(11853),A(11970),A(11828))
				
	set = SetCollector:AddSet(70000,nil,col,10302,"SH_TR_CASTER_08",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11438,21874),A(11440,21876),A(11441,21877),A(11437,21873),A(11439,21875))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11681,22329),A(11683,22331),A(11679,22326),A(11680,22327),A(11439,22330))
				
	set = SetCollector:AddSet(70000,nil,col,10301,"SH_TR_CASTER_07",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10178,18974),A(10181,18976),A(10179,18972),A(10114,18785),A(10182,18973),A(10089,18746),A(10180,18975),A(10067,18710))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10402,19489),A(10404,19491),A(10400,19487),A(10292,19346),A(10401,19488),A(10316,19349),A(10403,19490),A(10228,19066))
end


local function GetWarlockAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,10304,"WK_TR_CASTER_10",CLOTH,WARLOCK,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12371,24637),A(12374,24640),A(12373,24639),A(12370,24636),A(12372,24638))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12579,25086),A(12576,25083),A(12577,25084),A(12580,25087),A(12578,25085))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12586,25109),A(12465,25112),A(12459,25111),A(12476,25108),A(12493,25110))
	set = SetCollector:AddSet(70000,nil,col,10303,"WK_TR_CASTER_A_09",CLOTH,WARLOCK,CASTER,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11948),A(11949),A(11893),A(11950),A(11778))
	set = SetCollector:AddSet(70000,nil,col,10303,"WK_TR_CASTER_H_09",CLOTH,WARLOCK,CASTER,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11917),A(11933),A(11951),A(11952),A(11847))
	set = SetCollector:AddSet(70000,nil,col,10302,"WK_TR_CASTER_08",CLOTH,WARLOCK,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11443,21883),A(11447,21887),A(11446,21886),A(11444,21884),A(11445,21885))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11657,22262),A(11655,22259),A(11656,22260),A(11654,22258),A(11566,22261))
	set = SetCollector:AddSet(70000,nil,col,10301,"WK_TR_CASTER_07",CLOTH,WARLOCK,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10151,18919),A(10154,18922),A(10152,18920),A(10155,18923),A(10153,18921))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10363,19411),A(10366,19414),A(10365,19413),A(10362,19410),A(10364,19412))
end


local function GetWarriorAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,10304,"WR_TR_MELEE_10",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12291),A(12293),A(12289),A(12290),A(12292))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12243),A(12253),A(12233),A(12271),A(12226))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12582),A(12585),A(12581),A(12583),A(12584))
	
	set = SetCollector:AddSet(70000,nil,col,10303,"WR_TR_MELEE_A_09",PLATE,WARRIOR,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11903),A(11922),A(11712),A(11894),A(11734))
	
	set = SetCollector:AddSet(70000,nil,col,10303,"WR_TR_MELEE_H_09",PLATE,WARRIOR,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11906),A(11965),A(11798),A(11856),A(11814))
	
	set = SetCollector:AddSet(70000,nil,col,10302,"WR_TR_MELEE_08",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11450),A(11453),A(11449),A(11451),A(11452))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11663),A(11662),A(11661),A(11560),A(11563))
	
	set = SetCollector:AddSet(70000,nil,col,10301,"WR_TR_MELEE_07",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10184),A(10187),A(10185),A(10188),A(10186))
				SetCollector:AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10408),A(10410),A(10406),A(10407),A(10409))
end


--
--	GLOBAL FUNCTIONS
--

function SetCollector:GetVersion03Appearances(expansion)
	if expansion.v03 then
		-- Common
		GetLegendaries()
		-- Class-specific
		GetDeathKnightAppearances()
		GetDruidAppearances()
		GetHunterAppearances()
		GetMageAppearances()
		GetPaladinAppearances()
		GetPriestAppearances()
		GetRogueAppearances()
		GetShamanAppearances()
		GetWarlockAppearances()
		GetWarriorAppearances()
	end
end


function SetCollector:GetVersion03Status()
	return SetCollector:GetExpansionStatus("3")
end


function SetCollector:SetVersion03Status()
	SetCollector:SetExpansionStatus("3")
end