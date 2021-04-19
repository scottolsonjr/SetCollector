-- Appearances from Shadowlands (v.9.x)

--
-- LOCAL VARIABLES
--

local ALL = SetCollector.ALL
local ANY = SetCollector.ANY

-- Armor Type
local CLOTH = SetCollector.CLOTH
local LEATHER = SetCollector.LEATHER
local MAIL = SetCollector.MAIL
local PLATE = SetCollector.PLATE
local ANY_ARMOR	= SetCollector.ANY_ARMOR

-- Classes
local DEATHKNIGHT = SetCollector.DEATHKNIGHT
local DEMONHUNTER = SetCollector.DEMONHUNTER
local DRUID = SetCollector.DRUID
local HUNTER = SetCollector.HUNTER
local MAGE = SetCollector.MAGE
local MONK = SetCollector.MONK
local PALADIN = SetCollector.PALADIN
local PRIEST = SetCollector.PRIEST
local ROGUE = SetCollector.ROGUE
local SHAMAN = SetCollector.SHAMAN
local WARLOCK = SetCollector.WARLOCK
local WARRIOR = SetCollector.WARRIOR
local ANY_CLASS = SetCollector.ANY_CLASS

-- Factions
local ALLIANCE = SetCollector.ALLIANCE
local HORDE = SetCollector.HORDE
local ANY_FACTION = SetCollector.ANY_FACTION

-- Collection Types
local OUTFITS = SetCollector.OUTFITS
local ARTIFACT = SetCollector.ARTIFACT
local LEGENDARY = SetCollector.LEGENDARY
local RAID = SetCollector.RAID
local DUNGEON = SetCollector.DUNGEON
local CHALLENGE = SetCollector.CHALLENGE
local PVP = SetCollector.PVP
local EXPANSION = SetCollector.EXPANSION
local CRAFTED = SetCollector.CRAFTED
local OTHER = SetCollector.OTHER
local CUSTOM = SetCollector.CUSTOM
local HOLIDAY = SetCollector.HOLIDAY

-- Obtainable
local OBTAIN = SetCollector.OBTAIN
local NO_OBTAIN = SetCollector.NO_OBTAIN

-- Useable as Transmog
local TRANSMOG = SetCollector.TRANSMOG
local NO_TRANSMOG = SetCollector.NO_TRANSMOG

-- Locations
local NO_LOCATION = nil

--
-- LOCAL FUNCTIONS
--

local function A(...) return SetCollector:CreateAppearance(...) end
local function CreateSet(...) return SetCollector:CreateSet(...) end
local function CreateVariant(...) return SetCollector:CreateVariant(...) end
local function IncludeSet(...) return SetCollector:IncludeSet(...) end
local function AddSetsToDatabase(...) return SetCollector:AddSetsToDatabase(...) end

local function GetLegendaryAppearances()
    local COLLECTION, VERSION = SetCollector.LEGENDARY, 90000
    local sets = {
        CreateSet(COLLECTION,10901,"LG_CLOTH_0901",CLOTH,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_CLOTH_0901",TRANSMOG,A(43079,107406),A(43154,107408),A(43165,107402),A(42984,107410),A(42979,107405),A(43803,107409),A(42981,107407),A(42978,107404))
        ),
        CreateSet(COLLECTION,10901,"LG_LEATHER_0901",LEATHER,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_LEATHER_0901",TRANSMOG,A(44174,106648),A(44176,106650),A(44171,106645),A(44178,106652),A(44173,106647),A(44177,106651),A(44175,106649),A(44172,106646))
        ),
        CreateSet(COLLECTION,10901,"LG_MAIL_0901",MAIL,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_MAIL_0901",TRANSMOG,A(43090,106696),A(43089,106698),A(43080,106693),A(43088,106700),A(43083,106695),A(43087,106699),A(43085,106697),A(43082,106694))
        ),
        CreateSet(COLLECTION,10901,"LG_PLATE_0901",PLATE,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_PLATE_0901",TRANSMOG,A(42829,106001),A(42823,106003),A(42760,105998),A(42808,106005),A(42835,106000),A(42818,106004),A(42790,106002),A(42841,105999))
        )
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 90000
    local sets = {
        IncludeSet(COLLECTION,10901,2158,CLOTH,ANY_CLASS,ANY_FACTION,2159,2160,2161),
        IncludeSet(COLLECTION,10901,2162,LEATHER,ANY_CLASS,ANY_FACTION,2163,2164,2165),
        IncludeSet(COLLECTION,10901,2154,MAIL,ANY_CLASS,ANY_FACTION,2155,2156,2157),
        IncludeSet(COLLECTION,10901,2150,PLATE,ANY_CLASS,ANY_FACTION,2151,2152,2153),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    --[[VERSION = 90100
    sets = {
        IncludeSet(COLLECTION,10902,2158,CLOTH,ANY_CLASS,ANY_FACTION,2159,2160,2161),
        IncludeSet(COLLECTION,10902,2162,LEATHER,ANY_CLASS,ANY_FACTION,2163,2164,2165),
        IncludeSet(COLLECTION,10902,2154,MAIL,ANY_CLASS,ANY_FACTION,2155,2156,2157),
        IncludeSet(COLLECTION,10902,2150,PLATE,ANY_CLASS,ANY_FACTION,2151,2152,2153),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets) ]]
end

local function GetCraftedAppearances()
    local COLLECTION, VERSION = SetCollector.CRAFTED, 90000
    local sets = {
        CreateSet(COLLECTION,10901,"CR_CLOTH_0901",CLOTH,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_CLOTH_0901",TRANSMOG,A(42985,107361),A(41987,107363),A(41980,107357),A(41989,107365),A(41984,107360),A(41988,107364),A(41986,107362),A(41983,107359))
        ),
        CreateSet(COLLECTION,10901,"CR_LEATHER_0901",LEATHER,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_LEATHER_0901",TRANSMOG,A(42262,106608),A(42166,106610),A(42161,106739),A(42168,106612),A(42164,106607),A(42167,106611),A(42165,106609),A(42163,106588))
        ),
        CreateSet(COLLECTION,10901,"CR_MAIL_0901",MAIL,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_MAIL_0901",TRANSMOG,A(42440,106656),A(42450,106658),A(42420,106653),A(42460,106660),A(42435,106655),A(42455,106659),A(42445,106657),A(42430,106654))
        ),
        CreateSet(COLLECTION,10901,"CR_PLATE_0901",PLATE,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_PLATE_0901",TRANSMOG,A(42044,115026),A(42046,115028),A(42040,115023),A(42048,115030),A(42043,115025),A(42047,115029),A(42045,115027),A(42042,115024))
        )
    }    
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function Get90000DungeonAppearances(collection)
    local VERSION = 90000
    local LOCATION_01, LOCATION_02, LOCATION_03, LOCATION_04 = "LOC_DG_0901", "LOC_DG_0902", "LOC_DG_0903", "LOC_DG_0904"
    local sets = {
        -- De Other Side/Mists of Tirna Scithe
        CreateSet(collection,10901,"DG_CLOTH_0901",CLOTH,ANY_CLASS,ANY_FACTION,LOCATION_01,
            CreateVariant("LOC_DG_0901",TRANSMOG,A(42610,111439),A(42612,111440),A(42606,111654),A(42614,111441),A(42609,111442),A(42613,111660),A(42611,111667),A(42608,111643))
        ),
        CreateSet(collection,10901,"DG_LEATHER_0901",LEATHER,ANY_CLASS,ANY_FACTION,LOCATION_01,
            CreateVariant("LOC_DG_0901",TRANSMOG,A(42684,111579),A(42686,111661),A(42680,111580),A(42688,111582),A(42683,111655),A(42687,111581),A(42685,111645),A(42682,111668))
        ),
        CreateSet(collection,10901,"DG_MAIL_0901",MAIL,ANY_CLASS,ANY_FACTION,LOCATION_01,
            CreateVariant("LOC_DG_0901",TRANSMOG,A(42653,111443),A(41914,111444),A(41908,111669),A(41916,111446),A(41911,111646),A(41915,111445),A(41913,111656),A(41910,111662))
        ),
        CreateSet(collection,10901,"DG_PLATE_0901",PLATE,ANY_CLASS,ANY_FACTION,LOCATION_01,
            CreateVariant("LOC_DG_0901",TRANSMOG,A(42650,111447),A(42218,111448),A(42220,111663),A(42224,111670),A(42221,111450),A(42222,111647),A(42223,111449),A(42219,111657))
        ),
        -- Halls of Atonement/Sanguine Depths
        CreateSet(collection,10902,"DG_CLOTH_0901",CLOTH,ANY_CLASS,ANY_FACTION,LOCATION_02,
            CreateVariant("LOC_DG_0902",TRANSMOG,A(42601,111557),A(42603,111556),A(42597,111517),A(42605,111544),A(42600,111533),A(42604,111526),A(42602,111538),A(42599,111531)) 
        ),
        CreateSet(collection,10902,"DG_LEATHER_0901",LEATHER,ANY_CLASS,ANY_FACTION,LOCATION_02,
            CreateVariant("LOC_DG_0902",TRANSMOG,A(42693,111521),A(42695,111555),A(42689,111535),A(42697,111547),A(42692,111532),A(42696,111527),A(42694,111523),A(42691,111537))
        ),
        CreateSet(collection,10902,"DG_MAIL_0901",MAIL,ANY_CLASS,ANY_FACTION,LOCATION_02,
            CreateVariant("LOC_DG_0902",TRANSMOG,A(41930,111520),A(41932,111525),A(41926,111519),A(41934,111546),A(41929,111541),A(41933,111543),A(41931,111539),A(41928,111530))
        ),
        CreateSet(collection,10902,"DG_PLATE_0901",PLATE,ANY_CLASS,ANY_FACTION,LOCATION_02,
            CreateVariant("LOC_DG_0902",TRANSMOG,A(42235,111516),A(42236,111524),A(42238,111518),A(42242,111545),A(42239,111540),A(42240,111542),A(42241,111522),A(42237,111536))
        ),
        -- Plaguefall/Theater of Pain
        CreateSet(collection,10903,"DG_CLOTH_0901",CLOTH,ANY_CLASS,ANY_FACTION,LOCATION_03,
            CreateVariant("LOC_DG_0903",TRANSMOG,A(42619,111481),A(42621,111511),A(42615,111500),A(42623,111514),A(42618,111585),A(42622,111512),A(42620,111483),A(42617,111478))
        ),
        CreateSet(collection,10903,"DG_LEATHER_0901",LEATHER,ANY_CLASS,ANY_FACTION,LOCATION_03,
            CreateVariant("LOC_DG_0903",TRANSMOG,A(42711,111482),A(42713,111485),A(42707,111503),A(42715,111588),A(42710,111479),A(42714,111513),A(42712,111509),A(42709,111505))
        ),
        CreateSet(collection,10903,"DG_MAIL_0901",MAIL,ANY_CLASS,ANY_FACTION,LOCATION_03,
            CreateVariant("LOC_DG_0903",TRANSMOG,A(41897,111507),A(41899,111486),A(41894,111502),A(41901,111488),A(41896,111506),A(41900,111587),A(41898,111484),A(41895,111504))
        ),
        CreateSet(collection,10903,"DG_PLATE_0901",PLATE,ANY_CLASS,ANY_FACTION,LOCATION_03,
            CreateVariant("LOC_DG_0903",TRANSMOG,A(42067,111490),A(42068,111510),A(42210,111501),A(42214,111515),A(42211,111492),A(42212,111586),A(42213,111508),A(42209,111491))
        ),
        -- Spires of Ascension/The Necrotic Wake
        CreateSet(collection,10904,"DG_CLOTH_0901",CLOTH,ANY_CLASS,ANY_FACTION,LOCATION_04,
            CreateVariant("LOC_DG_0904",TRANSMOG,A(42628,111458),A(42630,111465),A(42624,112875),A(42632,111498),A(42627,111471),A(42631,112886),A(42629,112884),A(42626,112879))
        ),
        CreateSet(collection,10904,"DG_LEATHER_0901",LEATHER,ANY_CLASS,ANY_FACTION,LOCATION_04,
            CreateVariant("LOC_DG_0904",TRANSMOG,A(42720,112883),A(42722,111496),A(42716,111468),A(42724,111466),A(42719,112880),A(42723,112888),A(42721,112885),A(42718,111457))
        ),
        CreateSet(collection,10904,"DG_MAIL_0901",MAIL,ANY_CLASS,ANY_FACTION,LOCATION_04,
            CreateVariant("LOC_DG_0904",TRANSMOG,A(41939,111463),A(41941,111459),A(41935,112877),A(41943,112891),A(41938,112882),A(41942,112887),A(41940,111495),A(41937,111469))
        ),
        CreateSet(collection,10904,"DG_PLATE_0901",PLATE,ANY_CLASS,ANY_FACTION,LOCATION_04,
            CreateVariant("LOC_DG_0904",TRANSMOG,A(42244,111494),A(42245,111472),A(42247,112876),A(42251,112890),A(42248,112881),A(42249,111460),A(42250,111464),A(42246,112878))
        )
    }
    AddSetsToDatabase(VERSION, collection, sets)
end

local function GetDungeonAppearances()
    local COLLECTION = SetCollector.DUNGEON
    Get90000DungeonAppearances(COLLECTION)     
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 90000
    -- Season 1
    local sets = {
        IncludeSet(COLLECTION,10901,2170,CLOTH,ANY_CLASS,ANY_FACTION,2174),
        IncludeSet(COLLECTION,10901,2171,LEATHER,ANY_CLASS,ANY_FACTION,2175),
        IncludeSet(COLLECTION,10901,2172,MAIL,ANY_CLASS,ANY_FACTION,2176),
        IncludeSet(COLLECTION,10901,2173,PLATE,ANY_CLASS,ANY_FACTION,2177),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    -- Season 2
    --[[VERSION = 90100
    local sets = {
        IncludeSet(COLLECTION,10902,2170,CLOTH,ANY_CLASS,ANY_FACTION,2174),
        IncludeSet(COLLECTION,10902,2171,LEATHER,ANY_CLASS,ANY_FACTION,2175),
        IncludeSet(COLLECTION,10902,2172,MAIL,ANY_CLASS,ANY_FACTION,2176),
        IncludeSet(COLLECTION,10902,2173,PLATE,ANY_CLASS,ANY_FACTION,2177),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)]]
end

local function GetExpansionAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 90000

    --local KYRIAN, VENTHYR, NECROLORD, NIGHTFAE = "LOC_KYRIAN", "LOC_VENTHYR", "LOC_NECROLORD", "LOC_NIGHTFAE"
    local sets = {
        
        -- Pre-patch Set
        CreateSet(COLLECTION,10900,"EX_CLOTH_A_0900",CLOTH,ANY_CLASS,ALLIANCE,NO_LOCATION,
            CreateVariant("EX_CLOTH_A_0900",TRANSMOG,A(37358,114695),A(37230,114692),A(37227,114629),A(37202,114632),A(37200,114653),A(37204,114698),A(37226,114701),A(37205,114644),A(37199,114638))
        ),
        CreateSet(COLLECTION,10900,"EX_LEATHER_A_0900",LEATHER,ANY_CLASS,ALLIANCE,NO_LOCATION,
            CreateVariant("EX_LEATHER_A_0900",TRANSMOG,A(36816,114728),A(36818,114725),A(36813,114704),A(36814,114635),A(36812,114659),A(36815,114641),A(36810,114734),A(36817,114650),A(36811,114731))
        ),
        CreateSet(COLLECTION,10900,"EX_MAIL_A_0900",MAIL,ANY_CLASS,ALLIANCE,NO_LOCATION,
            CreateVariant("EX_MAIL_A_0900",TRANSMOG,A(37262,114740),A(37265,114737),A(37260,114707),A(37259,114746),A(37256,114656),A(37261,114743),A(37257,114752),A(37263,114647),A(37258,114749))
        ),
        CreateSet(COLLECTION,10900,"EX_PLATE_A_0900",PLATE,ANY_CLASS,ALLIANCE,NO_LOCATION,
            CreateVariant("EX_PLATE_A_0900",TRANSMOG,A(37802,114764),A(37804,114758),A(37855,114710),A(37800,114770),A(37805,114755),A(37801,114767),A(37798,114776),A(37803,114761),A(37799,114773))
        ),
        CreateSet(COLLECTION,10900,"EX_CLOTH_H_0900",CLOTH,ANY_CLASS,HORDE,NO_LOCATION,
            CreateVariant("EX_CLOTH_H_0900",TRANSMOG,A(36756,114782),A(36760,114779),A(36958,114713),A(36754,114662),A(36770,114680),A(37071,114785),A(36745,114788),A(36783,114674),A(36767,114671))
        ),
        CreateSet(COLLECTION,10900,"EX_LEATHER_H_0900",LEATHER,ANY_CLASS,HORDE,NO_LOCATION,
            CreateVariant("EX_LEATHER_H_0900",TRANSMOG,A(37424,114794),A(37425,114791),A(36794,114716),A(37396,114668),A(37401,114689),A(37423,114797),A(37421,114803),A(37379,114677),A(37422,114800))
        ),
        CreateSet(COLLECTION,10900,"EX_MAIL_H_0900",MAIL,ANY_CLASS,HORDE,NO_LOCATION,
            CreateVariant("EX_MAIL_H_0900",TRANSMOG,A(38075,114812),A(38077,114806),A(36794,114719),A(38013,114665),A(38078,114686),A(38074,114815),A(38071,114821),A(38076,114810),A(38072,114818))
        ),
        CreateSet(COLLECTION,10900,"EX_PLATE_H_0900",PLATE,ANY_CLASS,HORDE,NO_LOCATION,
            CreateVariant("EX_PLATE_H_0900",TRANSMOG,A(36850,114830),A(36808,114824),A(38337,114722),A(36849,114836),A(36793,114683),A(37082,114833),A(36847,114842),A(37094,114827),A(36848,114839))
        ),

        -- Covenants
        -- Nightfae
        IncludeSet(COLLECTION,10901,2047,CLOTH,ANY_CLASS,ANY_FACTION,2048,2049,2050),   --Alt Chest: 41873,112439 --41883,112440 Chest alternate
        IncludeSet(COLLECTION,10901,2051,LEATHER,ANY_CLASS,ANY_FACTION,2052,2053,2054), -- 41834,112556
        IncludeSet(COLLECTION,10901,2055,MAIL,ANY_CLASS,ANY_FACTION,2056,2057,2058), -- 43219,113828
        IncludeSet(COLLECTION,10901,2059,PLATE,ANY_CLASS,ANY_FACTION,2060,2061,2062),
        -- Necrolord
        IncludeSet(COLLECTION,10902,2032,CLOTH,ANY_CLASS,ANY_FACTION,2031,2034,2033),
        IncludeSet(COLLECTION,10902,2035,LEATHER,ANY_CLASS,ANY_FACTION,2036,2037,2038),
        IncludeSet(COLLECTION,10902,2041,MAIL,ANY_CLASS,ANY_FACTION,2042,2039,2040),
        IncludeSet(COLLECTION,10902,2043,PLATE,ANY_CLASS,ANY_FACTION,2044,2045,2046),
        -- Venthyr
        IncludeSet(COLLECTION,10903,2066,CLOTH,ANY_CLASS,ANY_FACTION,2063,2064,2065),
        IncludeSet(COLLECTION,10903,2070,LEATHER,ANY_CLASS,ANY_FACTION,2067,2069,2068),
        IncludeSet(COLLECTION,10903,2071,MAIL,ANY_CLASS,ANY_FACTION,2074,2073,2072),
        IncludeSet(COLLECTION,10903,2075,PLATE,ANY_CLASS,ANY_FACTION,2078,2076,2077),
        -- Kyrian
        IncludeSet(COLLECTION,10904,2015,CLOTH,ANY_CLASS,ANY_FACTION,2016,2017,2018),
        IncludeSet(COLLECTION,10904,2019,LEATHER,ANY_CLASS,ANY_FACTION,2020,2021,2022),
        IncludeSet(COLLECTION,10904,2023,MAIL,ANY_CLASS,ANY_FACTION,2024,2025,2026),
        IncludeSet(COLLECTION,10904,2029,PLATE,ANY_CLASS,ANY_FACTION,2030,2028,2027),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 90100
    sets = {
        IncludeSet(COLLECTION,10902,2205,ANY_ARMOR,ANY_CLASS,ANY_FACTION,2202,2203,2204),
        IncludeSet(COLLECTION,10902,2208,ANY_ARMOR,ANY_CLASS,ANY_FACTION,2206,2207,2209),
        IncludeSet(COLLECTION,10902,2212,ANY_ARMOR,ANY_CLASS,ANY_FACTION,2210,2211,2213),
        IncludeSet(COLLECTION,10902,2214,ANY_ARMOR,ANY_CLASS,ANY_FACTION,2215,2216,2217),
        IncludeSet(COLLECTION,10902,2218,ANY_ARMOR,ANY_CLASS,ANY_FACTION,2219,2220,2221),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 90000
    local sets = {
        -- Leveling Sets
        CreateSet(COLLECTION,10901,"OTH_CLOTH_10900",CLOTH,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_BASTION",TRANSMOG,A(42005,107437),A(42007,107446),A(42059,107424),A(42000,107425),A(42009,109278),A(42004,107435),A(42008,107449),A(42006,109267),A(42003,107430)),
            CreateVariant("LOC_MALDRAXXUS",TRANSMOG,A(41965,109103),A(41967,109112),A(41961,109349),A(41959,109091),A(41969,109118),A(41963,109101),A(41968,109115),A(41966,109107),A(41962,109096)),
            CreateVariant("LOC_ARDENWEALD",TRANSMOG,A(41975,109303),A(41977,109312),A(41972,109353),A(41970,109291),A(41979,109318),A(41974,109301),A(41978,109315),A(41976,109307),A(41973,109296)),
            CreateVariant("LOC_REVENDRETH",TRANSMOG,A(41995,109071),A(41997,109080),A(42423,109351,41951),A(41990,109123),A(41999,109086),A(41994,109069),A(41998,109083),A(41996,109075),A(41993,109128))
        ),
        CreateSet(COLLECTION,10901,"OTH_LEATHER_10900",LEATHER,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_BASTION",TRANSMOG,A(42261,107439),A(42158,107444),A(42059,107424),A(42153,107428),A(42160,107455),A(42156,107433),A(42159,107451),A(42157,109269),A(42155,107432)),
            CreateVariant("LOC_MALDRAXXUS",TRANSMOG,A(42259,109105),A(42015,109110),A(41961,109349),A(42010,109094),A(42017,109121),A(42013,109099),A(42016,109117),A(42014,109109),A(42012,109098)),
            CreateVariant("LOC_ARDENWEALD",TRANSMOG,A(42260,109305),A(42150,109310),A(41972,109353),A(42145,109294),A(42152,109321),A(42148,109299),A(42151,109317),A(42149,109309),A(42147,109298)),
            CreateVariant("LOC_REVENDRETH",TRANSMOG,A(41964,109073),A(41956,109078),A(42423,109351),A(41950,112817),A(41958,109089),A(41953,109067),A(41957,109085),A(41954,109077),A(41952,109130))
        ),
        CreateSet(COLLECTION,10901,"OTH_MAIL_10900",MAIL,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_BASTION",TRANSMOG,A(42439,107438),A(42449,107447),A(42059,107424),A(42419,107427),A(42459,107454),A(42434,107436),A(42454,107450),A(42444,109268),A(42429,107431)),
            CreateVariant("LOC_MALDRAXXUS",TRANSMOG,A(42437,109104),A(42447,109113),A(41961,109349),A(42417,109093),A(42457,109120),A(42432,109102),A(42452,109116),A(42442,109108),A(42427,109097)),
            CreateVariant("LOC_ARDENWEALD",TRANSMOG,A(42436,109304),A(42446,109313),A(41972,109353),A(42416,109293),A(42456,109320),A(42431,109302),A(42451,109316),A(42441,109308),A(42426,109297)),
            CreateVariant("LOC_REVENDRETH",TRANSMOG,A(42438,109072),A(42448,109081),A(42423,109351),A(42418,109061),A(42458,109088),A(42433,109070),A(42453,109084),A(42443,109076),A(42428,109129))
        ),
        CreateSet(COLLECTION,10901,"OTH_PLATE_10900",PLATE,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LOC_BASTION",TRANSMOG,A(42062,107423),A(42064,107445),A(42059,107424),A(42058,107426),A(42066,107453),A(42061,107434),A(42065,107448),A(42063,109266),A(42060,107429)),
            CreateVariant("LOC_MALDRAXXUS",TRANSMOG,A(42027,109090),A(42022,109111),A(41961,109349),A(42018,109092),A(42030,109119),A(42021,109100),A(42029,109114),A(42028,109106),A(42020,109095)),
            CreateVariant("LOC_ARDENWEALD",TRANSMOG,A(42035,109290),A(42037,109311),A(41972,109353),A(42031,109292),A(42039,109319),A(42034,109300),A(42038,109314),A(42036,109306),A(42033,109295)),
            CreateVariant("LOC_REVENDRETH",TRANSMOG,A(42053,109058),A(42055,109079),A(42423,109351),A(42049,109124),A(42057,109087),A(42052,109068),A(42056,109082),A(42054,109074),A(42051,109127))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion09Appearances(expansion)
    if expansion.v09 then
        GetLegendaryAppearances()
        GetRaidAppearances()
        GetPvPAppearances()
        GetCraftedAppearances()
        GetDungeonAppearances()
        GetExpansionAppearances()
        GetOtherAppearances()
    end
end

function SetCollector:GetVersion09Status()
    return SetCollector:GetExpansionStatus("9")
end

function SetCollector:SetVersion09Status()
    SetCollector:SetExpansionStatus("9")
end