-- Appearances from Mists of Pandaria (v.5.x)

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

local function A(...) return SetCollector:Appearance(...) end

local function GetLegendaries()
    local col = SetCollector.LEGENDARY
    local set = ""
    
    set = SetCollector:AddSet(70000,nil,col,41,"LG_CASTER_INT_90",ANY,ANY,CASTER,ANY)
          SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_CASTER_INT_90",TRANSMOG,A(20801,54617,102246))
    set = SetCollector:AddSet(70000,nil,col,42,"LG_HEALER_INT_90",ANY,ANY,HEALER,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_HEALER_INT_90",TRANSMOG,A(20825,54618,102247))    
    set = SetCollector:AddSet(70000,nil,col,43,"LG_MELEE_AGI_90",ANY,ANY,MELEE,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_MELEE_AGI_90",TRANSMOG,A(20805,54619,102248))
    set = SetCollector:AddSet(70000,nil,col,44,"LG_MELEE_STR_90",ANY,ANY,MELEE,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_MELEE_STR_90",TRANSMOG,A(20805,54620,102249))
    set = SetCollector:AddSet(70000,nil,col,45,"LG_MELEE_AGI_90",ANY,ANY,RANGED,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_MELEE_AGI_90",TRANSMOG,A(20803,54619,102248))
    set = SetCollector:AddSet(70000,nil,col,46,"LG_TANK_STR_90",ANY,ANY,TANK,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_TANK_STR_90",TRANSMOG,A(20805,54620,102249))
end


local function GetCraftedAppearances()
    local col = SetCollector.CRAFTED
    local set = ""
    
    set = SetCollector:AddSet(70000,nil,col,90,"CR_CLOTH_90",CLOTH,ANY,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"CR_CLOTH_90",TRANSMOG,A(22893,63683),A(22895,63686),A(22897,63687),A(22892,63685),A(22894,63684),A(22890,63688))
end


local function GetDeathKnightAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSet(70000,nil,col,10503,"DK_TR_MELEE_16",PLATE,DEATHKNIGHT,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20921,52338),A(20918,52340),A(20928,52347),A(21518,61047),A(20920,52348),A(21516, 61645),A(20917,52339),A(21517,61718))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(21058,52852),A(21063,52920),A(20987,52889),A(21498,61046),A(20988,52890),A(21563,61644),A(20986,52853),A(21497,61717))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20989,52475),A(20985,52468),A(20987,52473),A(21498,61046),A(20988,52474),A(21563,61644),A(20986,52472),A(21497,61717))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21001,52618),A(21003,52620),A(21008,52616),A(21521,61048),A(21009,52617),A(21519,61646),A(21002,52619),A(21520,61719))
                
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSet(70000,nil,col,10502,"DK_TR_MELEE_15",PLATE,DEATHKNIGHT,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20476,50327),A(20478,50329),A(20474,50325),A(20479,50209),A(20475,50326),A(20472,50225),A(20477,50328),A(20473,50303))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20311,49974),A(20431,49976),A(20424,49972),A(20430,49624),A(20480,49973),A(20434,49644),A(20427,49975),A(20310,49786))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20126,50951),A(20128,50953),A(20124,50949),A(20129,50833),A(20125,50950),A(20122,50849),A(20127,50952),A(20123,50927))
                
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSet(70000,nil,col,10501,"DK_TR_MELEE_14",PLATE,DEATHKNIGHT,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18977,44574),A(18975,44572),A(18979,44576),A(19015,44740),A(18978,44575),A(19030,46681),A(18976,44573),A(19016,44741))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18581,43694),A(18579,43692),A(18583,43696),A(18871,44362),A(18582,43695),A(18885,44394),A(18580,43693),A(18872,44363))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19036,44777),A(19038,44779),A(19034,44775),A(19096,44980),A(19035,44776),A(19109,45012),A(19037,44778),A(19074,44981))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSet(70000,nil,col,90,"DK_CD_90",PLATE,DEATHKNIGHT,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DK_CD_90",TRANSMOG,A(17954,46754),A(17956,46756),A(17952,46752),A(17957,46757),A(17953,46753),A(17950,46750),A(17955,46755),A(17951,46751))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSet(70000,nil,col,10502,"DK_PVP_MELEE_15",PLATE,DEATHKNIGHT,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20720,54886),A(20722,54835),A(20718,54856),A(20719,54833),A(20721,54834))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20704,55145),A(20706,55147),A(20702,55143),A(20703,55144),A(20700,55212),A(20705,55146),A(20701,55215))
    set = SetCollector:AddSet(70000,nil,col,10502,"DK_PVP_MELEE_15",PLATE,DEATHKNIGHT,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20713,55480),A(20711,55478),A(20712,55479),A(20710,55477),A(20714,55481))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20704,55145),A(20706,55147),A(20702,55143),A(20703,55144),A(20700,55212),A(20705,55146),A(20701,55215))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSet(70000,nil,col,10501,"DK_PVP_MELEE_14",PLATE,DEATHKNIGHT,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20712,53374),A(20714,53378),A(20710,53370),A(20711,53372),A(20713,53376))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20704,53375),A(20706,53379),A(20702,53371),A(20703,53373),A(20705,53377))
    set = SetCollector:AddSet(70000,nil,col,10501,"DK_PVP_MELEE_14",PLATE,DEATHKNIGHT,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20720,53754),A(20722,53703),A(20718,53724),A(20719,53701),A(20721,53702))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20704,53375),A(20706,53379),A(20702,53371),A(20703,53373),A(20705,53377))
end


local function GetDruidAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSet(70000,nil,col,10503,"DR_TR_CASTER_16",LEATHER,DRUID,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20899,52276,98995),A(20888,52279,98998),A(20900,52278,98997),A(20898,52275,98994),A(20891,52277,98996))
                SetCollector:AddVariantLegacy(60000,nil,col,set,"NORMAL",TRANSMOG,A(20979,52899,99618),A(20981,52902,99621),A(20984,52901,99620),A(20978,52898,99617),A(20980,52900,99619))
                SetCollector:AddVariantLegacy(60000,nil,col,set,"HEROIC",TRANSMOG,A(20979,52456,99175),A(20981,52450,99169),A(20984,52458,99177),A(20978,52455,99174),A(20980,52457,99176))
                SetCollector:AddVariantLegacy(60000,nil,col,set,"MYTHIC",TRANSMOG,A(21006,52714,99433),A(21000,52709,99428),A(21004,52708,99427),A(21005,52713,99432),A(21007,52715,99434))

    loc = "LOC_RAID_0502"
    set = SetCollector:AddSet(70000,nil,col,10502,"DR_TR_CASTER_15",LEATHER,DRUID,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(19849,50341,95846),A(19852,50344,95849),A(19851,50343,95848),A(19848,50340,95845),A(19850,50342,95847))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(19858,49988,95246),A(19861,49991,95249),A(19860,49990,95248),A(19857,49987,95245),A(19859,49989,95247))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19840,50965,96590),A(19842,50968,96593),A(19844,50967,96592),A(19839,50964,96589),A(19841,50966,96591))

    loc = "LOC_RAID_0501"
    set = SetCollector:AddSet(70000,nil,col,10501,"DR_TR_CASTER_14",LEATHER,DRUID,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18973,44545,86647),A(18970,44542,86644),A(18971,44543,86645),A(18974,44546,86648),A(18972,44594,86696))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18577,43665,85307),A(18574,43662,85304),A(18575,43663,85305),A(18578,43666,85308),A(18576,43714,85356))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19041,44796,86934),A(19043,44799,86937),A(19039,44798,86936),A(19040,44795,86933),A(19042,44792,86930))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSet(70000,nil,col,1,"DR_CD_90",LEATHER,DRUID,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_CD_90",TRANSMOG,A(17870,46761,90062),A(17875,46764,90065),A(17877,46763,90064),A(17876,46765,90066),A(17873,46760,90061),A(17869,46758,90059),A(17874,46762,90063),A(17871,46759,90060))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSet(70000,nil,col,10502,"DR_PVP_CASTER_15",LEATHER,DRUID,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20849,54822,102634),A(20854,54875,102700),A(20856,54805,102614),A(20852,54872,102696),A(20853,54933,102767))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20831,55164,103025),A(20836,55167,103028),A(20838,55166,103027),A(20834,55163,103024),A(20830,55161,103022),A(20835,55165,103026),A(20832,55162,103023))
    set = SetCollector:AddSet(70000,nil,col,10502,"DR_PVP_CASTER_15",LEATHER,DRUID,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20840,55483,103399),A(20845,55486,103402),A(20847,55485,103401),A(20843,55482,103398),A(20844,55484,103400))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20831,55164,103025),A(20836,55167,103028),A(20838,55166,103027),A(20834,55163,103024),A(20830,55161,103022),A(20835,55165,103026),A(20832,55162,103023))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSet(70000,nil,col,10501,"DR_PVP_CASTER_14",LEATHER,DRUID,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20840,53414,100287),A(20845,53420,100293),A(20847,53418,100291),A(20843,53412,100285),A(20844,53416,100289))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20831,53415,100288),A(20836,53421,100294),A(20838,53419,100292),A(20834,53413,100286),A(20835,53417,100290))
    set = SetCollector:AddSet(70000,nil,col,10501,"DR_PVP_CASTER_14",LEATHER,DRUID,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20849,53690,100577),A(20854,53743,100646),A(20856,53673,100557),A(20852,53740,100642),A(20853,53801,100713))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20831,53415,100288),A(20836,53421,100294),A(20838,53419,100292),A(20834,53413,100286),A(20835,53417,100290))
end


local function GetHunterAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSet(70000,nil,col,10503,"HU_TR_RANGED_16",MAIL,HUNTER,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20935,52361,99080),A(20937,52363,99082),A(20940,52366,99085),A(20941,52367,99086),A(20936,52362,99081))
                SetCollector:AddVariantLegacy(60000,nil,col,set,"NORMAL",TRANSMOG,A(20972,52941,99660),A(20974,52855,99574),A(20982,52858,99577),A(20983,52859,99578),A(20973,52854,99573))
                SetCollector:AddVariantLegacy(60000,nil,col,set,"HEROIC",TRANSMOG,A(20972,52438,99157),A(20974,52440,99159),A(20982,52448,99167),A(20983,52449,99168),A(20973,52439,99158))
                SetCollector:AddVariantLegacy(60000,nil,col,set,"MYTHIC",TRANSMOG,A(21040,52683,99402),A(21042,52685,99404),A(21043,52686,99405),A(21044,52687,99406),A(21041,52684,99403))

    loc = "LOC_RAID_0502"
    set = SetCollector:AddSet(70000,nil,col,10502,"HU_TR_RANGED_15",MAIL,HUNTER,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(19912,50373,95884),A(19914,50375,95886),A(19910,50371,95882),A(19911,50372,95883),A(19913,50374,95885))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(19920,49999,95257),A(19922,50001,95259),A(19918,49997,95255),A(19919,49998,95256),A(19921,50000,95258))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19928,50997,96628),A(19930,50999,96630),A(19926,50995,96626),A(19927,50996,96627),A(19929,50998,96629))

    loc = "LOC_RAID_0501"
    set = SetCollector:AddSet(70000,nil,col,10501,"HU_TR_RANGED_14",MAIL,HUNTER,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18964,44534,86636),A(18962,44532,86634),A(18965,44536,86638),A(18714,44535,86637),A(18963,44533,86635))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18566,43654,85296),A(18564,43652,85294),A(18568,43656,85298),A(18567,43655,85297),A(18565,43653,85295))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19063,44857,87004),A(19065,44859,87006),A(19061,44855,87002),A(19062,44856,87003),A(19064,44858,87005))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSet(70000,nil,col,1,"HU_CD_90",MAIL,HUNTER,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_CD_90",TRANSMOG,A(17679,46770,90072),A(17681,46772,90074),A(17677,46768,90070),A(17674,46773,90075),A(17678,46769,90071),A(17675,46766,90068),A(17680,46771,90073),A(17676,46767,90069))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSet(70000,nil,col,10502,"HU_PVP_RANGED_15",MAIL,HUNTER,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20729,54866,102690),A(20731,54907,102734),A(20727,54865,102689),A(20728,54909,102737),A(20730,54852,102670))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20745,55178,103039),A(20747,55180,103041),A(20743,55176,103037),A(20744,55177,103038),A(20741,55172,103033),A(20746,55179,103040),A(20742,55174,103035))
    set = SetCollector:AddSet(70000,nil,col,10502,"HU_PVP_RANGED_15",MAIL,HUNTER,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20737,55516,103418),A(20739,55518,103420),A(20735,55514,103416),A(20736,55515,103417),A(20738,55517,103419))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20745,55178,103039),A(20747,55180,103041),A(20743,55176,103037),A(20744,55177,103038),A(20741,55172,103033),A(20746,55179,103040),A(20742,55174,103035))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSet(70000,nil,col,10501,"HU_PVP_RANGED_14",MAIL,HUNTER,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20737,53446,100322),A(20739,53450,100326),A(20735,53442,100318),A(20736,53444,100320),A(20738,53448,100324))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20745,53447,100323),A(20747,53451,100327),A(20743,53443,100319),A(20744,53445,100321),A(20746,53449,100325))
    set = SetCollector:AddSet(70000,nil,col,10501,"HU_PVP_RANGED_14",MAIL,HUNTER,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20729,53734,100636),A(20731,53775,100680),A(20727,53733,100635),A(20728,53777,100683),A(20730,53720,100614))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20745,53447,100323),A(20747,53451,100327),A(20743,53443,100319),A(20744,53445,100321),A(20746,53449,100325))
end


local function GetMageAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSet(70000,nil,col,10503,"MA_TR_CASTER_16",CLOTH,MAGE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20939),A(20934),A(20933),A(21208),A(20938),A(21206),A(20932),A(21207))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20976),A(20971),A(20970),A(21212),A(20975),A(21210),A(20977),A(21211))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21036),A(21039),A(21038),A(21204),A(21035),A(21202),A(21037),A(21203))
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSet(70000,nil,col,10502,"MA_TR_CASTER_15",CLOTH,MAGE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20203),A(20199),A(20201),A(20200),A(20202),A(20204),A(20198)) -- Need waist
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20212),A(20208),A(20210),A(20209),A(20211),A(20213),A(20207))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20221),A(20217),A(20219),A(20218),A(20220),A(20222),A(20216))
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSet(70000,nil,col,10501,"MA_TR_CASTER_14",CLOTH,MAGE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18659),A(18657),A(17946),A(18658),A(17947),A(18655),A(18660),A(18656))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18589),A(18586),A(18587),A(18673),A(18590),A(18671),A(18588),A(18672))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(18668),A(18664),A(18666),A(18665),A(18667),A(18662),A(18669),A(18663))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSet(70000,nil,col,1,"MA_CD_90",CLOTH,MAGE,CASTER,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_CD_90",TRANSMOG,A(19473,46779,90082),A(19474,46782,90085),A(18544,46781,90084),A(18543,46783,90086),A(18545,46778,90081),A(19472,46776,90079),A(18547,46780,90083),A(18541,46777,90080))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSet(70000,nil,col,10502,"MA_PVP_CASTER_15",CLOTH,MAGE,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21130,54849,102667),A(21131,54854,102673),A(21136,54888,102715),A(21140,54908,102735),A(21130,54849,102648))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21106,55182,103043),A(21112,55185,103046),A(21110,55184,103045),A(21092,55130,102991),A(21104,55181,103042),A(21108,55183,103044),A(21096,55133,102994))
                
    set = SetCollector:AddSet(70000,nil,col,10502,"MA_PVP_CASTER_15",CLOTH,MAGE,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(21105,55520,103422),A(21111,55523,103425),A(21109,55522,103424),A(21103,55519,103421),A(21107,55521,103423))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21106,55182,103043),A(21112,55185,103046),A(21110,55184,103045),A(21092,55130,102991),A(21104,55181,103042),A(21108,55183,103044),A(21096,55133,102994))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSet(70000,nil,col,10501,"MA_PVP_CASTER_14",CLOTH,MAGE,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21105,53454,100330),A(21111,53460,100336),A(21109,53458,100334),A(21103,53452,100328),A(21107,53456,100332))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21106,53455,100331),A(21112,53461,100337),A(21110,53459,100335),A(21104,53453,100329),A(21108,53457,100333))
                
    set = SetCollector:AddSet(70000,nil,col,10501,"MA_PVP_CASTER_14",CLOTH,MAGE,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(21130,53717,100611),A(21131,53722,100619),A(21136,53756,100661),A(21140,53776,100681),A(21127,53700,100592))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21106,53455,100331),A(21112,53461,100337),A(21110,53459,100335),A(21104,53453,100329),A(21108,53457,100333))
end


local function GetMonkAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSet(70000,nil,col,10503,"MO_TR_MELEE_16",LEATHER,MONK,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20931,52364),A(20923,52356),A(20929,52352),A(20930,52353),A(20922,52355))        -- Need belt and feet for each variant
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20967,52934),A(20969,52936),A(20965,52836),A(20966,52837),A(20968,52935))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20967,52437),A(20969,52427),A(20965,52435),A(20966,52436),A(20968,52426))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21033,52674),A(21030,52676),A(21031,52677),A(21032,52673),A(21034,52675))
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSet(70000,nil,col,10502,"MO_TR_MELEE_15",LEATHER,MONK,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20257,50383),A(20262,50385),A(20259,50381),A(20260,50382),A(20261,50384))        -- Need belt and feet for each variant
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20241,50009),A(20246,50011),A(20243,50007),A(20244,50008),A(20245,50010))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20249,51007),A(20254,51009),A(20251,51005),A(20252,51006),A(20253,51008))
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSet(70000,nil,col,10501,"MO_TR_MELEE_14",LEATHER,MONK,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18799,44628),A(18803,44631),A(18801,44630),A(18718,44627),A(18802,44629))        -- Need belt and feet for each variant
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18593,43748),A(18591,43751),A(18595,43750),A(18594,43747),A(18592,43749))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(18806,44926),A(18811,44929),A(18808,44928),A(18809,44925),A(18810,44927))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSet(70000,nil,col,90,"MO_CD_90",LEATHER,MONK,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MO_CD_90",TRANSMOG,A(19477,46789),A(19478,46791),A(18141,46787),A(18145,46792),A(18142,46788),A(19476,46785),A(18143,46790),A(18140,46786))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSet(70000,nil,col,10502,"MO_PVP_MELEE_15",LEATHER,MONK,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21065,54885),A(21070,54815),A(21067,54893),A(21068,54855),A(21069,54839))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21083,55189),A(21088,55191),A(21085,55192),A(21086,55188),A(21082,55186),A(21087,55190),A(21084,55187))
    set = SetCollector:AddSet(70000,nil,col,10502,"MO_PVP_MELEE_15",LEATHER,MONK,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(21074,55528),A(21079,55530),A(21076,55531),A(21077,55527),A(21078,55529))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21083,55189),A(21088,55191),A(21085,55192),A(21086,55188),A(21082,55186),A(21087,55190),A(21084,55187))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSet(70000,nil,col,10501,"MO_PVP_MELEE_14",LEATHER,MONK,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21074,53469),A(21079,53473),A(21076,53475),A(21077,53467),A(21078,53471))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21083,53470),A(21088,53474),A(21085,53476),A(21086,53468),A(21087,53472))
    set = SetCollector:AddSet(70000,nil,col,10501,"MO_PVP_MELEE_14",LEATHER,MONK,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(21065,53753),A(21070,53810),A(21067,53761),A(21077,55527),A(21069,53707))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21083,53470),A(21088,53474),A(21085,53476),A(21086,53468),A(21087,53472))
end


local function GetPaladinAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSet(70000,nil,col,10503,"PA_TR_MELEE_16",PLATE,PALADIN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20889,52266),A(20895,52268),A(20901,52333),A(20892,52283),A(20890,52267))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20964,52932),A(20961,52943),A(20962,52847),A(20963,52906),A(20960,52942))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20964,52419),A(20961,52413),A(20962,52417),A(20963,52418),A(20960,52420))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21028,52660),A(21025,52654),A(21026,52668),A(21027,52661),A(21029,52653))
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSet(70000,nil,col,10502,"PA_TR_MELEE_15",PLATE,PALADIN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(19952,50398),A(19954,70000),A(19950,50396),A(19951,50397),A(19953,50399))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(19935,50024),A(19937,50026),A(19933,50022),A(19934,50023),A(19936,50025))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19943,51022),A(19945,51024),A(19941,51020),A(19942,51021),A(19944,51023))
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSet(70000,nil,col,10501,"PA_TR_MELEE_14",PLATE,PALADIN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18036,44579),A(18038,44577),A(18034,44581),A(18035,44580),A(18037,44578))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18021,43699),A(18023,43697),A(18019,43701),A(18020,43700),A(18022,43698))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(18044,44937),A(18046,44939),A(18042,44935),A(18043,44936),A(18045,44938))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSet(70000,nil,col,90,"PA_CD_90",PLATE,PALADIN,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_CD_90",TRANSMOG,A(17548,46797),A(17550,46799),A(17546,46795),A(17551,46800),A(17547,46796),A(17544,46793),A(17549,46798),A(17545,46794))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSet(70000,nil,col,10502,"PA_PVP_MELEE_15",PLATE,PALADIN,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20676,54944),A(20678,54915),A(20674,54917),A(20675,54819),A(20677,54945))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20684,55200),A(20686,55202),A(20682,55198),A(20683,55199),A(20680,55203),A(20685,55201),A(20681,55206))
    set = SetCollector:AddSet(70000,nil,col,10502,"PA_PVP_MELEE_15",PLATE,PALADIN,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20692,55539),A(20694,55541),A(20690,55537),A(20691,55538),A(20693,55540))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20684,55200),A(20686,55202),A(20682,55198),A(20683,55199),A(20680,55203),A(20685,55201),A(20681,55206))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSet(70000,nil,col,10501,"PA_PVP_MELEE_14",PLATE,PALADIN,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20692,53491),A(20694,53495),A(20690,53487),A(20691,53489),A(20693,53493))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20684,53492),A(20686,53496),A(20682,53488),A(20683,53490),A(20685,53494))
    set = SetCollector:AddSet(70000,nil,col,10501,"PA_PVP_MELEE_14",PLATE,PALADIN,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20676,53812),A(20678,53783),A(20674,53785),A(20675,53687),A(20677,53813))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20684,53492),A(20686,53496),A(20682,53488),A(20683,53490),A(20685,53494))
end


local function GetPriestAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSet(70000,nil,col,10503,"PR_TR_CASTER_16",CLOTH,PRIEST,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20910),A(20903),A(20902),A(21392),A(20909),A(21390),A(20911),A(21391))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(21060),A(21059),A(20950),A(21396),A(20959),A(21564),A(20958),A(21395))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21023),A(21021),A(21020),A(21388),A(21022),A(21386),A(21024),A(21387))
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSet(70000,nil,col,10502,"PR_TR_CASTER_15",CLOTH,PRIEST,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20049),A(20045),A(20047),A(20046),A(20048),A(20043),A(20050),A(20044))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20058),A(20054),A(20056),A(20055),A(20057),A(20052),A(20059),A(20053))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20040),A(20036),A(20038),A(20037),A(20039),A(20034),A(20041),A(20035))
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSet(70000,nil,col,10501,"PR_TR_CASTER_14",CLOTH,PRIEST,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18981),A(18980),A(17712),A(17711),A(17713),A(19022),A(17715),A(17709))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18585),A(18584),A(17694),A(17693),A(17695),A(18878),A(17697),A(17691))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19087),A(19088),A(17703),A(17702),A(17704),A(19101),A(17706),A(17700))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSet(70000,nil,col,90,"PR_CD_90",CLOTH,PRIEST,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_CD_90",TRANSMOG,A(19482,46813),A(19481,46810),A(18917,46811),A(18916,46809),A(18918,46812),A(19480,46807),A(18920,46814),A(18914,46808))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSet(70000,nil,col,10502,"PR_PVP_CASTER_15",CLOTH,PRIEST,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20884,54920),A(20880,54853),A(20882,54812),A(20883,54880),A(20885,54811))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20874,55223),A(20870,55226),A(20872,55225),A(20873,55222),A(20868,55275),A(20875,55224),A(20869,55274))
    set = SetCollector:AddSet(70000,nil,col,10502,"PR_PVP_CASTER_15",CLOTH,PRIEST,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20864,55561),A(20860,55564),A(20862,55563),A(20863,55560),A(20865,55562))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20874,55223),A(20870,55226),A(20872,55225),A(20873,55222),A(20868,55275),A(20875,55224),A(20869,55274))
                
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSet(70000,nil,col,10501,"PR_PVP_CASTER_14",CLOTH,PRIEST,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20864,53541),A(20860,53547),A(20862,53545),A(20863,53539),A(20865,53543))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20874,55223),A(20870,55226),A(20872,55225),A(20873,55222),A(20875,55224))
    set = SetCollector:AddSet(70000,nil,col,10501,"PR_PVP_CASTER_14",CLOTH,PRIEST,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20884,53745),A(20880,53787),A(20882,53726),A(20883,53674),A(20885,53746))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20874,55223),A(20870,55226),A(20872,55225),A(20873,55222),A(20875,55224))
end


local function GetRogueAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSet(70000,nil,col,10503,"RO_TR_MELEE_16",LEATHER,ROGUE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20906,52289),A(20908,52291),A(20904,52287),A(20905,52288),A(20907,52290))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(21061,52912),A(21062,52916),A(20952,52910),A(20953,52911),A(20955,52915))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20954,52395),A(20956,52397),A(20952,52393),A(20953,52394),A(20955,52396))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21015,52629),A(21017,52631),A(21019,52637),A(21018,52636),A(21016,52630))
                
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSet(70000,nil,col,10502,"RO_TR_MELEE_15",LEATHER,ROGUE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20098,50423),A(20103,50425),A(20100,50421),A(20101,50422),A(20102,50424))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20082,50049),A(20087,50051),A(20084,50047),A(20085,50048),A(20086,50050))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20090,51047),A(20095,51049),A(20092,51045),A(20093,51046),A(20094,51048))
                
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSet(70000,nil,col,10501,"RO_TR_MELEE_14",LEATHER,ROGUE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18968,44539),A(18966,44537),A(18969,44541),A(18715,44540),A(18967,44538))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18571,43659),A(18569,43657),A(18573,43661),A(18572,43660),A(18570,43658))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19085,44962),A(19092,44964),A(19089,44960),A(19090,44961),A(19091,44963))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSet(70000,nil,col,90,"RO_CD_90",LEATHER,ROGUE,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RO_CD_90",TRANSMOG,A(17620,46817),A(17625,46822),A(17622,46819),A(17626,46823),A(17623,46820),A(17619,46816),A(17624,46821),A(17621,46818))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSet(70000,nil,col,10502,"RO_PVP_MELEE_15",LEATHER,ROGUE,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20770,54883),A(20772,54904),A(20768,54900),A(20769,54845),A(20771,54903))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20762,55231),A(20764,55233),A(20760,55229),A(20761,55230),A(20758,55227),A(20763,55232),A(20759,55228))
    set = SetCollector:AddSet(70000,nil,col,10502,"RO_PVP_MELEE_15",LEATHER,ROGUE,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20754,55575),A(20756,55577),A(20752,55573),A(20753,55574),A(20755,55576))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20762,55231),A(20764,55233),A(20760,55229),A(20761,55230),A(20758,55227),A(20763,55232),A(20759,55228))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSet(70000,nil,col,10501,"RO_PVP_MELEE_14",LEATHER,ROGUE,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20754,53558),A(20756,53562),A(20752,53554),A(20753,53556),A(20755,53560))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20762,53559),A(20764,53563),A(20760,53555),A(20761,53557),A(20758,53561))
    set = SetCollector:AddSet(70000,nil,col,10501,"RO_PVP_MELEE_14",LEATHER,ROGUE,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20770,55054),A(20772,55075),A(20768,55071),A(20769,55016),A(20771,55074))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20762,53559),A(20764,53563),A(20760,53555),A(20761,53557),A(20758,53561))
end


local function GetShamanAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSet(70000,nil,col,10503,"SH_TR_16",MAIL,SHAMAN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20893),A(21494),A(20897),A(21495),A(20896),A(21491),A(20894),A(21492))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20943),A(21484),A(20949),A(21485),A(20942),A(21481),A(20944),A(21482))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21010),A(21489),A(21014),A(21490),A(21013),A(21486),A(21011),A(21487))
                
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSet(70000,nil,col,10502,"SH_TR_CASTER_15",MAIL,SHAMAN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20359),A(20562),A(20362),A(20354),A(20358),A(20355),A(20360),A(20356))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20313),A(20509),A(20344),A(20338),A(20341),A(20339),A(20342),A(20312))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20350),A(20573),A(20353),A(20345),A(20349),A(20346),A(20351),A(20347))
                
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSet(70000,nil,col,10501,"SH_TR_CASTER_14",MAIL,SHAMAN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18960),A(18958),A(18717),A(19002),A(18716),A(19028),A(18959),A(19018))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18560),A(18558),A(18563),A(18850),A(18561),A(18883),A(18559),A(18874))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19069),A(19095),A(19093),A(19051),A(19094),A(19072),A(19076),A(19079))
    
    col = SetCollector.CHALLENGE
    set = SetCollector:AddSet(70000,nil,col,90,"SH_CD_90",MAIL,SHAMAN,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_CD_90",TRANSMOG,A(17856,46829,90132),A(17858,46831,90134),A(17854,46827,90130),A(17851,46824,90127),A(17855,46828,90131),A(17852,46825,90128),A(17857,46830,90133),A(17853,46826,90129))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSet(70000,nil,col,10502,"SH_PVP_CASTER_15",MAIL,SHAMAN,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20652,54869),A(20654,54824),A(20650,54914),A(20651,54868),A(20653,54946))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20628,55250),A(20630,55252),A(20626,55248),A(20624,55247),A(20627,55249),A(20629,55251),A(20625,55236))
    set = SetCollector:AddSet(70000,nil,col,10502,"SH_PVP_CASTER_15",MAIL,SHAMAN,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20644,55596),A(20646,55598),A(21113,55594),A(20643,55595),A(20645,55597))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20628,55250),A(20630,55252),A(20626,55248),A(20624,55247),A(20627,55249),A(20629,55251),A(20625,55236))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSet(70000,nil,col,10501,"SH_PVP_CASTER_14",MAIL,SHAMAN,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20644,53598),A(20646,53602),A(21113,53594),A(20643,53596),A(20645,53600))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20628,53599),A(20630,53603),A(20626,53595),A(20627,53597),A(20629,53601))
    set = SetCollector:AddSet(70000,nil,col,10501,"SH_PVP_CASTER_14",MAIL,SHAMAN,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20652,53737),A(20654,53686),A(20650,53782),A(20651,53807),A(20653,53814))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20628,53599),A(20630,53603),A(20626,53595),A(20627,53597),A(20629,53601))
end


local function GetWarlockAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSet(70000,nil,col,10503,"WK_TR_CASTER_16",CLOTH,WARLOCK,CASTER,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20925,52335),A(20919,52326),A(20927,52337),A(20924,52334),A(20926,52336))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20947,52378),A(20996,52486),A(20995,52485),A(20946,52377),A(20948,52379))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20947,52849),A(20996,52882),A(20995,52851),A(20946,52848),A(20948,52850))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21053,52706),A(21051,52698),A(21050,52697),A(21052,52705),A(21054,52707))
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSet(70000,nil,col,10502,"WK_TR_CASTER_15",CLOTH,WARLOCK,CASTER,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(19964,50460),A(19960,50463),A(19962,50462),A(19963,50459),A(19965,50461))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20156,50068),A(20159,50071),A(20158,50070),A(20155,50067),A(20157,50069))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19972,51084),A(19975,51087),A(19974,51086),A(19971,51083),A(19973,51085))
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSet(70000,nil,col,10501,"WK_TR_CASTER_14",CLOTH,WARLOCK,CASTER,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18084,44608),A(18080,44611),A(18082,44610),A(18083,44607),A(18982,44609))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18093,43728),A(18089,43731),A(18091,43730),A(18092,43727),A(18094,43729))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(18075,45014),A(18071,45017),A(18073,45016),A(18074,45013),A(19058,45015))
                
    col = SetCollector.CHALLENGE
    set = SetCollector:AddSet(70000,nil,col,90,"WK_CD_90",CLOTH,WARLOCK,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_CD_90",TRANSMOG,A(19485,46838),A(19484,46834),A(19174,46836),A(19173,46835),A(19175,46837),A(19483,46832),A(19177,46839),A(19171,46833))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSet(70000,nil,col,10502,"WK_PVP_CASTER_15",CLOTH,WARLOCK,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21138,54899),A(21132,54859),A(21128,54843),A(21137,54898),A(21141,54924))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21117,55263),A(21123,55266),A(21121,55265),A(21115,55262),A(21094,55131),A(21119,55264),A(21098,55134))
    set = SetCollector:AddSet(70000,nil,col,10502,"WK_PVP_CASTER_15",CLOTH,WARLOCK,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(21116,55611),A(21122,55614),A(21120,55613),A(21114,55610),A(21118,55612))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21117,55263),A(21123,55266),A(21121,55265),A(21115,55262),A(21094,55131),A(21119,55264),A(21098,55134))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSet(70000,nil,col,10501,"WK_PVP_CASTER_14",CLOTH,WARLOCK,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21116,53628),A(21122,53634),A(21120,53632),A(21114,53626),A(21118,53630))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20628,53629),A(20630,53635),A(20626,53633),A(20627,53627),A(20629,53631))
    set = SetCollector:AddSet(70000,nil,col,10501,"WK_PVP_CASTER_14",CLOTH,WARLOCK,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(21138,53767),A(21132,53727),A(21128,53711),A(21137,53766),A(21141,53792))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20628,53629),A(20630,53635),A(20626,53633),A(20627,53627),A(20629,53631))    
end


local function GetWarriorAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSet(70000,nil,col,10503,"WR_TR_MELEE_16",PLATE,WARRIOR,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20913,52327),A(20912,52317),A(20916,52328),A(20915,52315),A(20914,52316))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20994,52883),A(20991,52842),A(20992,52884),A(20993,52840),A(20990,52841))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20994,52484),A(20991,52477),A(20992,52478),A(20993,52479),A(20990,52476))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21047,52699),A(21045,52695),A(21049,52692),A(21046,52693),A(21048,52694))
    
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSet(70000,nil,col,10502,"WR_TR_MELEE_15",PLATE,WARRIOR,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20077,50464),A(20079,50468),A(20075,50465),A(20076,50466),A(20078,50467))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20168,50072),A(20170,50076),A(20166,50073),A(20167,50074),A(20169,50075))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20176,51088),A(20178,51092),A(20174,51089),A(20175,51090),A(20177,51091))
    
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSet(70000,nil,col,10501,"WR_TR_MELEE_14",PLATE,WARRIOR,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18164,44571),A(18166,44567),A(18067,44570),A(18068,44569),A(18165,44568))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18158,43691),A(18160,43687),A(18156,43690),A(18157,43689),A(18159,43688))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(18172,45018),A(18174,45022),A(18170,45019),A(18171,45020),A(18173,45021))
    
    col = SetCollector.CHALLENGE
    set = SetCollector:AddSet(70000,nil,col,90,"WR_CD_90",PLATE,WARRIOR,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_CD_90",TRANSMOG,A(19487,46846,90151),A(19488,46848,90153),A(18627,46844,90149),A(18632,46849,90154),A(18628,46845,90150),A(19486,46842,90147),A(18630,46847,90152),A(18626,46843,90148))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSet(70000,nil,col,10502,"WR_PVP_MELEE_15",PLATE,WARRIOR,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20660,54809),A(20662,54861),A(20658,54901),A(20659,54808),A(20661,54905))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20635,55269,103130),A(20637,55271,103132),A(20633,55267,103128),A(20634,55268,103129),A(20631,55213,103074),A(20636,55270,103131),A(20632,55214,103075))
    set = SetCollector:AddSet(70000,nil,col,10502,"WR_PVP_MELEE_15",PLATE,WARRIOR,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20668,55617),A(20670,55619),A(20666,55615),A(20667,55616),A(20669,55618))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20635,55269,103130),A(20637,55271,103132),A(20633,55267,103128),A(20634,55268,103129),A(20631,55213,103074),A(20636,55270,103131),A(20632,55214,103075))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSet(70000,nil,col,10501,"WR_PVP_MELEE_14",PLATE,WARRIOR,ANY,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20668,53640),A(20670,53644),A(20666,53636),A(20667,53638),A(20669,53642))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20635,55269,103130),A(20637,55271,103132),A(20633,55267,103128),A(20634,55268,103129),A(20636,55270,103131))
    set = SetCollector:AddSet(70000,nil,col,10501,"WR_PVP_MELEE_14",PLATE,WARRIOR,ANY,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20660,53677),A(20662,53729),A(20658,53769),A(20659,53676),A(20661,53773))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20635,55269,103130),A(20637,55271,103132),A(20633,55267,103128),A(20634,55268,103129),A(20636,55270,103131))
end


--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion05Appearances(expansion)
    if expansion.v05 then
        -- Common
        GetLegendaries()
        GetCraftedAppearances()
        -- Class-specific
        GetDeathKnightAppearances()
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


function SetCollector:GetVersion05Status()
    return SetCollector:GetExpansionStatus("5")
end


function SetCollector:SetVersion05Status()
    SetCollector:SetExpansionStatus("5")
end