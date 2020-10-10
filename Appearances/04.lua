-- Appearances from Cataclysm (v.4.x)

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
                
    set = SetCollector:AddSetLegacy(70000,nil,col,4,"LG_85",ANY,ANY,ANY,ANY)
            SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_85",TRANSMOG,A(15522,36447,71086))
end


--[[
local function GetCraftingAppearances()
    local col = SetCollector.CRAFTED
    local set = ""
                
    set = SetCollector:AddSetLegacy(70000,nil,col,4,"CR_040000",CLOTH,ANY,ANY,ANY)
            SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_85",TRANSMOG,A(15522,36447,71086))
end
]]--


local function GetDeathKnightAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0403"
    set = SetCollector:AddSetLegacy(70000,nil,col,10403,"DK_RAID_0403",PLATE,DEATHKNIGHT,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16839,40119),A(16837,40168),A(16841,40091),A(16836,39761),A(16840,40102),A(16843,39804),A(17159,40139),A(16842,39779))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(16823,38807),A(16822,38809),A(16825,38805),A(15990,38982),A(16824,38806),A(16827,38964),A(15981,38808),A(16826,38973))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(16831,40024),A(16829,40073),A(16833,39996),A(16828,39757),A(16832,40007),A(16835,39798),A(16830,40044),A(16834,39772))
    loc = "LOC_RAID_0402"
    set = SetCollector:AddSetLegacy(70000,nil,col,10402,"DK_RAID_0402",PLATE,DEATHKNIGHT,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(15635,36428),A(15795,36430),A(15796,36351),A(15788,36329),A(15529,36427),A(15883,36537),A(15639,36429),A(15538,36404))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(15801,36705),A(15803,36707),A(15799,36703),A(15804,36698),A(15800,36704),A(15802,36706),A(15798,36636))
    loc = "LOC_RAID_0401"
    set = SetCollector:AddSetLegacy(70000,nil,col,10401,"DK_RAID_0401",PLATE,DEATHKNIGHT,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(14106,30068),A(14082,30070),A(13978,30066),A(13948,29424),A(14105,30067),A(13995,29588),A(13979,30069),A(13784,29577))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(14749,32742),A(14752,32744),A(14733,32740),A(14088,32671),A(14772,32741),A(14721,32633),A(14732,32743),A(14708,32643))
end


local function GetDruidAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0403"
    set = SetCollector:AddSetLegacy(70000,nil,col,10403,"DR_RAID_0403",LEATHER,DRUID,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16628,40128),A(16631,40176),A(16630,40094),A(16632, 39767),A(16627,40108),A(16624, 39807),A(16629,40146),A(16625, 39819))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(16635,38840),A(16633,38843),A(16634,38842),A(15993, 38975),A(16636,38839),A(16639, 38962),A(15984,38841),A(16638, 38957))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(16618,40033),A(16613,40081),A(16623,39999),A(16612, 39756),A(16615,40013),A(16619, 39801),A(16614,40051),A(16617, 39812))
    loc = "LOC_RAID_0402"
    set = SetCollector:AddSetLegacy(70000,nil,col,10402,"DR_RAID_0402",LEATHER,DRUID,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(15829,36466),A(15826,36469),A(15820,36468),A(15853, 36598),A(15534,36465),A(15882, 36536),A(15836,36467),A(15543, 36378))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(15856,36724),A(15860,36727),A(15857,36726),A(15861, 36691),A(15858,36723),A(),A(15859,36725),A(15855, 36666))
    loc = "LOC_RAID_0401"
    set = SetCollector:AddSetLegacy(70000,nil,col,10401,"DR_RAID_0401",LEATHER,DRUID,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(13975,30018),A(13962,30020),A(13991,30017),A(14023, 29675),A(14051,30021),A(13981, 29572),A(14002,30019),A(13909, 29708))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(14737,32761),A(14706,32764),A(14725,32763),A(14711, 32617),A(14753,32760),A(13590, 32648),A(14714,32762),A(14094, 32701))
end


local function GetHunterAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0403"
    set = SetCollector:AddSetLegacy(70000,nil,col,10403,"HU_RAID_0403",MAIL,HUNTER,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16852,40130),A(16855,40169),A(16850,40093),A(16851, 39816),A(16857,40106),A(16856, 39832),A(16854,40141),A(16853, 39803))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(16845,38851),A(16847,38853),A(16844,38849),A(15994, 38961),A(16849,38850),A(16848, 38955),A(15985,38852),A(16846, 38965))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(16816,40035),A(16819,40074),A(16814,39998),A(16815, 39809),A(16821,40011),A(16820, 39824),A(16818,40046),A(16817, 39797))
    loc = "LOC_RAID_0402"
    set = SetCollector:AddSetLegacy(70000,nil,col,10402,"HU_RAID_0402",MAIL,HUNTER,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(15722,36421),A(15723,36423),A(15721,36424),A(15724, 36546),A(15531,36420),A(15886, 36540),A(15637,36422),A(15540, 36591))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(15729,36730),A(15731,36732),A(15727,36728),A(15732, 36787),A(15728,36729),A(),A(15730,36731),A(15726, 36685))
    loc = "LOC_RAID_0401"
    set = SetCollector:AddSetLegacy(70000,nil,col,10401,"HU_RAID_0401",MAIL,HUNTER,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(14048,30035),A(13964,30038),A(13949,30036),A(14003, 29599),A(14033,30039),A(14039, 29702),A(13988,30037),A(13786, 29567))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(14757,32767),A(14743,32769),A(14718,32765),A(14713, 32622),A(14767,32766),A(14762, 32705),A(14090,32768),A(14734, 32653))
end


local function GetMageAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0403"
    set = SetCollector:AddSetLegacy(70000,nil,col,10403,"MA_RAID_0403",CLOTH,MAGE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16649,40133),A(16652,40180),A(16651,40161),A(16648,40103),A(16645,39781),A(16650,40152))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(16667,38463),A(16669,38466),A(16668,38465),A(15987,39006),A(16666,38462),A(16663,38969),A(15978,38464),A(16664,38912))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(16658,40038),A(16661,40085),A(16660,40066),A(),A(16657,40008),A(16654,39774),A(16659,40057))
    loc = "LOC_RAID_0402"
    set = SetCollector:AddSetLegacy(70000,nil,col,10402,"MA_RAID_0402",CLOTH,MAGE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(15707,36569),A(15710,36572),A(15709,36571),A(15711,36606),A(15706,36568),A(15887,36541),A(15708,36570),A(15545,35618))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(15690,36734),A(15693,36737),A(15692,36736),A(15694,36699),A(15689,36733),A(15691,36735))
    loc = "LOC_RAID_0401"
    set = SetCollector:AddSetLegacy(70000,nil,col,10401,"MA_RAID_0401",CLOTH,MAGE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(13963,29992),A(13984,29995),A(14025,29993),A(14034,29697),A(14097,29996),A(13104,26479),A(13107,29994),A(13910,29030))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(14095,32771),A(14729,32774),A(14709,32773),A(14766,32710),A(14773,32770),A(14774,32772),A(14740,32659))
end


local function GetPaladinAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0403"
    set = SetCollector:AddSetLegacy(70000,nil,col,10403,"PA_RAID_0403",PLATE,PALADIN,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16862,40125),A(16864,40174),A(16860,40159),A(16865,39795),A(16861,40107),A(16858,39821),A(16863,40144),A(16859,39769))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(16870,38744),A(16871,38746),A(16868,38742),A(15989,38967),A(16869,38743),A(16866,38958),A(15980,38745),A(16867,38977))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(16876,40030),A(16878,40079),A(16874,40064),A(16879,39789),A(16875,40012),A(16872,39814),A(16877,40049),A(16873,39746))
    loc = "LOC_RAID_0402"
    set = SetCollector:AddSetLegacy(70000,nil,col,10402,"PA_RAID_0402",PLATE,PALADIN,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(15681,36433),A(15683,36435),A(15685,36431),A(15684,36401),A(15530,36432),A(15884,36538),A(15682,36434),A(15539,36607))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(15674,36740),A(15676,36742),A(15678,36738),A(15677,36680),A(15673,36739),A(15675,36741),A(15671,36702))
    loc = "LOC_RAID_0401"
    set = SetCollector:AddSetLegacy(70000,nil,col,10401,"PA_RAID_0401",PLATE,PALADIN,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(14049,30073),A(13974,30075),A(13217,30071),A(14044,29709),A(14001,30072),A(13218,29674),A(14035,30074),A(13785,28817))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(14755,32777),A(14738,32779),A(14722,32775),A(14092,32700),A(14715,32776),A(14707,32618),A(14765,32778),A(14745,32667))
end


local function GetPriestAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0403"
    set = SetCollector:AddSetLegacy(70000,nil,col,10403,"PR_RAID_0403",CLOTH,PRIEST,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(17037,40135),A(17033,40182),A(17035,40163),A(17036,40114),A(17038,40154))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(16918,38568),A(16916,38565),A(16917,38566),A(15988,39005),A(16919,38569),A(17040,38922),A(15979,38567),A(17041,38913))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(17049,40040),A(17045,40087),A(17047,40068),A(17048,40019),A(17050,40059))
    loc = "LOC_RAID_0402"
    set = SetCollector:AddSetLegacy(70000,nil,col,10402,"PR_RAID_0402",CLOTH,PRIEST,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(15761,36559),A(15764,36562),A(15763,36561),A(15765,36548),A(15535,36558),A(15897,36612),A(15762,36560),A(15544,35617))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(15754,36759),A(15757,36762),A(15756,36761),A(15753,36758),A(15947,36820),A(15755,36760))
    loc = "LOC_RAID_0401"
    set = SetCollector:AddSetLegacy(70000,nil,col,10401,"PR_RAID_0401",CLOTH,PRIEST,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(14024,30005),A(13993,30002),A(14037,30003),A(13982,29573),A(13976,30006),A(13961,31343),A(14000,30004),A(13911,29031))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(14710,32796),A(14723,32799),A(14763,32798),A(14096,32647),A(14736,32795),A(14744,32666),A(14716,32797),A(14756,32692))
end


local function GetRogueAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0403"
    set = SetCollector:AddSetLegacy(70000,nil,col,10403,"RO_RAID_0403",LEATHER,ROGUE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16722,40131),A(16724,40170),A(16720,40096),A(16725,39831),A(16721,40111),A(16718,39778),A(16723,40140),A(16719,39791))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(16730,38846),A(16731,38848),A(16728,38844),A(15992,38954),A(16729,38845),A(16726,38974),A(15983,38847),A(16727,38968))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(16714,40036),A(16716,40075),A(16712,40001),A(16717,39823),A(16713,40016),A(16710,39771),A(16715,40045),A(16711,39785))
    loc = "LOC_RAID_0402"
    set = SetCollector:AddSetLegacy(70000,nil,col,10402,"RO_RAID_0402",LEATHER,ROGUE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(15642,36417),A(15644,36419),A(15641,36415),A(15636,36157),A(15533,36416),A(15846,36824),A(15643,36418),A(15542,36589))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(15649,36765),A(15651,36767),A(15647,36763),A(15652,36659),A(15648,36764),A(15905,36825),A(15650,36766),A(15646,36695))
    loc = "LOC_RAID_0401"
    set = SetCollector:AddSetLegacy(70000,nil,col,10401,"RO_RAID_0401",LEATHER,ROGUE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(14041,30031),A(13950,30034),A(13611,30033),A(13986,29578),A(13965,30030),A(13591,29712),A(13996,30032),A(13908,29692))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(14760,32802),A(14746,32804),A(14731,32800),A(14727,32642),A(14742,32801),A(14091,32697),A(14720,32803),A(14769,32715))
end


local function GetShamanAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0403"
    set = SetCollector:AddSetLegacy(70000,nil,col,10403,"SH_RAID_0403",MAIL,SHAMAN,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16736,40117),A(17150,40173),A(16740,40155),A(16739,39783),A(16735,40098),A(16732,39845),A(16737,40143),A(16733,39794))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(16752,38856),A(16984,38854),A(16750,38858),A(15995,38971),A(16753,38857),A(16756,38951),A(15986,38855),A(16755,38966))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(16745,40022),A(17149,40078),A(16741,40060),A(16742,39776),A(16746,40003),A(16749,39840),A(16744,40048),A(16748,39788))
    loc = "LOC_RAID_0402"
    set = SetCollector:AddSetLegacy(70000,nil,col,10402,"SH_RAID_0402",MAIL,SHAMAN,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(15892,36575),A(15814,36577),A(15875,36573),A(15819,36390),A(15532,36574),A(15885,36539),A(15831,36576),A(15541,36402))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(15933,36780),A(15922,36782),A(15929,36778),A(15919,36656),A(15921,36779),A(15916,36781),A(15925,36679))
    loc = "LOC_RAID_0401"
    set = SetCollector:AddSetLegacy(70000,nil,col,10401,"SH_RAID_0401",MAIL,SHAMAN,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(14036,30047),A(14050,30049),A(14104,30045),A(13973,29562),A(13983,30046),A(13990,29582),A(14046,30048),A(13907,29595))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(14764,32817),A(14754,32819),A(14703,32815),A(14739,32658),A(14730,32816),A(14726,32639),A(14751,32818),A(14093,32626))
end


local function GetWarlockAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0403"
    set = SetCollector:AddSetLegacy(70000,nil,col,10403,"WK_RAID_0403",CLOTH,WARLOCK,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16549,40134),A(16545,40181),A(16547,40162),A(16546,39805),A(16548,40113),A(16543,100511),A(16550,40153),A(16544,39834))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(16558,38563),A(16554,38560),A(16556,38561),A(16555,38963),A(16557,38564),A(16552,38914),A(16559,38562),A(16553,38948))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(16540,40039),A(16536,40086),A(16538,40067),A(16537,39799),A(16539,40018),A(),A(16541,40058),A(16535,39826))
    loc = "LOC_RAID_0402"
    set = SetCollector:AddSetLegacy(70000,nil,col,10402,"WK_RAID_0402",CLOTH,WARLOCK,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(15821,36564),A(15879,36567),A(15830,36566),A(15880,36547),A(15536,36563),A(15878,36565),A(15825,36399))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(15918,36804),A(15945,36807),A(15913,36806),A(15943,36803),A(15944,36805),A(15923,36676))
    loc = "LOC_RAID_0401"
    set = SetCollector:AddSetLegacy(70000,nil,col,10401,"WK_RAID_0401",CLOTH,WARLOCK,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(14098,29998),A(14099,30001),A(14031,30000),A(14086,29977),A(14045,29997),A(13999,29594),A(13992,29999),A(14467,31374))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(14775,32821),A(14776,32824),A(14705,32823),A(14759,32820),A(14717,32627),A(14724,32822))
end


local function GetWarriorAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0403"
    set = SetCollector:AddSetLegacy(70000,nil,col,10403,"WR_RAID_0403",PLATE,WARRIOR,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16699,40121),A(16697,40167),A(16701,40090),A(16696,39780),A(16700,40101),A(16703,39837),A(16698,40138),A(16702,39817))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(16694,38895),A(16695,38980),A(16692,38815),A(15991,38972),A(16693,38904),A(16690,38953),A(15982,38822),A(16691,38960))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(16686,40026),A(16688,40072),A(16684,39995),A(16689,39773),A(16685,40006),A(16682,39829),A(16687,40043),A(16683,39810))
    loc = "LOC_RAID_0402"
    set = SetCollector:AddSetLegacy(70000,nil,col,10402,"WR_RAID_0402",PLATE,WARRIOR,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(15768,36438),A(15638,36440),A(15769,36436),A(15766,36386),A(15528,36437),A(15793,36397),A(15767,36439),A(15537,36323))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(15783,36815),A(15785,36817),A(15781,36813),A(15786,36650),A(15782,36814),A(15911,36673),A(15784,36816),A(15780,36652))
    loc = "LOC_RAID_0401"
    set = SetCollector:AddSetLegacy(70000,nil,col,10401,"WR_RAID_0401",PLATE,WARRIOR,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"NORMAL",TRANSMOG,A(13997,30060),A(14004,30063),A(13215,30061),A(14032,29693),A(13966,30064),A(13216,29423),A(14047,30062),A(13782,29489))
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HEROIC",TRANSMOG,A(14719,32832),A(14712,32834),A(14761,32830),A(14768,32714),A(14741,32831),A(14747,32672),A(14758,32833),A(14089,32663))
end


--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion04Appearances(expansion)
    if expansion.v04 then
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


function SetCollector:GetVersion04Status()
    return SetCollector:GetExpansionStatus("4")
end


function SetCollector:SetVersion04Status()
    SetCollector:SetExpansionStatus("4")
end