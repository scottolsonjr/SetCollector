-- Appearances from Legion (v.7.x)

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
end


local function GetExpansionAppearances()
    local col = SetCollector.EXPANSION
    local set = ""
    
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"DK_OTH_19",PLATE,DEATHKNIGHT,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DK_OTH_19",TRANSMOG,A(32543,80950),A(32545,80952),A(32541,80947),A(32546,80954),A(32542,80949),A(32539,80953),A(32544,80951),A(32540,80948))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"DH_OTH_19",LEATHER,DEMONHUNTER,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DH_OTH_19",TRANSMOG,A(32573,80990),A(32575,80992),A(32570,80987),A(32576,80994),A(32571,80989),A(32568,80993),A(32574,80991),A(32569,80988))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"DR_OTH_19",LEATHER,DRUID,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_OTH_19",TRANSMOG,A(32481,80998),A(32483,81000),A(32485,80995),A(32484,81002),A(32480,80997),A(32477,81001),A(32482,80999),A(32478,80996))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"HU_OTH_19",MAIL,HUNTER,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_OTH_19",TRANSMOG,A(32491,80982),A(32493,80984),A(32489,80979),A(32494,80986),A(32490,80981),A(32487,80985),A(32492,80983),A(32488,80980))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"MA_OTH_19",CLOTH,MAGE,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_OTH_19",TRANSMOG,A(32507,81021),A(32509,81024),A(32512,81023),A(32511,81026),A(32506,81020),A(32504,81025),A(32510,81022),A(32505,81019))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"MO_OTH_19",LEATHER,MONK,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MO_OTH_19",TRANSMOG,A(32527,81006),A(32529,81008),A(32525,81003),A(32530,81010),A(32526,81005),A(32523,81009),A(32528,81007),A(32524,81004))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"PA_OTH_19",PLATE,PALADIN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_OTH_19",TRANSMOG,A(32553,80966),A(32555,80968),A(32551,80963),A(32556,80970),A(32552,80965),A(32549,80969),A(32554,80967),A(32550,80964))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"PR_OTH_19",CLOTH,PRIEST,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_OTH_19",TRANSMOG,A(32472,81029),A(32474,81032),A(32476,81031),A(32475,81034),A(32471,81028),A(32468,81033),A(32473,81030),A(32469,81027))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"RO_OTH_19",LEATHER,ROGUE,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RO_OTH_19",TRANSMOG,A(32535,81014),A(32537,81016),A(32533,81011),A(32538,81018),A(32534,81013),A(32531,81017),A(32536,81015),A(32532,81012))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"SH_OTH_19",MAIL,SHAMAN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_OTH_19",TRANSMOG,A(32499,80974),A(32501,80976),A(32497,80971),A(32502,80978),A(32498,80973),A(32495,80977),A(32500,80975),A(32496,80972))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"WK_OTH_19",CLOTH,WARLOCK,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_OTH_19",TRANSMOG,A(32517,81037),A(32519,81040),A(32521,81039),A(32520,81042),A(32516,81036),A(32513,81041),A(32518,81038),A(32514,81035))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"WR_OTH_19",PLATE,WARRIOR,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_OTH_19",TRANSMOG,A(32561,80958),A(32563,80960),A(32559,80955),A(32564,80962),A(32560,80957),A(32557,80961),A(32562,80959),A(32558,80956))
end


local function GetDeathKnightAppearances()
    local col, set, loc = ""

    --col = SetCollector.LEGENDARY
    --set = SetCollector:AddSetLegacy(70000,nil,col,50,"DK_LG_MELEE_110",PLATE,DEATHKNIGHT,ANY_FACTION)        -- Frost
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DK_LG_MELEE_110",TRANSMOG,A(16823,76316),A(18947,76268),A(18047,76315),A(6904,76263),A(13785,76305))
    --set = SetCollector:AddSetLegacy(70000,nil,col,51,"DK_LG_MELEE_110",PLATE,DEATHKNIGHT,ANY_FACTION)        -- Unholy
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DK_LG_MELEE_110",TRANSMOG,A(20431,78760),A(18947,76268),A(11353,76307),A(16827,76303),A(13785,76305))
    --set = SetCollector:AddSetLegacy(70000,nil,col,52,"DK_LG_TANK_110",PLATE,DEATHKNIGHT,ANY_FACTION)            -- Blood
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DK_LG_TANK_110",TRANSMOG,A(18947,76268),A(11888,76262),A(20434,76264),A(14758,76310),A(13785,76305))

    col = SetCollector.RAID
    -- Antorus, the Burning Throne
    loc = "LOC_RAID_0703"
    set = SetCollector:AddSetLegacy(70000,nil,col,10703,"DK_RAID_0703",PLATE,DEATHKNIGHT,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(35231),A(35233),A(35880),A(35229),A(35234),A(35230),A(35227),A(35232),A(35228))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(35239),A(35241),A(35884),A(35237),A(35242),A(35238),A(35235),A(35240),A(35236))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(34513),A(34515),A(35888),A(34511),A(34516),A(34512),A(34509),A(34514),A(34510))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(34479),A(34481),A(34517),A(34473),A(34482),A(34478),A(34471),A(34480),A(34472))
    -- Tomb of Sargeras
    loc = "LOC_RAID_0702"
    set = SetCollector:AddSetLegacy(70000,nil,col,10702,"DK_RAID_0702",PLATE,DEATHKNIGHT,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(33759),A(33761),A(34209),A(33757),A(33762),A(33758),A(33755),A(33760),A(33756))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(33751),A(33753),A(34204),A(33749),A(33754),A(33750),A(33747),A(33752),A(33748))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(33767),A(33769),A(34214),A(33765),A(33770),A(33766),A(33763),A(33768),A(33764))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(33783),A(33785),A(34227),A(33781),A(33786),A(33782),A(33779),A(33784),A(33780))
    -- The Nighthold
    loc = "LOC_RAID_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"DK_RAID_0701",PLATE,DEATHKNIGHT,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32139),A(32141),A(31975),A(32137),A(32142),A(32138),A(32135),A(32140),A(32136))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(29805),A(29807),A(29974),A(29800),A(29808),A(29804),A(29798),A(29806),A(29799))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(29813),A(29815),A(29961),A(29811),A(29816),A(29812),A(29809),A(29814),A(29810))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29829),A(29831),A(29939),A(29827),A(29832),A(29828),A(29825),A(29830),A(29826))

    col = SetCollector.PVP
    loc = "LOC_PVP_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"DK_PVP_19",PLATE,DEATHKNIGHT,ALLIANCE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(29794,79580),A(29796,79582),A(29792,79577),A(29797,79584),A(29793,79579),A(29790,79583),A(29795,79581),A(29791,79578))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(29837,81427),A(29839,81429),A(29835,81424),A(29840,81431),A(29836,81426),A(29833,81430),A(29838,81428),A(29834,81425))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"DK_PVP_19",PLATE,DEATHKNIGHT,HORDE)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(29821,79644),A(29823,79646),A(29819,79641),A(29824,79648),A(29820,79643),A(29817,79647),A(29822,79645),A(29818,79642))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(29837,81427),A(29839,81429),A(29835,81424),A(29840,81431),A(29836,81426),A(29833,81430),A(29838,81428),A(29834,81425))
end


local function GetDemonHunterAppearances()
    local col, set, loc = ""

    --col = SetCollector.LEGENDARY
    --set = SetCollector:AddSetLegacy(70000,nil,col,50,"DH_LG_MELEE_110",LEATHER,DEMONHUNTER,ANY_FACTION)
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"DH_LG_MELEE_110",TRANSMOG,A(8342,78746),A(11154,78718),A(21430,78775),A(19854,78714),A(16625,78726))
    --set = SetCollector:AddSetLegacy(70000,nil,col,51,"DH_LG_TANK_110",LEATHER,DEMONHUNTER,ANY_FACTION)
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"DH_LG_TANK_110",TRANSMOG,A(11787,78756),A(7741,78751),A(26599,78776),A(19854,78714),A(18100,80337))

    col = SetCollector.RAID
    -- Antorus, the Burning Throne
    loc = "LOC_RAID_0703"
    set = SetCollector:AddSetLegacy(70000,nil,col,10703,"DH_RAID_0703",LEATHER,DEMONHUNTER,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(29854),A(29856),A(29780),A(29852),A(29857),A(29853),A(29850),A(29855),A(29851))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(35268),A(35270),A(35372),A(35266),A(35271),A(35267),A(35264),A(35269),A(35265))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(29862),A(29864),A(29785),A(29860),A(29865),A(29861),A(29858),A(29863),A(29859))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29585),A(29587),A(29597),A(29583),A(29588),A(29584),A(29581),A(29586),A(29582))
    -- Tomb of Sargeras
    loc = "LOC_RAID_0702"
    set = SetCollector:AddSetLegacy(70000,nil,col,10702,"DH_RAID_0702",LEATHER,DEMONHUNTER,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(33274),A(33276),A(33824),A(33278),A(33623),A(33273),A(33271),A(33275),A(33272))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(33283),A(33285),A(33840),A(33287),A(33631),A(33282),A(33280),A(33284),A(33281))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(33257),A(33259),A(33317),A(33261),A(33607),A(33256),A(33253),A(33258),A(33254))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(33312),A(33314),A(34249),A(33316),A(33591),A(33311),A(33309),A(33313),A(33310))
    -- The Nighthold
    loc = "LOC_RAID_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"DH_RAID_0701",LEATHER,DEMONHUNTER,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32020,81113),A(32022,81115),A(32100,81543),A(32018,81111),A(32023,81187),A(32019,81112),A(32016,82029),A(32021,81114),A(32017,81178))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(32004,80181),A(32006,80187),A(32208,81540),A(32002,80175),A(32007,80510),A(32003,80178),A(32000,82026),A(32005,80184),A(32001,80501))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(32012,80182),A(32014,80188),A(32220,81541),A(32010,80176),A(32015,81185),A(32011,80179),A(32008,82027),A(32013,80185),A(32009,81176))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31913,80183),A(31915,80189),A(32166,81542),A(31911,80177),A(31916,81186),A(31912,80180),A(31909,82028),A(31914,80186),A(31910,81177))
    
    col = SetCollector.PVP
    loc = "LOC_PVP_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"DH_PVP_19",LEATHER,DEMONHUNTER,ALLIANCE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(31988,79707),A(31990,79710),A(31986,79709),A(31991,79712),A(31987,79706),A(31984,79711),A(31989,79708),A(31985,79705))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(31930,79723),A(31932,79726),A(31928,79725),A(31933,79728),A(31929,79722),A(31926,79727),A(31931,79724),A(31927,79721))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"DH_PVP_19",LEATHER,DEMONHUNTER,HORDE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(31996,79715),A(31998,79718),A(31994,79717),A(31999,79720),A(31995,79714),A(31992,79719),A(31997,79716),A(31993,79713))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(31930,79723),A(31932,79726),A(31928,79725),A(31933,79728),A(31929,79722),A(31926,79727),A(31931,79724),A(31927,79721))
end


local function GetDruidAppearances()
    local col, set, loc = ""

    --col = SetCollector.LEGENDARY
    --set = SetCollector:AddSetLegacy(70000,nil,col,50,"DR_LG_CASTER_110",LEATHER,DRUID,ANY_FACTION)        -- Balance
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_LG_CASTER_110",TRANSMOG,A(6935,78747,137062),A(13520,78719,137015),A(12554,78777,137092),A(19854,78714,133976),A(15543,78727,137023))
    --set = SetCollector:AddSetLegacy(70000,nil,col,50,"DR_LG_MELEE_110",LEATHER,DRUID,ANY_FACTION)        -- Feral
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_LG_MELEE_110",TRANSMOG,A(13520,78719,137015),A(25591,78741,137056),A(6468,78779,137094),A(19854,78714,133976),A(12217,78728,137024))
    --set = SetCollector:AddSetLegacy(70000,nil,col,50,"DR_LG_TANK_110",LEATHER,DRUID,ANY_FACTION)            -- Guardian
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_LG_TANK_110",TRANSMOG,A(13520,78719,137015),A(25591,78741,137056),A(19854,78714,133976),A(17323,78752,137067),A(5689,78729,137025))
    --set = SetCollector:AddSetLegacy(70000,nil,col,50,"DR_LG_HEALER_110",LEATHER,DRUID,ANY_FACTION)            -- Restoration
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_LG_HEALER_110",TRANSMOG,A(20969,78757,137072),A(13520,78719,137015),A(27243,78780,137095),A(19027,78763,137078),A(25585,78730,137026))

    col = SetCollector.RAID
    -- Antorus, the Burning Throne
    loc = "LOC_RAID_0703"
    set = SetCollector:AddSetLegacy(70000,nil,col,10703,"DR_RAID_0703",LEATHER,DRUID,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(34938),A(34940),A(35389),A(34941,89986),A(34936),A(34937),A(34939),A(34935))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(35051),A(35053),A(35673),A(35049),A(35054),A(35050),A(35047),A(35052),A(35048))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(35043),A(35045),A(35634),A(35046,89988),A(35041),A(35042),A(35044),A(35040))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(35075),A(35077),A(35384),A(35078,89989),A(35073),A(35074),A(35076),A(35072))
    -- Tomb of Sargeras
    loc = "LOC_RAID_0702"
    set = SetCollector:AddSetLegacy(70000,nil,col,10702,"DR_RAID_0702",LEATHER,DRUID,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(33620),A(33622),A(34109),A(33624),A(33623),A(33619),A(33617),A(33621))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(33628),A(33630),A(34116),A(33632),A(33631),A(33627),A(33625),A(33629),A(33626))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(33604),A(33606),A(34101),A(33608),A(33607),A(33603),A(33601),A(33605))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(33588),A(33590),A(34123),A(33592),A(33591),A(33587),A(33585),A(33589))
    -- The Nighthold
    loc = "LOC_RAID_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"DR_RAID_0701",LEATHER,DRUID,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32072),A(32074),A(32221),A(32076),A(32075),A(32071),A(32068),A(32073),A(32069))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(30740),A(30742),A(31035),A(30744),A(30743),A(30739),A(30736),A(30741),A(30737))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(30731),A(30733),A(31024),A(30735),A(30734),A(30730),A(30727),A(30732),A(30728))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(30696),A(30698),A(30819),A(30700),A(30699),A(30695),A(30692),A(30697),A(30693))

    col = SetCollector.PVP
    loc = "LOC_PVP_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"DR_PVP_19",LEATHER,DRUID,ALLIANCE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(30705,79587),A(30707,79590),A(30709,79589),A(30708,79592),A(30704,79586),A(30701,79591),A(30706,79588),A(30702,79585))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(30687,81442),A(30689,81445),A(30685,81444),A(30690,81447),A(30686,81441),A(30683,81446),A(30688,81443),A(30684,81440))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"DR_PVP_19",LEATHER,DRUID,HORDE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(30722,79651),A(30724,79654),A(30726,79653),A(30725,79656),A(30720,79650),A(30718,79655),A(30723,79652),A(30719,79649))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(30687,81442),A(30689,81445),A(30685,81444),A(30690,81447),A(30686,81441),A(30683,81446),A(30688,81443),A(30684,81440))
end


local function GetHunterAppearances()
    local col, set, loc = ""

    --col = SetCollector.LEGENDARY
    --set = SetCollector:AddSetLegacy(70000,nil,col,52,"HU_LG_RANGED_110",MAIL,HUNTER,ANY_FACTION)        -- Beastmastery
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_LG_RANGED_110",TRANSMOG,A(8610,78749,137064),A(16241,78786,137101),A(16240,78765,137080),A(8006,76319,132466),A(21190,78889,137227))
    --set = SetCollector:AddSetLegacy(70000,nil,col,50,"HU_LG_RANGED_110",MAIL,HUNTER,ANY_FACTION)        -- Marksmanship
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_LG_RANGED_110",TRANSMOG,A(8610,78749,137064),A(15732,82382,141353),A(12489,78766,137081),A(8006,76319,132466),A(12609,78737,137033))
    --set = SetCollector:AddSetLegacy(70000,nil,col,51,"HU_LG_MELEE_110",MAIL,HUNTER,ANY_FACTION)            -- Survival
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_LG_MELEE_110",TRANSMOG,A(8610,78749,137064),A(16241,78786,137101),A(5429,78767,137082),A(8006,76319,132466),A(8348,78738,137034))

    col = SetCollector.RAID
    -- Antorus, the Burning Throne
    loc = "LOC_RAID_0703"
    set = SetCollector:AddSetLegacy(70000,nil,col,10703,"HU_RAID_0703",MAIL,HUNTER,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(34605),A(34607),A(35744),A(34603),A(34608),A(34604),A(34601),A(34606),A(34602))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(34613),A(34615),A(35748),A(34611),A(34616),A(34612),A(34609),A(34614),A(34610))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(34621),A(34623),A(35740),A(34619),A(34624),A(34620),A(34617),A(34622),A(34618))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(34629),A(34631),A(35756),A(34627),A(34632),A(34628),A(34625),A(34630),A(34626))
    -- Tomb of Sargeras
    loc = "LOC_RAID_0702"
    set = SetCollector:AddSetLegacy(70000,nil,col,10702,"HU_RAID_0702",MAIL,HUNTER,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(33442),A(33444),A(33928),A(33440),A(33445),A(33441),A(33438),A(33443),A(33439))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(33434),A(33436),A(33923),A(33432),A(33437),A(33433),A(33430),A(33435),A(33431))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(33426),A(33428),A(33860),A(33424),A(33429),A(33425),A(33422),A(33427),A(33423))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(33458),A(33460),A(33939),A(33456),A(33461),A(33457),A(33454),A(33459),A(33455))
    -- The Nighthold
    loc = "LOC_RAID_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"HU_RAID_0701",MAIL,HUNTER,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(31867,81076),A(31869,81078),A(32112,81079),A(31865,81074),A(31870),A(31866,81075),A(31863),A(31868,81077),A(31864))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(29758,79868),A(29760,79883),A(30050,81552),A(29755,79859),A(29761),A(29757,79862),A(29753),A(29759,79874),A(29754))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(29766,79869),A(29768,79884),A(30075,81553),A(29764,79860),A(29769),A(29765,79863),A(29762),A(29767,79875),A(29763))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29904,79870),A(29905,79885),A(30129,81554),A(29902,79861),A(29907),A(29903,79864),A(29900),A(29906,79876),A(29901))

    col = SetCollector.PVP
    loc = "LOC_PVP_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"HU_PVP_19",MAIL,HUNTER,ALLIANCE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(29741,79596),A(29743,79598),A(29738,79593),A(29744,79600),A(29740,79595),A(29737,79599),A(29742,79597),A(29738,79594))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(29894,81459),A(29895,81461),A(29884,81456),A(29899,81463),A(29893,81458),A(29882,81462),A(29896,81460),A(29883,81457))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"HU_PVP_19",MAIL,HUNTER,HORDE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(29749,79660),A(29751,79662),A(29747,79657),A(29752,79664),A(29748,79659),A(29745,79663),A(29750,79661),A(29746,79658))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(29894,81459),A(29895,81461),A(29884,81456),A(29899,81463),A(29893,81458),A(29882,81462),A(29896,81460),A(29883,81457))
end


local function GetMageAppearances()
    local col, set, loc = ""

    --col = SetCollector.LEGENDARY
    --set = SetCollector:AddSetLegacy(70000,nil,col,52,"MA_LG_CASTER_110",CLOTH,MAGE,ANY_FACTION)        -- Arcane
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_LG_CASTER_110",TRANSMOG,A(12341,78708,133977),A(6358,76281,132413),A(5240,76304,132442),A(12777,76308,132451),A(7318,76312,132455))
    --set = SetCollector:AddSetLegacy(70000,nil,col,50,"MA_LG_CASTER_110",CLOTH,MAGE,ANY_FACTION)        -- Fire
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_LG_CASTER_110",TRANSMOG,A(3456,76439,132863),A(12341,78708,133977),A(15880,76275,132406),A(20215,76311,132454),A(7318,76312,132455))
    --set = SetCollector:AddSetLegacy(70000,nil,col,51,"MA_LG_CASTER_110",CLOTH,MAGE,ANY_FACTION)        -- Frost
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_LG_CASTER_110",TRANSMOG,A(12341,78708,133977),A(7193,79506,138140),A(11598,76279,132411),A(16439,78710,133970),A(7318,76312,132455))

    col = SetCollector.RAID
    -- Antorus, the Burning Throne
    loc = "LOC_RAID_0703"
    set = SetCollector:AddSetLegacy(70000,nil,col,10703,"MA_RAID_0703",CLOTH,MAGE,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(34562),A(34565),A(35304),A(34563),A(34566),A(34561),A(34559),A(34564),A(34560))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(34546),A(34549),A(35296),A(34547),A(34550),A(34545),A(34543),A(34548),A(34544))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(34554),A(34557),A(35300),A(34555),A(34558),A(34553),A(34551),A(34556),A(34552))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(34578),A(34581),A(35284),A(34579),A(34582),A(34577),A(34575),A(34580),A(34576))
    -- Tomb of Sargeras
    loc = "LOC_RAID_0702"
    set = SetCollector:AddSetLegacy(70000,nil,col,10702,"MA_RAID_0702",CLOTH,MAGE,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(33524),A(33526),A(34134),A(33528),A(33363),A(33523),A(33521),A(33525),A(33522,86595))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(33532),A(33534),A(34145),A(36833),A(33535,86815),A(33531),A(33529),A(33533),A(33530,86596))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(33540),A(33542),A(34148),A(33544),A(33371),A(33539),A(33537),A(33541),A(33538,86597))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(33556),A(33558),A(34152),A(33560),A(33387),A(33555),A(33553),A(33557),A(33554,86598))
    -- The Nighthold
    loc = "LOC_RAID_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"MA_RAID_0701",CLOTH,MAGE,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(31938),A(31940),A(32048),A(31942),A(31941),A(31937),A(31934),A(31939),A(31935))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(30785),A(30787),A(31175),A(30789),A(30788),A(30784),A(30781),A(30786),A(30782))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(30776),A(30778),A(31171),A(30780),A(30779),A(30775),A(30772),A(30777),A(30773))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31083),A(31085),A(31115),A(31087),A(31086),A(31082),A(31079),A(31084),A(31080))

    col = SetCollector.PVP
    loc = "LOC_PVP_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"MA_PVP_19",CLOTH,MAGE,ALLIANCE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(30749,79603),A(30751,79606),A(30753,79605),A(30752,79608),A(30748,79602),A(30745,79607),A(30750,79604),A(30746,79601))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(31101,81474),A(31103,81477),A(31105,81476),A(31104,81479),A(31100,81473),A(31097,81478),A(31102,81475),A(31098,81472))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"MA_PVP_19",CLOTH,MAGE,HORDE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(30758,79667),A(30760,79670),A(30756,79669),A(30761,79672),A(30757,79666),A(30754,79671),A(30759,79668),A(30755,79665))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(31101,81474),A(31103,81477),A(31105,81476),A(31104,81479),A(31100,81473),A(31097,81478),A(31102,81475),A(31098,81472))
end


local function GetMonkAppearances()
    local col, set, loc = ""

    --col = SetCollector.LEGENDARY
    --set = SetCollector:AddSetLegacy(70000,nil,col,52,"MO_LG_TANK_110",LEATHER,MONK,ANY_FACTION)        -- Brewmaster
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"MO_LG_TANK_110",TRANSMOG,A(18147,78748),A(23935,78720),A(19854,78714),A(10290,78764),A(20250,78731))
    --set = SetCollector:AddSetLegacy(70000,nil,col,50,"MO_LG_HEALER_110",LEATHER,MONK,ANY_FACTION)        -- Mistweaver
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"MO_LG_HEALER_110",TRANSMOG,A(26598,78758),A(12414,78781),A(19027,80336),A(11177,78753),A(17416,78732))
    --set = SetCollector:AddSetLegacy(70000,nil,col,51,"MO_LG_MELEE_110",LEATHER,MONK,ANY_FACTION)        -- Windwalker
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"MO_LG_MELEE_110",TRANSMOG,A(17491,78723),A(9805,78782),A(15533,78742),A(19854,78714),A(7107,78733))

    col = SetCollector.RAID
    -- Antorus, the Burning Throne
    loc = "LOC_RAID_0703"
    set = SetCollector:AddSetLegacy(70000,nil,col,10703,"MO_RAID_0703",LEATHER,MONK,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(34962),A(34964),A(35712),A(34960),A(34961),A(34958),A(34963),A(34959))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(34970),A(34972),A(35716),A(34968),A(34973),A(34969),A(34966),A(34971),A(34967))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(34978),A(34980),A(35720),A(34976),A(34977),A(34974),A(34979),A(34975))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(34986),A(34988),A(35724),A(34984),A(34985),A(34982),A(34987),A(34983))

    -- Tomb of Sargeras
    loc = "LOC_RAID_0702"
    set = SetCollector:AddSetLegacy(70000,nil,col,10702,"MO_RAID_0702",LEATHER,MONK,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(33500),A(33502),A(34189),A(33498),A(33499),A(33496),A(33501),A(33497))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(33484),A(33486),A(34169),A(33482),A(33483),A(33480),A(33485),A(33481))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(33492),A(33494),A(34174),A(33490),A(33491),A(33488),A(33493),A(33489))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(33565),A(33567),A(34194),A(33563),A(33564),A(33561),A(33566),A(33562))

    -- The Nighthold
    loc = "LOC_RAID_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"MO_RAID_0701",LEATHER,MONK,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(30634),A(30645),A(30535),A(30633),A(30646,81831),A(30643),A(30628),A(30644),A(30632))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(32043),A(32046),A(31917),A(32042),A(32047,81828),A(32044),A(32040),A(32045),A(32041))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(30617),A(30619),A(30510),A(30615),A(30620,81829),A(30616),A(30613),A(30618),A(30614))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(30670),A(30671),A(30491),A(30669),A(30674,81830),A(30672),A(30667),A(30673),A(30668))

    col = SetCollector.PVP
    loc = "LOC_PVP_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"MO_PVP_19",LEATHER,MONK,ALLIANCE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(30576,79611),A(30578,79613),A(30573,79614),A(30580,79616),A(30575,79610),A(30571,79615),A(30577,79612),A(30572,79609))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(30678,81490),A(30679,81492),A(30677,81493),A(30682,81495),A(30681,81489),A(30675,81494),A(30680,81491),A(30676,81488))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"MO_PVP_19",LEATHER,MONK,HORDE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(30609,79675),A(30611,79677),A(30607,79678),A(30612,79680),A(30608,79674),A(30605,79679),A(30610,79676),A(30606,79673))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(30678,81490),A(30679,81492),A(30677,81493),A(30682,81495),A(30681,81489),A(30675,81494),A(30680,81491),A(30676,81488))
end


local function GetPaladinAppearances()
    local col, set, loc = ""

    --col = SetCollector.LEGENDARY
    --set = SetCollector:AddSetLegacy(70000,nil,col,50,"PA_LG_HEALER_110",PLATE,PALADIN,ANY_FACTION)        -- Holy
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_LG_HEALER_110",TRANSMOG,A(23720,78761),A(8370,78790),A(4129,78744),A(8489,78771),A(13785,76305))
    --set = SetCollector:AddSetLegacy(70000,nil,col,51,"PA_LG_TANK_110",PLATE,PALADIN,ANY_FACTION)        -- Protection
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_LG_TANK_110",TRANSMOG,A(7784,78721),A(8370,78790),A(8489,78771),A(21048,78755),A(13785,76305))
    --set = SetCollector:AddSetLegacy(70000,nil,col,52,"PA_LG_MELEE_110",PLATE,PALADIN,ANY_FACTION)        -- Retribution
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_LG_MELEE_110",TRANSMOG,A(10703,78750),A(18877,78724),A(19946,81795),A(8489,78771),A(13785,76305))

    col = SetCollector.RAID
    -- Antorus, the Burning Throne
    loc = "LOC_RAID_0703"
    set = SetCollector:AddSetLegacy(70000,nil,col,10703,"PA_RAID_0703",PLATE,PALADIN,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(34714),A(34716),A(35854),A(34712),A(34717),A(34713),A(34710),A(34715),A(34711))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(34722),A(34724),A(35866),A(34720),A(34725),A(34721),A(34718),A(34723),A(34719))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(34730),A(34732),A(35858),A(34728),A(34733),A(34729),A(34726),A(34731),A(34727))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(34754),A(34756),A(35870),A(34752),A(34757),A(34753),A(34750),A(34755),A(34751))
    -- Tomb of Sargeras
    loc = "LOC_RAID_0702"
    set = SetCollector:AddSetLegacy(70000,nil,col,10702,"PA_RAID_0702",PLATE,PALADIN,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32925,86627),A(32927,86635),A(32999,86251),A(32923,86631),A(),A(32924,86623),A(32921,86639),A(32926,86263),A(32922,86619))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(32946,86628),A(32948,86636),A(32979,86252),A(32944,86632),A(),A(32945,86624),A(32942,86640),A(32947,86875),A(32943,86620))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(32901,86629),A(32903,86637),A(32962,86253),A(32899,86633),A(),A(32900,86625),A(32897,86641),A(32902,86265),A(32898,86621))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(32917,86630),A(32919,86638),A(32985,86254),A(32915,86634),A(),A(32916,86626),A(32913,86642),A(32918,86266),A(32914,86622))
    -- The Nighthold
    loc = "LOC_RAID_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"PA_RAID_0701",PLATE,PALADIN,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32147),A(32149),A(32105),A(32151),A(32150),A(32146),A(32143),A(32148),A(32144))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(29644),A(29647),A(29707),A(29646),A(29648),A(29643),A(29640),A(29645),A(29641))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(29653),A(29655),A(29717),A(29657),A(29656),A(29652),A(29649),A(29654),A(29650))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29452),A(29454),A(29676),A(29456),A(29455),A(29451),A(29448),A(29453),A(29449))

    col = SetCollector.PVP
    loc = "LOC_PVP_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"PA_PVP_19",PLATE,PALADIN,ALLIANCE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(29626,79620),A(29628,79622),A(29630,79617),A(29629,79624),A(29625,79619),A(29622,79623),A(29627,79621),A(29623,79618))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(29443,81507),A(29445,81509),A(29447,81504),A(29446,81511),A(29442,81506),A(29439,81510),A(29444,81508),A(29440,81505))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"PA_PVP_19",PLATE,PALADIN,HORDE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(29635,79684),A(29637,79686),A(29639,79681),A(29638,79688),A(29634,79683),A(29631,79687),A(29636,79685),A(29632,79682))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(29443,81507),A(29445,81509),A(29447,81504),A(29446,81511),A(29442,81506),A(29439,81510),A(29444,81508),A(29440,81505))
end


local function GetPriestAppearances()
    local col, set, loc = ""

    --col = SetCollector.LEGENDARY
    --set = SetCollector:AddSetLegacy(70000,nil,col,50,"PR_LG_CASTER_110",CLOTH,PRIEST,ANY_FACTION)        -- Shadow
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_LG_CASTER_110",TRANSMOG,A(15918,78706),A(8351,78709),A(12788,78717),A(6939,78713),A(7318,76312))
    --set = SetCollector:AddSetLegacy(70000,nil,col,51,"PR_LG_HEALER_110",CLOTH,PRIEST,ANY_FACTION)        -- Holy
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_LG_HEALER_110",TRANSMOG,A(3006,78815),A(5230,78716),A(5902,78712),A(19872,78707),A(7318,76312))
    --set = SetCollector:AddSetLegacy(70000,nil,col,52,"PR_LG_HEALER_110",CLOTH,PRIEST,ANY_FACTION)        -- Discipline
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_LG_HEALER_110",TRANSMOG,A(6038,76438),A(7245,78715),A(15368,78705),A(8612,78711),A(7318,76312))

    col = SetCollector.RAID
    -- Antorus, the Burning Throne
    loc = "LOC_RAID_0703"
    set = SetCollector:AddSetLegacy(70000,nil,col,10703,"PR_RAID_0703",CLOTH,PRIEST,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(34887),A(34889),A(35329),A(34890),A(34886),A(34884),A(34888),A(34885))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(34895),A(34897),A(35324),A(34898),A(34899),A(34894),A(34892),A(34896),A(34893))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(34871),A(34873),A(35320),A(34874),A(34870),A(34868),A(34872),A(34869))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(34911),A(34913),A(35315),A(34914),A(34910),A(34908),A(34912),A(34909))

    -- Tomb of Sargeras
    loc = "LOC_RAID_0702"
    set = SetCollector:AddSetLegacy(70000,nil,col,10702,"PR_RAID_0702",CLOTH,PRIEST,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(33360),A(33362),A(34083),A(33364),A(33363),A(33359),A(33357,86671),A(33361),A(33358))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(33352),A(33354),A(34077),A(33356),A(33355),A(33351),A(33349,86819),A(33353),A(33350))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(33368),A(33370),A(34085),A(33372),A(33371),A(33367),A(33365,86673),A(33369),A(33366))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(33384),A(33386),A(34091),A(33388),A(33387),A(33383),A(33381,86674),A(33385),A(33382))
    -- The Nighthold
    loc = "LOC_RAID_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"PR_RAID_0701",CLOTH,PRIEST,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(31947),A(31949),A(32060),A(31950),A(31951),A(31946),A(31943),A(31948),A(31944))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(30262),A(30264),A(30177),A(30266),A(30265),A(30261),A(30258),A(30263),A(30259))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(30271),A(30273),A(30189),A(30275),A(30274),A(30270),A(30267),A(30272),A(30268))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(30280),A(30282),A(30231),A(30283),A(30284),A(30279),A(30276),A(30281),A(30277))

    col = SetCollector.PVP
    loc = "LOC_PVP_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"PR_PVP_19",CLOTH,PRIEST,ALLIANCE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(30244,79627),A(30246,79630),A(30248,79629),A(30247,79632),A(30243,79626),A(30240,79631),A(30245,79628),A(30241,79625))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(30289,81683),A(30291,81686),A(30292,81685),A(30293,81688),A(30288,81682),A(30285,81687),A(30290,81684),A(30286,81681))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"PR_PVP_19",CLOTH,PRIEST,HORDE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(30253,79691),A(30255,79694),A(30257,79693),A(30256,79696),A(30252,79690),A(30249,79695),A(30254,79692),A(30250,79689))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(30289,81683),A(30291,81686),A(30292,81685),A(30293,81688),A(30288,81682),A(30285,81687),A(30290,81684),A(30286,81681))
end


local function GetRogueAppearances()
    local col, set, loc = ""

    --col = SetCollector.LEGENDARY
    --set = SetCollector:AddSetLegacy(70000,nil,col,50,"RO_LG_MELEE_110",LEATHER,ROGUE,ANY_FACTION)        -- Assassination
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"RO_LG_MELEE_110",TRANSMOG,A(19454,78725),A(26599,78763),A(19854,78714),A(4464,78754),A(15486,78734))
    --set = SetCollector:AddSetLegacy(70000,nil,col,51,"RO_LG_MELEE_110",LEATHER,ROGUE,ANY_FACTION)        -- Outlaw
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"RO_LG_MELEE_110",TRANSMOG,A(16717,78784),A(12239,82377),A(19854,78714),A(4464,78754),A(5542,78735))
    --set = SetCollector:AddSetLegacy(70000,nil,col,52,"RO_LG_MELEE_110",LEATHER,ROGUE,ANY_FACTION)        -- Subtlety
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"RO_LG_MELEE_110",TRANSMOG,A(19454,78725),A(17341,78785),A(19854,78714),A(4464,78754),A(11721,78736))
    --set = SetCollector:AddSetLegacy(70000,nil,col,30,"LG_ROGUE_85",ANY_ARMOR,ROGUE,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16977,39516),A(16977,39517))

    col = SetCollector.RAID
    -- Antorus, the Burning Throne
    loc = "LOC_RAID_0703"
    set = SetCollector:AddSetLegacy(70000,nil,col,10703,"RO_RAID_0703",LEATHER,ROGUE,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(35196),A(35198),A(35828),A(35194),A(35199),A(35195),A(35192),A(35197))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(35181),A(35183),A(35823),A(35179),A(35184),A(35180),A(35177),A(35182),A(35178))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(35276),A(35278),A(35701),A(35274),A(35279),A(35275),A(35272),A(35277))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(35205),A(35207),A(35833),A(35203),A(35208),A(35204),A(35201),A(35206))

    -- Tomb of Sargeras
    loc = "LOC_RAID_0702"
    set = SetCollector:AddSetLegacy(70000,nil,col,10702,"RO_RAID_0702",LEATHER,ROGUE,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(33661),A(33663),A(34334),A(33659),A(33664),A(33660),A(33657),A(33662),A(33658))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(33669),A(33671),A(34337),A(33667),A(33672),A(33668),A(33665),A(33670),A(33666))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(33637),A(33639),A(34325),A(33635),A(33640),A(33636),A(33633),A(33638),A(33634))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(33685),A(33687),A(34343),A(33683),A(33688),A(33684),A(33681),A(33686),A(33682))

    -- The Nighthold
    loc = "LOC_RAID_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"RO_RAID_0701",LEATHER,ROGUE,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32083),A(32084),A(32298),A(32079),A(32085),A(32080),A(32077),A(32081),A(32078))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(29870),A(29872),A(32292),A(29868),A(29873),A(29869),A(29866),A(29871),A(29867))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(29197),A(29218),A(32282),A(29195),A(29219),A(29196),A(29193),A(29217),A(29194))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(28986),A(28988),A(32317),A(28984),A(28989),A(28985),A(28981),A(28987),A(28982))

    col = SetCollector.PVP
    loc = "LOC_PVP_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"RO_PVP_19",LEATHER,ROGUE,ALLIANCE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(29152,78454),A(29154,78456),A(29150,78451),A(29155,78458),A(29151,78453),A(29148,78457),A(29153,78455),A(29149,78452))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(28994,78462),A(28996,78464),A(28992,78459),A(28997,78466),A(28993,78461),A(28990,78465),A(28995,78463),A(28991,78460))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"RO_PVP_19",LEATHER,ROGUE,HORDE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(29189,78446),A(29191,78448),A(29187,78443),A(29192,78450),A(29188,78445),A(29185,78449),A(29190,78447),A(29186,78444))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(28994,78462),A(28996,78464),A(28992,78459),A(28997,78466),A(28993,78461),A(28990,78465),A(28995,78463),A(28991,78460))
end


local function GetShamanAppearances()
    local col, set, loc = ""

    --col = SetCollector.ARTIFACT
    --[[set = SetCollector:AddSetLegacy(70000,nil,col,10,"SH_AR_CASTER_10",MAIL,SHAMAN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ONE",TRANSMOG,A(27742,76534,128935),A(29134,77278,128936))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"TWO",TRANSMOG,A(27870,77653,128935),A(29135,77279,128936))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"THREE",TRANSMOG,A(27871,77654,128935),A(29136,77280,128936))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"FOUR",TRANSMOG,A(27872,77655,128935),A(29137,77281,128936))
    set = SetCollector:AddSetLegacy(70000,nil,col,11,"SH_AR_CASTER_11",MAIL,SHAMAN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ONE",TRANSMOG,A(27873,77656,128935),A(30544,78644,128936))
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"SH_AR_MELEE_10",MAIL,SHAMAN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ONE",TRANSMOG,A(27384,76535,128819),A(27609,73717,128873))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"TWO",TRANSMOG,A(27385,76543,128819),A(27609,80554,128873))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"THREE",TRANSMOG,A(27386,76544,128819),A(27609,80555,128873))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"FOUR",TRANSMOG,A(27387,76545,128819),A(27609,80556,128873))
    set = SetCollector:AddSetLegacy(70000,nil,col,11,"SH_AR_MELEE_11",MAIL,SHAMAN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ONE",TRANSMOG,A(27374,76546,128819),A(31838,80557,128873))
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"SH_AR_HEALER_10",MAIL,SHAMAN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ONE",TRANSMOG,A(27676,76536,128911),A(28097,76537,128934))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"TWO",TRANSMOG,A(27677,77672,128911),A(28098,77691,128934))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"THREE",TRANSMOG,A(27678,77673,128911),A(28099,77692,128934))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"FOUR",TRANSMOG,A(27679,77674,128911),A(28100,77693,128934))
    set = SetCollector:AddSetLegacy(70000,nil,col,11,"SH_AR_HEALER_11",MAIL,SHAMAN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ONE",TRANSMOG,A(27743,77675,128911),A(28097,77694,128934))]]--

    --col = SetCollector.LEGENDARY
    --set = SetCollector:AddSetLegacy(70000,nil,col,50,"SH_LG_CASTER_110",MAIL,SHAMAN,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_LG_CASTER_110",TRANSMOG,A(6844,78759),A(10114,78787),A(17407,78768),A(8006,76319),A(16160,78739))
    --set = SetCollector:AddSetLegacy(70000,nil,col,51,"SH_LG_HEALER_110",MAIL,SHAMAN,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_LG_CASTER_110",TRANSMOG,A(8443,78789),A(9923,78743),A(4573,78770),A(8006,76319),A(15925,78740))
    --set = SetCollector:AddSetLegacy(70000,nil,col,52,"SH_LG_MELEE_110",MAIL,SHAMAN,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_LG_CASTER_110",TRANSMOG,A(18562,79374),A(15919,78769),A(13592,78788),A(8006,76319),A(19925,79500))

    col = SetCollector.RAID
    -- Antorus, the Burning Throne
    loc = "LOC_RAID_0703"
    set = SetCollector:AddSetLegacy(70000,nil,col,10703,"SH_RAID_0703",MAIL,SHAMAN,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(35098,90235),A(35100,90243),A(35772,90227),A(35096,90223),A(35101,89905),A(35097,90231),A(35094,89897),A(35099,90239),A(35095,90580))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(35089,90236),A(35091,90244),A(35764,90228),A(35087,90224),A(35092,89906),A(35088,90232),A(35085,89898),A(35090,90240),A(35086,90581))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(35106,90237),A(35108,90245),A(35768,90229),A(35104,90225),A(35109,89907),A(35105,90233),A(35102,89899),A(35107,90241),A(35103,90582))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(35122,90238),A(35124,90246),A(35780,90230),A(35120,90226),A(35125,89908),A(35121,90234),A(35118,89900),A(35123,90242),A(35119,90583))
    -- Tomb of Sargeras
    loc = "LOC_RAID_0702"
    set = SetCollector:AddSetLegacy(70000,nil,col,10702,"SH_RAID_0702",MAIL,SHAMAN,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(34317,86331),A(34319,86339),A(34302,86323),A(34321,86319),A(34316,86327),A(34314,86727),A(34318,86335),A(34315,86707))  --,A(33445)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(33702,86332),A(33704,86340),A(34299,86324),A(33706,86320),A(33701,86328),A(33698,86728),A(33703,86336),A(33699,86708))  -- ,A(33437)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(33720,86333),A(33722,86341),A(34310,86325),A(33724,86321),A(33719,86329),A(33716,86729),A(33721,86337),A(33717,86709))  --,A(33429)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(33868,86334),A(33870,86342),A(34311,86326),A(33872,86322),A(33867,86330),A(33865,86730),A(33869,86338),A(33866,86710))  --,A(33461)
    -- The Nighthold
    loc = "LOC_RAID_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"SH_RAID_0701",MAIL,SHAMAN,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32095,81070),A(32096,81073),A(32086,81539),A(32099,81072),A(32098,81257),A(32094,81069),A(32091,81961),A(32097,81071),A(32092,81869))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(30937,79871),A(30938,79886),A(31364,81536),A(30942,79880),A(30940,80523),A(30936,79865),A(30933,81958),A(30939,79877),A(30934,81866))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(30909,79872),A(30912,79887),A(31338,81537),A(30914,79881),A(30908,79866),A(30906,81959),A(30910,79878),A(30911,81867))  -- ,A(30931,81255)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31039,79873),A(31041,79888),A(31348,81538),A(31043,79882),A(31042,81256),A(31038,79867),A(30964,81960),A(31040,79879),A(31036,81868))

    col = SetCollector.PVP
    loc = "LOC_PVP_0703"
    --set = SetCollector:AddSetLegacy(70200,nil,col,10703,"SH_PVP_20",MAIL,SHAMAN,ALLIANCE,loc)
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    --set = SetCollector:AddSetLegacy(70200,nil,col,10703,"SH_PVP_20",MAIL,SHAMAN,HORDE,loc)
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    loc = "LOC_PVP_0702"
    --set = SetCollector:AddSetLegacy(70200,nil,col,10702,"SH_PVP_20",MAIL,SHAMAN,ALLIANCE,loc)
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    --set = SetCollector:AddSetLegacy(70200,nil,col,10702,"SH_PVP_20",MAIL,SHAMAN,HORDE,loc)
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    loc = "LOC_PVP_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"SH_PVP_19",MAIL,SHAMAN,ALLIANCE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(30928,79636),A(30929,79638),A(30926,79633),A(30931,79640),A(30927,79635),A(30924,79639),A(30930,79637),A(30925,79634))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(31329,81523),A(31334,81525),A(31336,81520),A(31335,81527),A(31332,81522),A(31328,81526),A(31333,81524),A(31330,81521))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"SH_PVP_19",MAIL,SHAMAN,HORDE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(30918,79700),A(30919,79702),A(30921,79697),A(30920,79704),A(30917,79699),A(30915,79703),A(30922,79701),A(30923,79698))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(31329,81523),A(31334,81525),A(31336,81520),A(31335,81527),A(31332,81522),A(31328,81526),A(31333,81524),A(31330,81521))
end


local function GetWarlockAppearances()
    local col, set, loc = ""
    
    --[[col = SetCollector.ARTIFACT
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"WK_AR_CASTER_10",CLOTH,WARLOCK,ANY_FACTION)                -- Destruction
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ONE",TRANSMOG,A(27902,74595,128941))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"TWO",TRANSMOG,A(27900,74596,128941))]]--
    
    --col = SetCollector.LEGENDARY
    --set = SetCollector:AddSetLegacy(70000,nil,col,50,"WK_LG_CASTER_110",CLOTH,WARLOCK,ANY_FACTION)        -- Destruction
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_LG_CASTER_110",TRANSMOG,A(24713,76267),A(1466,76276),A(21312,76313),A(14774,76251),A(7318,76312))
    --set = SetCollector:AddSetLegacy(70000,nil,col,51,"WK_LG_CASTER_110",CLOTH,WARLOCK,ANY_FACTION)        -- Demonology
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_LG_CASTER_110",TRANSMOG,A(18071,76273),A(12774,76270),A(14717,76266),A(14774,76251),A(7318,76312))
    --set = SetCollector:AddSetLegacy(70000,nil,col,52,"WK_LG_CASTER_110",CLOTH,WARLOCK,ANY_FACTION)        -- Affliction
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_LG_CASTER_110",TRANSMOG,A(12764,76274),A(26163,76272),A(3131,76314),A(14774,76251),A(7318,76312))

    col = SetCollector.RAID
    -- Antorus, the Burning Throne
    loc = "LOC_RAID_0703"
    set = SetCollector:AddSetLegacy(70000,nil,col,10703,"WK_RAID_0703",CLOTH,WARLOCK,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(34814,90255),A(34816,90267),A(35367,90247),A(34818,90263),A(34817,89785),A(34812,90251),A(34810,89737),A(34815,90259),A(34811,89749))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(34797,90256),A(34799,90268),A(35357,90248),A(34801,90264),A(34800,89786),A(34796,90252),A(34794,89738),A(34798,90260),A(34795,89750))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(34789,90257),A(34791,90269),A(35352,90249),A(34793,90265),A(34792,89787),A(34788,90253),A(34786,89739),A(34790,90261),A(34787,89751))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(34839,90258),A(34841,90270),A(35342,90250),A(34843,90266),A(34842,89788),A(34838,90254),A(34836,89740),A(34840,90262),A(34837,89752))
    -- Tomb of Sargeras
    loc = "LOC_RAID_0702"
    set = SetCollector:AddSetLegacy(70000,nil,col,10702,"WK_RAID_0702",CLOTH,WARLOCK,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(33203,86351),A(33205,86363),A(33232,86343),A(33207,86359),A(33206,86763),A(33202,86347),A(33199,86759),A(33204,86355),A(33200,86739))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(33149,86352),A(33151,86364),A(33226,86344),A(33153,86360),A(33152,86764),A(33148,86348),A(33145,86760),A(33150,86356),A(33146,86740))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(33096,86353),A(33098,86365),A(33214,86345),A(33100,86361),A(33099,86765),A(33095,86349),A(33092,86761),A(33097,86357),A(33093,86741))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(33194,86354),A(33196,86366),A(33238,86346),A(33198,86362),A(33197,86766),A(33193,86350),A(33190,86762),A(33195,86358),A(33191,86742))
    -- The Nighthold
    loc = "LOC_RAID_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"WK_RAID_0701",CLOTH,WARLOCK,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(31884,81097),A(31886,81100),A(31871,81562),A(31888,81099),A(31887,81945),A(31883,81096),A(31880,81949),A(31885,81098),A(31881,81823))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(29171,79784),A(29173,79811),A(29040,81559),A(29175,79802),A(29174,81942),A(29170,79775),A(29167,81946),A(29172,79793),A(29168,81820))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(29161,79785),A(29163,79812),A(29028,81560),A(29165,79803),A(29164,81943),A(29160,79776),A(29157,81947),A(29162,79794),A(29158,81821))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29083,79786),A(29085,79813),A(29049,81561),A(29087,79804),A(29086,81944),A(29082,79777),A(29079,81948),A(29084,79795),A(29080,81822))
                
    col = SetCollector.PVP
    loc = "LOC_PVP_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"WK_PVP_19",CLOTH,WARLOCK,ALLIANCE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(29144,78502),A(29146,78505),A(29145,78504),A(29147,78507),A(29142,78501),A(29139,78506),A(29143,78503),A(29140,78500))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(29073,78485),A(29076,78488),A(29078,78487),A(29077,78490),A(29072,78484),A(29069,78489),A(29074,78486),A(29070,78483))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"WK_PVP_19",CLOTH,WARLOCK,HORDE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(29180,78494),A(29182,78497),A(29184,78496),A(29183,78499),A(29179,78493),A(29176,78498),A(29181,78495),A(29177,78492))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(29073,78485),A(29076,78488),A(29078,78487),A(29077,78490),A(29072,78484),A(29069,78489),A(29074,78486),A(29070,78483))
end


local function GetWarriorAppearances()
    local col = ""
    local set = ""
    local loc = ""

    --col = SetCollector.LEGENDARY
    --set = SetCollector:AddSetLegacy(70000,nil,col,50,"WR_LG_MELEE_110",PLATE,WARRIOR,ANY_FACTION)        -- Arms
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_LG_MELEE_110",TRANSMOG,A(15788,78792),A(20175,78745),A(26953,78772),A(11590,78762),A(13785,76305))
    --set = SetCollector:AddSetLegacy(70000,nil,col,51,"WR_LG_MELEE_110",PLATE,WARRIOR,ANY_FACTION)        -- Fury
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_LG_MELEE_110",TRANSMOG,A(7730,78773),A(18867,78812),A(15788,78792),A(26953,78772),A(13785,76305))
    --set = SetCollector:AddSetLegacy(70000,nil,col,52,"WR_LG_TANK_110",PLATE,WARRIOR,ANY_FACTION)        -- Protection
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_LG_TANK_110",TRANSMOG,A(11157,78722),A(15788,78792),A(6335,78793),A(15910,78774),A(13785,76305))

    col = SetCollector.RAID
    -- Antorus, the Burning Throne
    loc = "LOC_RAID_0703"
    set = SetCollector:AddSetLegacy(70000,nil,col,10703,"WR_RAID_0703",PLATE,WARRIOR,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(34672,90283),A(34674,90291),A(35798,90275),A(34670,90271),A(34675,90343),A(34671,90279),A(34668,89961),A(34673,90287),A(34669,89913))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(34661,90284),A(34663,90292),A(35795,90276),A(34659,90272),A(34664,90489),A(34660,90280),A(34657,90485),A(34662,90288),A(34658,89914))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(34680,90285),A(34682,90293),A(35801,90277),A(34678,90273),A(34683,90345),A(34679,90590),A(34676,89963),A(34681,90289),A(34677,89915))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(34698,90286),A(34700,90294),A(35808,90278),A(34696,90274),A(34701,90346),A(34697,90591),A(34694,89964),A(34699,90290),A(34695,89916))

    -- Tomb of Sargeras
    loc = "LOC_RAID_0702"
    set = SetCollector:AddSetLegacy(70000,nil,col,10702,"WR_RAID_0702",PLATE,WARRIOR,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(33051,86379),A(33053,86387),A(33130,86371),A(33049,86367),A(33050,86375),A(33047,86783),A(33052,86383),A(33048,86767))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(33015,86380),A(33017,86388),A(33110,86372),A(33013,86368),A(33014,86376),A(33011,86887),A(33016,86384),A(33012,86768))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(33035,86381),A(33037,86389),A(33120,86373),A(33033,86369),A(33034,86377),A(33031,86785),A(33036,86385),A(33032,86769))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(33069,86382),A(33071,86390),A(33135,86374),A(33067,86370),A(33068,86378),A(33065,86786),A(33070,86386),A(33066,86770))

    -- The Nighthold
    loc = "LOC_RAID_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"WR_RAID_0701",PLATE,WARRIOR,ANY_FACTION,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32157,81052),A(32160,81054),A(32127,81055),A(32156,81050),A(32161,81163),A(32158,81051),A(32154,81266),A(32159,81053),A(32155,81175))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(31444,79913),A(31447,79931),A(32242,81544),A(31443,79895),A(31448,79555),A(31445,79904),A(31441,80528),A(31446,79922),A(31442,80534))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(31410,79914),A(31413,79932),A(31545,81545),A(31409,79896),A(31414,81161),A(31411,79905),A(31407,81264),A(31412,79923),A(31408,81173))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31449,79915),A(31455,79933),A(32229,81546),A(31452,79897),A(31456,81162),A(31453,79906),A(31450,81265),A(31454,79924),A(31451,81174))
                
    col = SetCollector.PVP
    loc = "LOC_PVP_0701"
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"WR_PVP_19",PLATE,WARRIOR,ALLIANCE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(31436,79740),A(31439,79742),A(31435,79737),A(31440,79744),A(31437,79739),A(31433,79743),A(31438,79741),A(31434,79738))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(31319,79756),A(31325,79758),A(31322,79753),A(31326,79760),A(31323,79755),A(31320,79759),A(31324,79757),A(31321,79754))
    set = SetCollector:AddSetLegacy(70000,nil,col,10701,"WR_PVP_19",PLATE,WARRIOR,HORDE,loc)
        --SetCollector:AddVariantLegacy(70000,nil,col,set,"COMBATANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(31418,79748),A(31421,79750),A(31417,79745),A(31422,79742),A(31419,79747),A(31415,79751),A(31420,79749),A(31416,79746))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"ELITE",TRANSMOG,A(31319,79756),A(31325,79758),A(31322,79753),A(31326,79760),A(31323,79755),A(31320,79759),A(31324,79757),A(31321,79754))
end

--
--    GLOBAL FUNCTIONS
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