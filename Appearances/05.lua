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
local ANY_ARMOR			= SetCollector.ANY_ARMOR

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
local ANY_CLASS 		= SetCollector.ANY_CLASS

-- Factions
local ALLIANCE         = SetCollector.ALLIANCE
local HORDE         = SetCollector.HORDE
local ANY_FACTION	= SetCollector.ANY_FACTION

-- Obtainable
local OBTAIN        = SetCollector.OBTAIN
local NO_OBTAIN         = SetCollector.NO_OBTAIN

-- Useable as Transmog
local TRANSMOG         = SetCollector.TRANSMOG
local NO_TRANSMOG     = SetCollector.NO_TRANSMOG


--
-- LOCAL FUNCTIONS
--

local function A(...) return SetCollector:CreateAppearance(...) end
local function CreateSet(...) return SetCollector:CreateSet(...) end
local function CreateVariant(...) return SetCollector:CreateVariant(...) end
local function AddSetsToDatabase(...) return SetCollector:AddSetsToDatabase(...) end

local function GetLegendaries()
    local col = SetCollector.LEGENDARY
    local set = ""
    
    set = SetCollector:AddSetLegacy(70000,nil,col,41,"LG_CASTER_INT_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION)
          SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_CASTER_INT_90",TRANSMOG,A(20801,54617,102246))
    set = SetCollector:AddSetLegacy(70000,nil,col,42,"LG_HEALER_INT_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_HEALER_INT_90",TRANSMOG,A(20825,54618,102247))    
    set = SetCollector:AddSetLegacy(70000,nil,col,43,"LG_MELEE_AGI_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_MELEE_AGI_90",TRANSMOG,A(20805,54619,102248))
    set = SetCollector:AddSetLegacy(70000,nil,col,44,"LG_MELEE_STR_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_MELEE_STR_90",TRANSMOG,A(20805,54620,102249))
    set = SetCollector:AddSetLegacy(70000,nil,col,45,"LG_MELEE_AGI_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_MELEE_AGI_90",TRANSMOG,A(20803,54619,102248))
    set = SetCollector:AddSetLegacy(70000,nil,col,46,"LG_TANK_STR_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_TANK_STR_90",TRANSMOG,A(20805,54620,102249))
end


local function GetCraftedAppearances()
    local col = SetCollector.CRAFTED
    local set = ""
    
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"CR_CLOTH_90",CLOTH,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"CR_CLOTH_90",TRANSMOG,A(22893,63683),A(22895,63686),A(22897,63687),A(22892,63685),A(22894,63684),A(22890,63688))
end


local function GetDeathKnightAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10503,"DK_RAID_0503",PLATE,DEATHKNIGHT,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20921,52338),A(20918,52340),A(20928,52347),A(21518,61047),A(20920,52348),A(21516, 61645),A(20917,52339),A(21517,61718))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(21058,52852),A(21063,52920),A(20987,52889),A(21498,61046),A(20988,52890),A(21563,61644),A(20986,52853),A(21497,61717))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20989,52475),A(20985,52468),A(20987,52473),A(21498,61046),A(20988,52474),A(21563,61644),A(20986,52472),A(21497,61717))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21001,52618),A(21003,52620),A(21008,52616),A(21521,61048),A(21009,52617),A(21519,61646),A(21002,52619),A(21520,61719))
                
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"DK_RAID_0502",PLATE,DEATHKNIGHT,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20476,50327),A(20478,50329),A(20474,50325),A(20479,50209),A(20475,50326),A(20472,50225),A(20477,50328),A(20473,50303))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20311,49974),A(20431,49976),A(20424,49972),A(20430,49624),A(20480,49973),A(20434,49644),A(20427,49975),A(20310,49786))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20126,50951),A(20128,50953),A(20124,50949),A(20129,50833),A(20125,50950),A(20122,50849),A(20127,50952),A(20123,50927))
                
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"DK_RAID_0501",PLATE,DEATHKNIGHT,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18977,44574),A(18975,44572),A(18979,44576),A(19015,44740),A(18978,44575),A(19030,46681),A(18976,44573),A(19016,44741))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18581,43694),A(18579,43692),A(18583,43696),A(18871,44362),A(18582,43695),A(18885,44394),A(18580,43693),A(18872,44363))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19036,44777),A(19038,44779),A(19034,44775),A(19096,44980),A(19035,44776),A(19109,45012),A(19037,44778),A(19074,44981))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"DK_CD_90",PLATE,DEATHKNIGHT,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DK_CD_90",TRANSMOG,A(17954,46754),A(17956,46756),A(17952,46752),A(17957,46757),A(17953,46753),A(17950,46750),A(17955,46755),A(17951,46751))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"DK_PVP_MELEE_15",PLATE,DEATHKNIGHT,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20720,54886),A(20722,54835),A(20718,54856),A(20719,54833),A(20721,54834))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20704,55145),A(20706,55147),A(20702,55143),A(20703,55144),A(20700,55212),A(20705,55146),A(20701,55215))
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"DK_PVP_MELEE_15",PLATE,DEATHKNIGHT,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20713,55480),A(20711,55478),A(20712,55479),A(20710,55477),A(20714,55481))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20704,55145),A(20706,55147),A(20702,55143),A(20703,55144),A(20700,55212),A(20705,55146),A(20701,55215))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"DK_PVP_MELEE_14",PLATE,DEATHKNIGHT,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20712,53374),A(20714,53378),A(20710,53370),A(20711,53372),A(20713,53376))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20704,53375),A(20706,53379),A(20702,53371),A(20703,53373),A(20705,53377))
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"DK_PVP_MELEE_14",PLATE,DEATHKNIGHT,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20720,53754),A(20722,53703),A(20718,53724),A(20719,53701),A(20721,53702))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20704,53375),A(20706,53379),A(20702,53371),A(20703,53373),A(20705,53377))
end


local function GetDruidAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10503,"DR_RAID_0503",LEATHER,DRUID,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20899,52276),A(20888,52279),A(20900,52278),A(21472, 60941),A(20898,52275),A(21468, 61924),A(20891,52277),A(21469, 61757))
                SetCollector:AddVariantLegacy(60000,nil,col,set,"NORMAL",TRANSMOG,A(20979,52899),A(20981,52902),A(20984,52901),A(21466, 60940),A(20978,52898),A(21464, 61923),A(20980,52900),A(21465, 61756))
                SetCollector:AddVariantLegacy(60000,nil,col,set,"MYTHIC",TRANSMOG,A(21006,52714),A(21000,52709),A(21004,52708),A(21477, 60942),A(21005,52713),A(21473, 61925),A(21007,52715),A(21474, 61758))

    loc = "LOC_RAID_0502"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"DR_RAID_0502",LEATHER,DRUID,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(19849,50341),A(19852,50344),A(19851,50343),A(19853, 50180),A(19848,50340),A(19845, 50302),A(19850,50342),A(19855, 49963))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(19858,49988),A(19861,49991),A(19860,49990),A(19862, 49599),A(19857,49987),A(19854, 49788),A(19859,49989),A(19855, 50759))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19840,50965),A(19842,50968),A(19844,50967),A(19843, 50804),A(19839,50964),A(19836, 50926),A(19841,50966),A(19837, 49813))

    loc = "LOC_RAID_0501"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"DR_RAID_0501",LEATHER,DRUID,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18973,44545),A(18970,44542),A(18971,44543),A(19007, 44720),A(18974,44546),A(19164, 100422),A(18972,44594),A(19019, 44746))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18577,43665),A(18574,43662),A(18575,43663),A(18854, 44324),A(18578,43666),A(19168, 47005),A(18576,43714),A(18875, 44373))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19041,44796),A(19043,44799),A(19039,44798),A(),A(19040,44795),A(19070, 44874),A(19042,44792),A(19098, 44985))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,1,"DR_CD_90",LEATHER,DRUID,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_CD_90",TRANSMOG,A(17870,46761,90062),A(17875,46764,90065),A(17877,46763,90064),A(17876,46765,90066),A(17873,46760,90061),A(17869,46758,90059),A(17874,46762,90063),A(17871,46759,90060))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"DR_PVP_CASTER_15",LEATHER,DRUID,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20849,54822,102634),A(20854,54875,102700),A(20856,54805,102614),A(20852,54872,102696),A(20853,54933,102767))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20831,55164,103025),A(20836,55167,103028),A(20838,55166,103027),A(20834,55163,103024),A(20830,55161,103022),A(20835,55165,103026),A(20832,55162,103023))
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"DR_PVP_CASTER_15",LEATHER,DRUID,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20840,55483,103399),A(20845,55486,103402),A(20847,55485,103401),A(20843,55482,103398),A(20844,55484,103400))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20831,55164,103025),A(20836,55167,103028),A(20838,55166,103027),A(20834,55163,103024),A(20830,55161,103022),A(20835,55165,103026),A(20832,55162,103023))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"DR_PVP_CASTER_14",LEATHER,DRUID,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20840,53414,100287),A(20845,53420,100293),A(20847,53418,100291),A(20843,53412,100285),A(20844,53416,100289))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20831,53415,100288),A(20836,53421,100294),A(20838,53419,100292),A(20834,53413,100286),A(20835,53417,100290))
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"DR_PVP_CASTER_14",LEATHER,DRUID,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20849,53690,100577),A(20854,53743,100646),A(20856,53673,100557),A(20852,53740,100642),A(20853,53801,100713))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20831,53415,100288),A(20836,53421,100294),A(20838,53419,100292),A(20834,53413,100286),A(20835,53417,100290))
end


local function GetHunterAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10503,"HU_RAID_0503",MAIL,HUNTER,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20935,52361),A(20937,52363),A(20940,52366),A(21185, 61875),A(20941,52367),A(21186, 61788),A(20936,52362),A(21187, 61569))
                SetCollector:AddVariantLegacy(60000,nil,col,set,"NORMAL",TRANSMOG,A(20972,52941),A(20974,52855),A(20982,52858),A(21182, 61874),A(20983,52859),A(21183, 61787),A(20973,52854),A(21184, 61568))
                SetCollector:AddVariantLegacy(60000,nil,col,set,"MYTHIC",TRANSMOG,A(21040,52683),A(21042,52685),A(21043,52686),A(21188, 61876),A(21044,52687),A(21189, 61789),A(21041,52684),A(21190, 61570))

    loc = "LOC_RAID_0502"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"HU_RAID_0502",MAIL,HUNTER,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(19912,50373),A(19914,50375),A(19910,50371),A(19907, 50206),A(19911,50372),A(19908, 100527),A(19913,50374),A(19909, 50207))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(19920,49999),A(19922,50001),A(19918,49997),A(19915, 49751),A(19919,49998),A(19916, 49936),A(19921,50000),A(19917, 49625))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19928,50997),A(19930,50999),A(19926,50995),A(19923, 50887),A(19927,50996),A(19924, 49807),A(19929,50998),A(19925, 50831))

    loc = "LOC_RAID_0501"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"HU_RAID_0501",MAIL,HUNTER,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18964,44534),A(18962,44532),A(18965,44536),A(18983, 44637),A(18714,44535),A(19029, 46710),A(18963,44533),A(18986, 44646))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18566,43654),A(18564,43652),A(18568,43656),A(18855, 44326),A(18567,43655),A(18884, 46617),A(18565,43653),A(18861, 44348))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19063,44857),A(19065,44859),A(19061,44855),A(19067, 44867),A(19062,44856),A(),A(19064,44858),A(19071, 44875))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,1,"HU_CD_90",MAIL,HUNTER,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_CD_90",TRANSMOG,A(17679,46770,90072),A(17681,46772,90074),A(17677,46768,90070),A(17674,46773,90075),A(17678,46769,90071),A(17675,46766,90068),A(17680,46771,90073),A(17676,46767,90069))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"HU_PVP_RANGED_15",MAIL,HUNTER,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20729,54866,102690),A(20731,54907,102734),A(20727,54865,102689),A(20728,54909,102737),A(20730,54852,102670))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20745,55178,103039),A(20747,55180,103041),A(20743,55176,103037),A(20744,55177,103038),A(20741,55172,103033),A(20746,55179,103040),A(20742,55174,103035))
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"HU_PVP_RANGED_15",MAIL,HUNTER,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20737,55516,103418),A(20739,55518,103420),A(20735,55514,103416),A(20736,55515,103417),A(20738,55517,103419))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20745,55178,103039),A(20747,55180,103041),A(20743,55176,103037),A(20744,55177,103038),A(20741,55172,103033),A(20746,55179,103040),A(20742,55174,103035))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"HU_PVP_RANGED_14",MAIL,HUNTER,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20737,53446,100322),A(20739,53450,100326),A(20735,53442,100318),A(20736,53444,100320),A(20738,53448,100324))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20745,53447,100323),A(20747,53451,100327),A(20743,53443,100319),A(20744,53445,100321),A(20746,53449,100325))
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"HU_PVP_RANGED_14",MAIL,HUNTER,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20729,53734,100636),A(20731,53775,100680),A(20727,53733,100635),A(20728,53777,100683),A(20730,53720,100614))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20745,53447,100323),A(20747,53451,100327),A(20743,53443,100319),A(20744,53445,100321),A(20746,53449,100325))
end


local function GetMageAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10503,"MA_RAID_0503",CLOTH,MAGE,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20939),A(20934),A(20933),A(21208),A(20938),A(21206),A(20932),A(21207))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20976),A(20971),A(20970),A(21212),A(20975),A(21210),A(20977),A(21211))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21036),A(21039),A(21038),A(21204),A(21035),A(21202),A(21037),A(21203))
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"MA_RAID_0502",CLOTH,MAGE,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20203),A(20199),A(20201),A(20200),A(20202),A(20197,50443),A(20204),A(20198))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20212),A(20208),A(20210),A(20209),A(20211),A(20206,49949),A(20213),A(20207))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20221),A(20217),A(20219),A(20218),A(20220),A(20215,49803),A(20222),A(20216))
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"MA_RAID_0501",CLOTH,MAGE,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18659),A(18657),A(17946),A(18658),A(17947),A(18655),A(18660),A(18656))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18589),A(18586),A(18587),A(18673),A(18590),A(18671),A(18588),A(18672))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(18668),A(18664),A(18666),A(18665),A(18667),A(18662),A(18669),A(18663))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,1,"MA_CD_90",CLOTH,MAGE,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_CD_90",TRANSMOG,A(19473,46779,90082),A(19474,46782,90085),A(18544,46781,90084),A(18543,46783,90086),A(18545,46778,90081),A(19472,46776,90079),A(18547,46780,90083),A(18541,46777,90080))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"MA_PVP_CASTER_15",CLOTH,MAGE,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21130,54849,102667),A(21131,54854,102673),A(21136,54888,102715),A(21140,54908,102735),A(21130,54849,102648))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21106,55182,103043),A(21112,55185,103046),A(21110,55184,103045),A(21092,55130,102991),A(21104,55181,103042),A(21108,55183,103044),A(21096,55133,102994))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"MA_PVP_CASTER_15",CLOTH,MAGE,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(21105,55520,103422),A(21111,55523,103425),A(21109,55522,103424),A(21103,55519,103421),A(21107,55521,103423))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21106,55182,103043),A(21112,55185,103046),A(21110,55184,103045),A(21092,55130,102991),A(21104,55181,103042),A(21108,55183,103044),A(21096,55133,102994))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"MA_PVP_CASTER_14",CLOTH,MAGE,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21105,53454,100330),A(21111,53460,100336),A(21109,53458,100334),A(21103,53452,100328),A(21107,53456,100332))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21106,53455,100331),A(21112,53461,100337),A(21110,53459,100335),A(21104,53453,100329),A(21108,53457,100333))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"MA_PVP_CASTER_14",CLOTH,MAGE,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(21130,53717,100611),A(21131,53722,100619),A(21136,53756,100661),A(21140,53776,100681),A(21127,53700,100592))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21106,53455,100331),A(21112,53461,100337),A(21110,53459,100335),A(21104,53453,100329),A(21108,53457,100333))
end


local function GetMonkAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10503,"MO_RAID_0503",LEATHER,MONK,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20931,61985),A(20923,52356),A(20929,52352),A(21534,61760),A(20930,61056),A(21531,61957),A(20922,52355),A(21532,61087))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20967,52934),A(20969,52936),A(20965,52836),A(21499,61759),A(20966,52837),A(21504,61956),A(20968,52935),A(21500,61086))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21033,52674),A(21030,52676),A(21031,52677),A(21538,61761),A(21032,52673),A(21535,61958),A(21034,52675),A(21536,61088))
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"MO_RAID_0502",LEATHER,MONK,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20257,50383),A(20262,50385),A(20259,50381),A(20263,50175),A(20260,50382),A(20256,50451),A(20261,50384),A(20258,50258))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20241,50009),A(20246,50011),A(20243,50007),A(20247,49589),A(20244,50008),A(20240,49933),A(20245,50010),A(20242,49744))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20249,51007),A(20254,51009),A(20251,51005),A(20255,50799),A(20252,51006),A(20248,49804),A(20253,51008),A(20250,50917))
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"MO_RAID_0501",LEATHER,MONK,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18799,44628),A(18803,44631),A(18801,44630),A(18804,44718),A(18718,44627),A(18798,44761),A(18802,44629),A(18800,44731))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18593,43748),A(18591,43751),A(18595,43750),A(18797,44322),A(18594,43747),A(18795,44388),A(18592,43749),A(18796,44346))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(18806,44926),A(18811,44929),A(18808,44928),A(18812,44901),A(18809,44925),A(18805,44871),A(18810,44927),A(18807,44911))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"MO_CD_90",LEATHER,MONK,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MO_CD_90",TRANSMOG,A(19477,46789),A(19478,46791),A(18141,46787),A(18145,46792),A(18142,46788),A(19476,46785),A(18143,46790),A(18140,46786))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"MO_PVP_MELEE_15",LEATHER,MONK,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21065,54885),A(21070,54815),A(21067,54893),A(21068,54855),A(21069,54839))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21083,55189),A(21088,55191),A(21085,55192),A(21086,55188),A(21082,55186),A(21087,55190),A(21084,55187))
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"MO_PVP_MELEE_15",LEATHER,MONK,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(21074,55528),A(21079,55530),A(21076,55531),A(21077,55527),A(21078,55529))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21083,55189),A(21088,55191),A(21085,55192),A(21086,55188),A(21082,55186),A(21087,55190),A(21084,55187))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"MO_PVP_MELEE_14",LEATHER,MONK,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21074,53469),A(21079,53473),A(21076,53475),A(21077,53467),A(21078,53471))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21083,53470),A(21088,53474),A(21085,53476),A(21086,53468),A(21087,53472))
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"MO_PVP_MELEE_14",LEATHER,MONK,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(21065,53753),A(21070,53810),A(21067,53761),A(21077,55527),A(21069,53707))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21083,53470),A(21088,53474),A(21085,53476),A(21086,53468),A(21087,53472))
end


local function GetPaladinAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10503,"PA_RAID_0503",PLATE,PALADIN,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20889,52266),A(20895,52268),A(20901,52333),A(21458,61515),A(20892,52283),A(21455,61833),A(20890,52267),A(21456,61624))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20964,52932),A(20961,52943),A(20962,52847),A(21454,61514),A(20963,52906),A(21451,61832),A(20960,52942),A(21452,61623))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21028,52660),A(21025,52654),A(21026,52668),A(21463,61516),A(21027,52661),A(21459,61834),A(21029,52653),A(21460,61625))
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"PA_RAID_0502",PLATE,PALADIN,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(19952,50398),A(19954,50410),A(19950,50396),A(1995,50193),A(19951,50397),A(19948,50220),A(19953,50399),A(19949,50234))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(19935,50024),A(19937,50026),A(19933,50022),A(19938,49606),A(19934,50023),A(19931,49636),A(19936,50025),A(19932,49647))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19943,51022),A(19945,51024),A(19941,51020),A(19946,50817),A(19942,51021),A(19939,50844),A(19944,51023),A(19940,50858))
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"PA_RAID_0501",PLATE,PALADIN,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18036,44579),A(18038,44577),A(18034,44581),A(18039,44721),A(18035,44580),A(18032,44765),A(18037,44578),A(18033,44752))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18021,43699),A(18023,43697),A(18019,43701),A(18024,44325),A(18020,43700),A(18017,44392),A(18022,43698),A(18018,44379))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(18044,44937),A(18046,44939),A(18042,44935),A(18047,44892),A(18043,44936),A(18040,44903),A(18045,44938),A(18041,44873))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"PA_CD_90",PLATE,PALADIN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_CD_90",TRANSMOG,A(17548,46797),A(17550,46799),A(17546,46795),A(17551,46800),A(17547,46796),A(17544,46793),A(17549,46798),A(17545,46794))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"PA_PVP_MELEE_15",PLATE,PALADIN,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20676,54944),A(20678,54915),A(20674,54917),A(20675,54819),A(20677,54945))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20684,55200),A(20686,55202),A(20682,55198),A(20683,55199),A(20680,55203),A(20685,55201),A(20681,55206))
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"PA_PVP_MELEE_15",PLATE,PALADIN,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20692,55539),A(20694,55541),A(20690,55537),A(20691,55538),A(20693,55540))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20684,55200),A(20686,55202),A(20682,55198),A(20683,55199),A(20680,55203),A(20685,55201),A(20681,55206))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"PA_PVP_MELEE_14",PLATE,PALADIN,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20692,53491),A(20694,53495),A(20690,53487),A(20691,53489),A(20693,53493))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20684,53492),A(20686,53496),A(20682,53488),A(20683,53490),A(20685,53494))
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"PA_PVP_MELEE_14",PLATE,PALADIN,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20676,53812),A(20678,53783),A(20674,53785),A(20675,53687),A(20677,53813))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20684,53492),A(20686,53496),A(20682,53488),A(20683,53490),A(20685,53494))
end


local function GetPriestAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10503,"PR_RAID_0503",CLOTH,PRIEST,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20910),A(20903),A(20902),A(21392),A(20909),A(21390),A(20911),A(21391))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(21060),A(21059),A(20950),A(21396),A(20959),A(21564),A(20958),A(21395))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21023),A(21021),A(21020),A(21388),A(21022),A(21386),A(21024),A(21387))
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"PR_RAID_0502",CLOTH,PRIEST,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20049),A(20045),A(20047),A(20046),A(20048),A(20043),A(20050),A(20044))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20058),A(20054),A(20056),A(20055),A(20057),A(20052),A(20059),A(20053))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20040),A(20036),A(20038),A(20037),A(20039),A(20034),A(20041),A(20035))
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"PR_RAID_0501",CLOTH,PRIEST,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18981),A(18980),A(17712),A(17711),A(17713),A(19022),A(17715),A(17709))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18585),A(18584),A(17694),A(17693),A(17695),A(18878),A(17697),A(17691))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19087),A(19088),A(17703),A(17702),A(17704),A(19101),A(17706),A(17700))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"PR_CD_90",CLOTH,PRIEST,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_CD_90",TRANSMOG,A(19482,46813),A(19481,46810),A(18917,46811),A(18916,46809),A(18918,46812),A(19480,46807),A(18920,46814),A(18914,46808))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"PR_PVP_CASTER_15",CLOTH,PRIEST,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20884,54920),A(20880,54853),A(20882,54812),A(20883,54880),A(20885,54811))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20874,55223),A(20870,55226),A(20872,55225),A(20873,55222),A(20868,55275),A(20875,55224),A(20869,55274))
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"PR_PVP_CASTER_15",CLOTH,PRIEST,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20864,55561),A(20860,55564),A(20862,55563),A(20863,55560),A(20865,55562))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20874,55223),A(20870,55226),A(20872,55225),A(20873,55222),A(20868,55275),A(20875,55224),A(20869,55274))
                
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"PR_PVP_CASTER_14",CLOTH,PRIEST,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20864,53541),A(20860,53547),A(20862,53545),A(20863,53539),A(20865,53543))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20874,55223),A(20870,55226),A(20872,55225),A(20873,55222),A(20875,55224))
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"PR_PVP_CASTER_14",CLOTH,PRIEST,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20884,53745),A(20880,53787),A(20882,53726),A(20883,53674),A(20885,53746))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20874,55223),A(20870,55226),A(20872,55225),A(20873,55222),A(20875,55224))
end


local function GetRogueAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10503,"RO_RAID_0503",LEATHER,ROGUE,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20906,52289),A(20908,52291),A(20904,52287),A(21430,61878),A(20905,52288),A(21428,61636),A(20907,52290),A(21429,61777))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(21061,52912),A(21062,52916),A(20952,52910),A(21433,61877),A(20953,52911),A(21565,61635),A(20955,52915),A(21432,61776))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21015,52629),A(21017,52631),A(21019,52637),A(21436,61879),A(21018,52636),A(21434,61637),A(21016,52630),A(21435,61778))
                
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"RO_RAID_0502",LEATHER,ROGUE,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20098,50423),A(20103,50425),A(20100,50421),A(20104,50301),A(20101,50422),A(20553,50239),A(20102,50424),A(20099,50441))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20082,50049),A(20087,50051),A(20084,50047),A(20088,49789),A(20085,50048),A(20081,49659),A(20086,50050),A(20083,49961))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20090,51047),A(20095,51049),A(20092,51045),A(20096,50925),A(20093,51046),A(20089,50863),A(20094,51048),A(20091,49814))
                
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"RO_RAID_0501",LEATHER,ROGUE,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18968,44539),A(18966,44537),A(18969,44541),A(19001,44699),A(18715,44540),A(19027,44762),A(18967,44538),A(18999,44692))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18571,43659),A(18569,43657),A(18573,43661),A(18849,44303),A(18572,43660),A(18882,44389),A(18570,43658),A(18847,44296))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19085,44962),A(19092,44964),A(19089,44960),A(19048,44813),A(19090,44961),A(19108,45006),A(19091,44963),A(19045,44805))

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"RO_CD_90",LEATHER,ROGUE,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RO_CD_90",TRANSMOG,A(17620,46817),A(17625,46822),A(17622,46819),A(17626,46823),A(17623,46820),A(17619,46816),A(17624,46821),A(17621,46818))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"RO_PVP_MELEE_15",LEATHER,ROGUE,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20770,54883),A(20772,54904),A(20768,54900),A(20769,54845),A(20771,54903))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20762,55231),A(20764,55233),A(20760,55229),A(20761,55230),A(20758,55227),A(20763,55232),A(20759,55228))
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"RO_PVP_MELEE_15",LEATHER,ROGUE,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20754,55575),A(20756,55577),A(20752,55573),A(20753,55574),A(20755,55576))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20762,55231),A(20764,55233),A(20760,55229),A(20761,55230),A(20758,55227),A(20763,55232),A(20759,55228))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"RO_PVP_MELEE_14",LEATHER,ROGUE,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20754,53558),A(20756,53562),A(20752,53554),A(20753,53556),A(20755,53560))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20762,53559),A(20764,53563),A(20760,53555),A(20761,53557),A(20758,53561))
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"RO_PVP_MELEE_14",LEATHER,ROGUE,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20770,55054),A(20772,55075),A(20768,55071),A(20769,55016),A(20771,55074))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20762,53559),A(20764,53563),A(20760,53555),A(20761,53557),A(20758,53561))
end


local function GetShamanAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10503,"SH_RAID_0503",MAIL,SHAMAN,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20893),A(21494),A(20897),A(21495),A(20896),A(21491),A(20894),A(21492))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20943),A(21484),A(20949),A(21485),A(20942),A(21481),A(20944),A(21482))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21010),A(21489),A(21014),A(21490),A(21013),A(21486),A(21011),A(21487))
                
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"SH_RAID_0502",MAIL,SHAMAN,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20359),A(20562),A(20362),A(20354),A(20358),A(20355),A(20360),A(20356))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20313),A(20509),A(20344),A(20338),A(20341),A(20339),A(20342),A(20312))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20350),A(20573),A(20353),A(20345),A(20349),A(20346),A(20351),A(20347))
                
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"SH_RAID_0501",MAIL,SHAMAN,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18960),A(18958),A(18717),A(19002),A(18716),A(19028),A(18959),A(19018))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18560),A(18558),A(18563),A(18850),A(18561),A(18883),A(18559),A(18874))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19069),A(19095),A(19093),A(19051),A(19094),A(19072),A(19076),A(19079))
    
    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"SH_CD_90",MAIL,SHAMAN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_CD_90",TRANSMOG,A(17856,46829,90132),A(17858,46831,90134),A(17854,46827,90130),A(17851,46824,90127),A(17855,46828,90131),A(17852,46825,90128),A(17857,46830,90133),A(17853,46826,90129))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"SH_PVP_15",MAIL,SHAMAN,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20652,54869),A(20654,54824),A(20650,54914),A(20651,54868),A(20653,54946))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20628,55250),A(20630,55252),A(20626,55248),A(20624,55247),A(20627,55249),A(20629,55251),A(20625,55236))
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"SH_PVP_15",MAIL,SHAMAN,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20644,55596),A(20646,55598),A(21113,55594),A(20643,55595),A(20645,55597))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20628,55250),A(20630,55252),A(20626,55248),A(20624,55247),A(20627,55249),A(20629,55251),A(20625,55236))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"SH_PVP_14",MAIL,SHAMAN,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20644,53598),A(20646,53602),A(21113,53594),A(20643,53596),A(20645,53600))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20628,53599),A(20630,53603),A(20626,53595),A(20627,53597),A(20629,53601))
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"SH_PVP_14",MAIL,SHAMAN,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20652,53737),A(20654,53686),A(20650,53782),A(20651,53807),A(20653,53814))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20628,53599),A(20630,53603),A(20626,53595),A(20627,53597),A(20629,53601))
                
    --loc = "LOC_PVP_0502"
    --set = SetCollector:AddSetLegacy(70000,nil,col,10501,"SH_PVP_CASTER_13",MAIL,SHAMAN,ALLIANCE,loc)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20644,53598),A(20646,53602),A(21113,53594),A(20643,53596),A(20645,53600))
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20628,53599),A(20630,53603),A(20626,53595),A(20627,53597),A(20629,53601))
    --set = SetCollector:AddSetLegacy(70000,nil,col,10501,"SH_PVP_CASTER_13",MAIL,SHAMAN,HORDE,loc)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20652,53737),A(20654,53686),A(20650,53782),A(20651,53807),A(20653,53814))
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20628,53599),A(20630,53603),A(20626,53595),A(20627,53597),A(20629,53601))
                
    --loc = "LOC_PVP_0501"
    --set = SetCollector:AddSetLegacy(70000,nil,col,10501,"SH_PVP_CASTER_12",MAIL,SHAMAN,ALLIANCE,loc)
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(),A(),A(),A(),A(18400,43344))
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(),A(),A(),A(),A())
    --set = SetCollector:AddSetLegacy(70000,nil,col,10501,"SH_PVP_CASTER_12",MAIL,SHAMAN,HORDE,loc)
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(),A(),A(),A(),A())
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(),A(),A(),A(),A())
end


local function GetWarlockAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10503,"WK_RAID_0503",CLOTH,WARLOCK,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20925,52335),A(20919,52326),A(20927,52337),A(21318,61542),A(20924,52334),A(21316,61736),A(20926,52336),A(21317,61539))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20947,52378),A(20996,52486),A(20995,52485),A(21314,61541),A(20946,52377),A(21312,61735),A(20948,52379),A(21313,61538))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21053,52706),A(21051,52698),A(21050,52697),A(21310,61543),A(21052,52705),A(21308,61737),A(21054,52707),A(21309,61540))
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"WK_RAID_0502",CLOTH,WARLOCK,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(19964,50460),A(19960,50463),A(19962,50462),A(19961,50273),A(19963,50459),A(19958,50236),A(19965,50461),A(19959,50445))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20156,50068),A(20159,50071),A(20158,50070),A(20160,49759),A(20155,50067),A(20152,49661),A(20157,50069),A(20153,49965))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(19972,51084),A(19975,51087),A(19974,51086),A(19976,50897),A(19971,51083),A(19968,50860),A(19973,51085),A(19969,49812))
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"WK_RAID_0501",CLOTH,WARLOCK,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18084,44608),A(18080,44611),A(18082,44610),A(18081,44694),A(18083,44607),A(19009,44730),A(18982,44609),A(18079,44711))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18093,43728),A(18089,43731),A(18091,43730),A(18090,44298),A(18092,43727),A(18087,44345),A(18094,43729),A(18088,44315))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(18075,45014),A(18071,45017),A(18073,45016),A(18072,44809),A(18074,45013),A(18069,44835),A(19058,45015),A(18070,44825))
                
    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"WK_CD_90",CLOTH,WARLOCK,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_CD_90",TRANSMOG,A(19485,46838),A(19484,46834),A(19174,46836),A(19173,46835),A(19175,46837),A(19483,46832),A(19177,46839),A(19171,46833))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"WK_PVP_CASTER_15",CLOTH,WARLOCK,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21138,54899),A(21132,54859),A(21128,54843),A(21137,54898),A(21141,54924))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21117,55263),A(21123,55266),A(21121,55265),A(21115,55262),A(21094,55131),A(21119,55264),A(21098,55134))
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"WK_PVP_CASTER_15",CLOTH,WARLOCK,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(21116,55611),A(21122,55614),A(21120,55613),A(21114,55610),A(21118,55612))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(21117,55263),A(21123,55266),A(21121,55265),A(21115,55262),A(21094,55131),A(21119,55264),A(21098,55134))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"WK_PVP_CASTER_14",CLOTH,WARLOCK,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21116,53628),A(21122,53634),A(21120,53632),A(21114,53626),A(21118,53630))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20628,53629),A(20630,53635),A(20626,53633),A(20627,53627),A(20629,53631))
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"WK_PVP_CASTER_14",CLOTH,WARLOCK,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(21138,53767),A(21132,53727),A(21128,53711),A(21137,53766),A(21141,53792))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20628,53629),A(20630,53635),A(20626,53633),A(20627,53627),A(20629,53631))    
end


local function GetWarriorAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10503,"WR_RAID_0503",PLATE,WARRIOR,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20913,52327),A(20912,52317),A(20916,52328),A(21381,61712),A(20915,52315),A(21379,61581),A(20914,52316),A(21380,61774))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20994,52883),A(20991,52842),A(20992,52884),A(21384,61711),A(20993,52840),A(21382,61580),A(20990,52841),A(21383,61773))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21047,52699),A(21045,52695),A(21049,52692),A(21378,61713),A(21046,52693),A(21376,61582),A(21048,52694),A(21377,61775))
    
    loc = "LOC_RAID_0502"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"WR_RAID_0502",PLATE,WARRIOR,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20077,50464),A(20079,50468),A(20075,50465),A(20080,50167),A(20076,50466),A(20073,50165),A(20078,50467),A(20074,50250))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(20168,50072),A(20170,50076),A(20166,50073),A(20171,49585),A(20167,50074),A(20164,49584),A(20169,50075),A(20165,49665))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(20176,51088),A(20178,51092),A(20174,51089),A(20179,50791),A(20175,51090),A(20172,50789),A(20177,51091),A(20173,50874))
    
    loc = "LOC_RAID_0501"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"WR_RAID_0501",PLATE,WARRIOR,ANY_FACTION,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18164,44571),A(18166,44567),A(18067,44570),A(18167,44723),A(18068,44569),A(18162,44700),A(18165,44568),A(18163,44726))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(18158,43691),A(18160,43687),A(18156,43690),A(18161,44327),A(18157,43689),A(18154,44304),A(18159,43688),A(18155,44337))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(18172,45018),A(18174,45022),A(18170,45019),A(18175,44877),A(18171,45020),A(18168,44814),A(18173,45021),A(18169,44833))
    
    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"WR_CD_90",PLATE,WARRIOR,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_CD_90",TRANSMOG,A(19487,46846,90151),A(19488,46848,90153),A(18627,46844,90149),A(18632,46849,90154),A(18628,46845,90150),A(19486,46842,90147),A(18630,46847,90152),A(18626,46843,90148))

    col = SetCollector.PVP
    loc = "LOC_PVP_0504"
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"WR_PVP_MELEE_15",PLATE,WARRIOR,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20660,54809),A(20662,54861),A(20658,54901),A(20659,54808),A(20661,54905))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20635,55269,103130),A(20637,55271,103132),A(20633,55267,103128),A(20634,55268,103129),A(20631,55213,103074),A(20636,55270,103131),A(20632,55214,103075))
    set = SetCollector:AddSetLegacy(70000,nil,col,10502,"WR_PVP_MELEE_15",PLATE,WARRIOR,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20668,55617),A(20670,55619),A(20666,55615),A(20667,55616),A(20669,55618))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20635,55269,103130),A(20637,55271,103132),A(20633,55267,103128),A(20634,55268,103129),A(20631,55213,103074),A(20636,55270,103131),A(20632,55214,103075))
                
    loc = "LOC_PVP_0503"
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"WR_PVP_MELEE_14",PLATE,WARRIOR,ALLIANCE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20668,53640),A(20670,53644),A(20666,53636),A(20667,53638),A(20669,53642))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20635,55269,103130),A(20637,55271,103132),A(20633,55267,103128),A(20634,55268,103129),A(20636,55270,103131))
    set = SetCollector:AddSetLegacy(70000,nil,col,10501,"WR_PVP_MELEE_14",PLATE,WARRIOR,HORDE,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HORDE",TRANSMOG,A(20660,53677),A(20662,53729),A(20658,53769),A(20659,53676),A(20661,53773))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(20635,55269,103130),A(20637,55271,103132),A(20633,55267,103128),A(20634,55268,103129),A(20636,55270,103131))
end


--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion05Appearances(expansion)
    if expansion.v05 then
        -- Common
        --GetLegendaries()
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