-- Appearances from Wrath of the Lich King (v.3.x)

--
-- LOCAL VARIABLES
--

local ALL            = SetCollector.ALL
local ANY            = SetCollector.ANY

-- Armor Type
local CLOTH            = SetCollector.CLOTH
local LEATHER        = SetCollector.LEATHER
local MAIL            = SetCollector.MAIL
local PLATE            = SetCollector.PLATE

-- Classes
local DEATHKNIGHT    = SetCollector.DEATHKNIGHT
local DEMONHUNTER    = SetCollector.DEMONHUNTER
local DRUID         = SetCollector.DRUID
local HUNTER         = SetCollector.HUNTER
local MAGE             = SetCollector.MAGE
local MONK             = SetCollector.MONK
local PALADIN         = SetCollector.PALADIN
local PRIEST         = SetCollector.PRIEST
local ROGUE         = SetCollector.ROGUE
local SHAMAN         = SetCollector.SHAMAN
local WARLOCK         = SetCollector.WARLOCK
local WARRIOR         = SetCollector.WARRIOR

-- Factions
local ALLIANCE         = SetCollector.ALLIANCE
local HORDE         = SetCollector.HORDE

-- Roles
local TANK             = SetCollector.TANK
local HEALER         = SetCollector.HEALER
local CASTER         = SetCollector.CASTER
local RANGED         = SetCollector.RANGED
local MELEE         = SetCollector.MELEE

-- Obtainable
local OBTAIN        = SetCollector.OBTAIN
local NOOBTAIN         = SetCollector.NOOBTAIN

-- Useable as Transmog
local TRANSMOG         = SetCollector.TRANSMOG
local NOTRANSMOG     = SetCollector.NOTRANSMOG


--
-- LOCAL FUNCTIONS
--

local function A(...) return SetCollector:CreateAppearance(...) end

local function GetLegendaries()
    local col = SetCollector.LEGENDARY
    local set = ""
                
    set = SetCollector:AddSetLegacy(70000,nil,col,3,"LG_HEALER_80",ANY,ANY,HEALER,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_HEALER_80",TRANSMOG,A(11613,22178,46017))
end


local function GetDeathKnightAppearances()
    local col, set, loc = ""
                
    col = SetCollector.RAID
    loc = "LOC_RAID_0304"
    set = SetCollector:AddSetLegacy(70000,nil,col,10304,"DK_TR_TANK_10",PLATE,DEATHKNIGHT,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(12300,24551),A(12302,24553),A(12298,24549),A(12540,24886),A(12299,24550),A(12759,25559),A(12301,24552),A(12758,25545))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(12569,25005),A(12567,25003),A(12571,25007),A(12570,25006),A(12568,25004))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(12463,25190),A(12474,25192),A(12444,25188),A(12447,24741),A(12491,25189),A(12454,24801),A(12448,25191),A(12457,24752))
    loc = "LOC_RAID_0303"
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"DK_TR_MELEE_A_09",PLATE,DEATHKNIGHT,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11905),A(11923),A(11746),A(11711,22482),A(11791),A(11741,22545),A(11757),A(11844,22782))
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"DK_TR_MELEE_H_09",PLATE,DEATHKNIGHT,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11904),A(11921),A(11827),A(11891,23057),A(11960),A(11811,23058),A(11838),A(11812,22681))
    loc = "LOC_RAID_0302"
    set = SetCollector:AddSetLegacy(70000,nil,col,10302,"DK_TR_TANK_08",PLATE,DEATHKNIGHT,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11400,21810),A(11403,21812),A(11399,21808),A(11401,21809),A(11402,21811))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10325,22239),A(10328,22241),A(10326,22236),A(10329,22238),A(11644,22240),A(10330,21947))
    loc = "LOC_RAID_0301"
    set = SetCollector:AddSetLegacy(70000,nil,col,10301,"DK_TR_TANK_07",PLATE,DEATHKNIGHT,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10191,18994),A(10193,18996),A(10189,18992),A(10190,18993),A(10192,18995))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10418,19521),A(10420,19524),A(10415,19518),A(10416,19519),A(10419,19523),A(10454,19626))
end


local function GetDruidAppearances()
    local col, set, loc = ""
                
    col = SetCollector.RAID
    loc = "LOC_RAID_0304"
    set = SetCollector:AddSetLegacy(70000,nil,col,10304,"DR_TR_CASTER_10",LEATHER,DRUID,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(12306,24900),A(12308,24898),A(12546, 24907),A(12554, 24966),A(12305,24901),A(12536, 24879),A(12307,24899),A(12528, 24868))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(12262,25027),A(12340,25025),A(12249, 24479),A(12425, 24711),A(12239,25026),A(12286, 24533),A(12221,25024),A(12217, 24487))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(12484,25168),A(12506,25170),A(12598,25172),A(12460, 24756),A(12450,25169),A(12501, 24813),A(12494,25171),A())
    loc = "LOC_RAID_0303"
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"DR_TR_CASTER_A_09",LEATHER,DRUID,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11915),A(11896),A(11751),A(11736, 22537),A(11984),A(11761, 23106),A(11777),A(11721, 22503))
    
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"DR_TR_CASTER_H_09",LEATHER,DRUID,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11916),A(11931),A(11829),A(11818,22687),A(11985),A(11840,23167),A(11858),A(11805,22674))
    loc = "LOC_RAID_0302"
    set = SetCollector:AddSetLegacy(70000,nil,col,10302,"DR_TR_CASTER_08",LEATHER,DRUID,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11405,22428),A(11408,21820),A(11407,21822),A(11404,21819),A(11498,21975),A(11406,21821))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11673,22311),A(11669,22316),A(11671,22314),A(11670,22309),A(11672,22312))
    loc = "LOC_RAID_0301"
    set = SetCollector:AddSetLegacy(70000,nil,col,10301,"DR_TR_CASTER_07",LEATHER,DRUID,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10162,18948),A(10165,18951),A(10167,18950),A(10104, 18769),A(10166,18947),A(10115, 18786),A(10164,18949),A(10076, 18723))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10378,19450),A(10382,19453),A(10380,19452),A(10218, 19345),A(10377,19449),A(10287, 19362),A(10379,19451),A(10315, 19402))
end


local function GetHunterAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0304"
    set = SetCollector:AddSetLegacy(70000,nil,col,10304,"HU_TR_RANGED_10",MAIL,HUNTER,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(12310,24561),A(12312,24563),A(12313,24564),A(12533, 24874),A(12309,24560),A(12521, 25196),A(12311,24562),A(12544, 24894))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(12234,25031),A(12261,25029),A(12272,25028),A(12251, 24482),A(12350,25032),A(12422, 24708),A(12224,25030),A(12220, 24535))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(12596,25164),A(12481,25166),A(12597,25167),A(12472, 24774),A(12453,25163),A(12489, 24798),A(12466,25165),A(12504, 24818))
    loc = "LOC_RAID_0303"
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"HU_TR_RANGED_A_09",MAIL,HUNTER,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11910),A(11926),A(11710),A(11742,22890),A(11986),A(11767,22594),A(11775),A(11748,22573))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"HU_TR_RANGED_H_09",MAIL,HUNTER,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11909),A(11927),A(11988),A(11821,23042),A(11987),A(11843,22781),A(11848),A(11833,23170))
    loc = "LOC_RAID_0302"
    set = SetCollector:AddSetLegacy(70000,nil,col,10302,"HU_TR_RANGED_08",MAIL,HUNTER,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11411,21829),A(11413,21831),A(11414,21832),A(),A(11410,21828),A(),A(11412,21830),A())
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11659,22265),A(11660,22267),A(11658,22263),A(),A(11561,22264),A(11556,22068),A(11565,22266),A())
    loc = "LOC_RAID_0301"
    set = SetCollector:AddSetLegacy(70000,nil,col,10301,"HU_TR_RANGED_07",MAIL,HUNTER,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10173,18962),A(10176,18965),A(10174,18963),A(10102, 18765),A(10177,18966),A(10120, 18824),A(10175,18964),A(10081, 18735))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10397,19478),A(10399,19480),A(10395,19476),A(10206, 19037),A(10396,19477),A(10246, 19300),A(10398,19479),A(10280, 19229))
end


local function GetMageAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0304"
    set = SetCollector:AddSetLegacy(70000,nil,col,10304,"MA_TR_CASTER_10",CLOTH,MAGE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(12388,24659),A(12391,24662),A(12390,24661),A(12560,24986),A(12387,24658),A(12563,24993),A(12389,24660),A(12541,24887))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(12574,25036),A(12573,25033),A(12426,25034),A(12247,24477),A(12256,25037),A(12238,24976),A(12215,25035),A(12214,24527))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(12592,25159),A(12595,25162),A(12594,25161),A(),A(12591,25158),A(31908,80022),A(12593,25160),A())
    loc = "LOC_RAID_0303"
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"MA_TR_CASTER_A_09",CLOTH,MAGE,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11918),A(11932),A(11758),A(11762,22585),A(11792),A(11745,22549),A(11944),A(41095,106475))
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"MA_TR_CASTER_H_09",CLOTH,MAGE,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11945),A(11947),A(11836),A(11839,23052),A(11854),A(11961,23160),A(11946),A(11849,22722))
    loc = "LOC_RAID_0302"
    set = SetCollector:AddSetLegacy(70000,nil,col,10302,"MA_TR_CASTER_08",CLOTH,MAGE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11415,21833),A(11418,21836),A(11417,21835),A(11652,22254),A(11416,21834))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11650,22252),A(10463,22257),A(11651,22253),A(10461,22255),A(11653,22256))
    loc = "LOC_RAID_0301"
    set = SetCollector:AddSetLegacy(70000,nil,col,10301,"MA_TR_CASTER_07",CLOTH,MAGE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10146,18914),A(10149,18917),A(10147,18915),A(10090,18747),A(10150,18918),A(10077,18724),A(10148,18916),A(10098,18761))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10358,19406),A(10361,19409),A(10360,19408),A(10286,19241),A(10357,19405),A(10229,19067),A(10359,19407),A(10456,19633))
end


local function GetPaladinAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0304"
    set = SetCollector:AddSetLegacy(70000,nil,col,10304,"PA_TR_TANK_10",PLATE,PALADIN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(12411,24693),A(12409,24691),A(12413,24695),A(12537,24880),A(12412,24694),A(12736,25399),A(12410,24692),A(12522,24857))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(12280,25040),A(12240,25038),A(12263,25042),A(12343,24596),A(12248,25041),A(12255,24488),A(12225,25039),A(12424,24710))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(12498,25155),A(12452,25157),A(12485,25153),A(12508,24826),A(12469,25154),A(12477,24781),A(12456,25156),A(12461,24758))
    loc = "LOC_RAID_0303"
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"PA_TR_TANK_A_09",PLATE,PALADIN,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11907),A(11925),A(11763),A(11750,22910),A(12005),A(11781,11895),A(11738),A(11720,22500))
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"PA_TR_TANK_H_09",PLATE,PALADIN,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11908),A(11924),A(11842),A(11831,23158),A(12006),A(11851,23049),A(11819),A(11806,23068))
    loc = "LOC_RAID_0302"
    set = SetCollector:AddSetLegacy(70000,nil,col,10302,"PA_TR_TANK_08",PLATE,PALADIN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11421,21844),A(11422,21847),A(11424,21842),A(11419,21843),A(25084,67741),A(11420,21846))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11668,22277),A(11664,22273),A(11666,22275),A(15571,35714),A(11667,22276),A(15570,35713),A(11665,22274))
    loc = "LOC_RAID_0301"
    set = SetCollector:AddSetLegacy(70000,nil,col,10301,"PA_TR_TANK_07",PLATE,PALADIN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10194,19010),A(10197,19012),A(10195,19008),A(10080,18734),A(10198,19009),A(10095,18754),A(10196,19005),A(10118,18814))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10427,19543),A(10429,19545),A(10425,19541),A(10317,19354),A(10426,19542),A(10305,19273),A(10428,19544),A(10281,19344))
end


local function GetPriestAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0304"
    set = SetCollector:AddSetLegacy(70000,nil,col,10304,"PR_TR_CASTER_10",CLOTH,PRIEST,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(12416,24702),A(12419,24968),A(12418,24704),A(12530,24870),A(12415,24701),A(12523,24858),A(12417,24703),A(12625,25239))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(12254,25062),A(12438,25060),A(12341,25058),A(12266,24503),A(12344,25061),A(12281,24528),A(12575,25059),A(12216,24436))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(12475,25133),A(12588,25135),A(12507,25137),A(12487,24796),A(12509,25134),A(12499,24810),A(12589,25136))
    loc = "LOC_RAID_0303"
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"PR_TR_CASTER_A_09",CLOTH,PRIEST,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11919,22924),A(11934),A(11723),A(11784,22630),A(11980),A(11715,23038),A(11733),A(11937,23114))
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"PR_TR_CASTER_H_09",CLOTH,PRIEST,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11920),A(11935),A(11807),A(11852,22725),A(11982),A(11801,23210),A(11815),A(11830,24015))
    loc = "LOC_RAID_0302"
    set = SetCollector:AddSetLegacy(70000,nil,col,10302,"PR_TR_CASTER_08",CLOTH,PRIEST,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11427,21858),A(11431,21860),A(11430,21862),A(11428,21859),A(11429,21861))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11678,22292),A(11675,22286),A(11676,22289),A(11674,22284),A(11677,22291))
    loc = "LOC_RAID_0301"
    set = SetCollector:AddSetLegacy(70000,nil,col,10301,"PR_TR_CASTER_07",CLOTH,PRIEST,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10157,18933),A(10160,18937),A(10158,18935),A(10124,18833),A(10161,18938),A(10068,18711),A(10159,18936),A(10091,18748))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10157,19439),A(10374,19442),A(10373,19441),A(10225,19063),A(10371,19437),A(10217,19296),A(10372,19440),A(10301,19634))
end


local function GetRogueAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0304"
    set = SetCollector:AddSetLegacy(70000,nil,col,10304,"RO_TR_MELEE_10",LEATHER,ROGUE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(12296,24547),A(12303,24554),A(12294,24545),A(12745,25521),A(12295,24546),A(12526,24863),A(12297,24548),A(12566,24999))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(12288,25065),A(12244,25063),A(12252,25067),A(23525,24700),A(12260,25066),A(12284,24531),A(12222,25064),A(12218,24457))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(12505,25130),A(12467,25132),A(12473,25128),A(12478,24783),A(12482,25129),A(12502,24814),A(12495,25131),A(12445,24739))
    loc = "LOC_RAID_0303"
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"RO_TR_MELEE_A_09",LEATHER,ROGUE,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11914),A(11929),A(11730),A(11766,22597),A(11936),A(11754,22575),A(11716),A(11740,22546))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"RO_TR_MELEE_H_09",LEATHER,ROGUE,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11913),A(11930),A(11813),A(11845,22716),A(11966),A(11834,22705),A(11802),A(11823,23045))
    loc = "LOC_RAID_0302"
    set = SetCollector:AddSetLegacy(70000,nil,col,10302,"RO_TR_MELEE_08",LEATHER,ROGUE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11434,21865),A(11436,21867),A(11432,21863),A(11433,21864),A(11435,21866))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11647,22249),A(11649,22251),A(11645,22247),A(11646,22248),A(11648,22250))
    loc = "LOC_RAID_0301"
    set = SetCollector:AddSetLegacy(70000,nil,col,10301,"RO_TR_MELEE_07",LEATHER,ROGUE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10170,18959),A(10172,18961),A(10168,18957),A(10087,18743),A(10169,18958),A(10103,18766),A(10171,18960),A(10072,18716))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10392,19472),A(10394,19475),A(10389,19469),A(10248,19088),A(10390,19470),A(10290,19287),A(10393,19473),A(10205,19036))
end


local function GetShamanAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0304"
    set = SetCollector:AddSetLegacy(70000,nil,col,10304,"SH_TR_CASTER_10",MAIL,SHAMAN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(12538,24921),A(12550,24923),A(12547,24919),A(12524,24859),A(12548,24920),A(12529,24869),A(12549,24922),A(12559,24985))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(12355,25080),A(12279,25082),A(12345,25078),A(12265,24502),A(12282,25079),A(12258,24492),A(12223,25081),A(12219,24476))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(12458,25115),A(26844,25113),A(12510,25117),A(12488,24797),A(12500,25116),A(12479,24784),A(12587,25114),A(12471,24771))
    loc = "LOC_RAID_0303"
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"SH_TR_CASTER_A_09",MAIL,SHAMAN,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11911),A(11898),A(11785),A(11737,22539),A(11943),A(11722),A(11747))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"SH_TR_CASTER_H_09",MAIL,SHAMAN,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11912),A(11928),A(11853),A(11820,22756),A(11970),A(11808,23169),A(11828),A(11832,24018))
    loc = "LOC_RAID_0302"
    set = SetCollector:AddSetLegacy(70000,nil,col,10302,"SH_TR_CASTER_08",MAIL,SHAMAN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11438,21874),A(11440,21876),A(11441,21877),A(11437,21873),A(11439,21875))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11681,22329),A(11683,22331),A(11679,22326),A(11680,22327),A(11682,22322))
    loc = "LOC_RAID_0301"
    set = SetCollector:AddSetLegacy(70000,nil,col,10301,"SH_TR_CASTER_07",MAIL,SHAMAN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10178,18974),A(10181,18976),A(10179,18972),A(10114,18785),A(10182,18973),A(10089,18746),A(10180,18975),A(10067,18710))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10402,19489),A(10404,19491),A(10400,19487),A(10292,19346),A(10401,19488),A(10316,19349),A(10403,19490),A(10228,19066))
end


local function GetWarlockAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0304"
    set = SetCollector:AddSetLegacy(70000,nil,col,10304,"WK_TR_CASTER_10",CLOTH,WARLOCK,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(12371,24637),A(12374,24640),A(12373,24639),A(12370,24636),A(12372,24638))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(12579,25086),A(12576,25083),A(12577,25084),A(12580,25087),A(12578,25085))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(12586,25109),A(12465,25112),A(12459,25111),A(12470,24770),A(12476,25108),A(12449,24743),A(12493,25110),A(12497,24808))
    loc = "LOC_RAID_0303"
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"WK_TR_CASTER_A_09",CLOTH,WARLOCK,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11948,23004),A(11949,23007),A(11893,23006),A(11892,22903),A(11950,23003),A(11899,23099),A(11778,23005),A(11937,23114))
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"WK_TR_CASTER_H_09",CLOTH,WARLOCK,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11917),A(11933),A(11951),A(11952),A(11825,22761),A(11847),A(11964,23174))
    loc = "LOC_RAID_0302"
    set = SetCollector:AddSetLegacy(70000,nil,col,10302,"WK_TR_CASTER_08",CLOTH,WARLOCK,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11443,21883),A(11447,21887),A(11446,21886),A(11444,21884),A(11445,21885))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11657,22262),A(11655,22259),A(11656,22260),A(11654,22258),A(11558,22072),A(11566,22261))
    loc = "LOC_RAID_0301"
    set = SetCollector:AddSetLegacy(70000,nil,col,10301,"WK_TR_CASTER_07",CLOTH,WARLOCK,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10151,18919),A(10154,18922),A(10152,18920),A(10155,18923),A(10153,18921))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10363,19411),A(10366,19414),A(10365,19413),A(10332,19347),A(10362,19410),A(10324,19326),A(10364,19412),A(10314,19294))
end


local function GetWarriorAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0304"
    set = SetCollector:AddSetLegacy(70000,nil,col,10304,"WR_TR_MELEE_10",PLATE,WARRIOR,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(12291,24926),A(12293,24924),A(12289,24928),A(12540,25403),A(12290,25400),A(12556,25520),A(12292,24925),A(12532,24873))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(12243,25096),A(12253,25093),A(12233,25097),A(12235,24484),A(12271,25095),A(12270,24604),A(12226,25094),A(12228,24469))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(12582,25105),A(12585,25107),A(12581,25103),A(12583,25104),A(12584,25106),A(31890,79965))
    loc = "LOC_RAID_0303"
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"WR_TR_MELEE_A_09",PLATE,WARRIOR,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11903),A(11922),A(11712),A(11755,22891),A(11894),A(11729,22513),A(11734),A(11727,22511))
    
    set = SetCollector:AddSetLegacy(70000,nil,col,10303,"WR_TR_MELEE_H_09",PLATE,WARRIOR,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"VENDOR",TRANSMOG,A(11906,23573),A(11965,23575),A(11798,23571),A(11797,22665),A(11856,23572),A(11822,23164),A(11814,23574),A(11844,22782))
    loc = "LOC_RAID_0302"
    set = SetCollector:AddSetLegacy(70000,nil,col,10302,"WR_TR_MELEE_08",PLATE,WARRIOR,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11450,21896),A(11453,21898),A(11449,21894),A(11451,21895),A(11452,21897))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11663,22287),A(11662,22288),A(11661,22283),A(11560,22285),A(11555,22065),A(11563,22290))
    loc = "LOC_RAID_0301"
    set = SetCollector:AddSetLegacy(70000,nil,col,10301,"WR_TR_MELEE_07",PLATE,WARRIOR,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10184,18988),A(10187,18991),A(10185,18989),A(10071,18715),A(10188,18997),A(10112,18803),A(10186,18990),A(10057,18685))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10408,19514),A(10410,19516),A(10406,19512),A(10223,19061),A(10407,19513),A(10243,19303),A(10409,19515),A(10209,19050))
end


--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion03Appearances(expansion)
    if expansion.v03 then
        -- Common
        --GetLegendaries()
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