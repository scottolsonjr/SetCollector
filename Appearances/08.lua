-- Appearances from Battle for Azeroth (v.8.x)

--
-- LOCAL VARIABLES
--

local ALL            = SetCollector.ALL
local ANY            = SetCollector.ANY

-- Armor Type
local CLOTH          = SetCollector.CLOTH
local LEATHER        = SetCollector.LEATHER
local MAIL           = SetCollector.MAIL
local PLATE          = SetCollector.PLATE

-- Classes
local DEATHKNIGHT    = SetCollector.DEATHKNIGHT
local DEMONHUNTER    = SetCollector.DEMONHUNTER
local DRUID          = SetCollector.DRUID
local HUNTER         = SetCollector.HUNTER
local MAGE           = SetCollector.MAGE
local MONK           = SetCollector.MONK
local PALADIN        = SetCollector.PALADIN
local PRIEST         = SetCollector.PRIEST
local ROGUE          = SetCollector.ROGUE
local SHAMAN         = SetCollector.SHAMAN
local WARLOCK        = SetCollector.WARLOCK
local WARRIOR        = SetCollector.WARRIOR

-- Factions
local ALLIANCE       = SetCollector.ALLIANCE
local HORDE          = SetCollector.HORDE

-- Roles
local TANK           = SetCollector.TANK
local HEALER         = SetCollector.HEALER
local CASTER         = SetCollector.CASTER
local RANGED         = SetCollector.RANGED
local MELEE          = SetCollector.MELEE

-- Obtainable
local OBTAIN         = SetCollector.OBTAIN
local NOOBTAIN       = SetCollector.NOOBTAIN

-- Useable as Transmog
local TRANSMOG       = SetCollector.TRANSMOG
local NOTRANSMOG     = SetCollector.NOTRANSMOG


--
-- LOCAL FUNCTIONS
--

local function A(...) return SetCollector:CreateAppearance(...) end

local function GetLegendaries()
    local col = SetCollector.LEGENDARY
    local set = ""
    
    set = SetCollector:AddSetLegacy(80300,nil,col,60,"LG_120",ANY,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(80300,nil,col,set,"RANK_1_TO_5",TRANSMOG,A(40845,105938))
        SetCollector:AddVariantLegacy(80300,nil,col,set,"RANK_6_TO_11",TRANSMOG,A(40846,105939))
        SetCollector:AddVariantLegacy(80300,nil,col,set,"RANK_12_PLUS",TRANSMOG,A(40847,105940))
end


local function GetExpansionAppearances()
    local col = SetCollector.EXPANSION
    local set = ""

    -- Island Expeditions (May be appearances from earlier sets)
    set = SetCollector:AddSetLegacy(80000,nil,col,10804,"ISLAND_EXPEDITIONS",CLOTH,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"1",TRANSMOG,A(15699),A(15702),A(15701),A(15703),A(15698),A(15695),A(15700),A(15696))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"2",TRANSMOG,A(5954),A(5957),A(2044),A(1190),A(5956),A(2059),A(5955),A(5283))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"3",TRANSMOG,A(39765),A(26513),A(26625),A(26521),A(26517))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"4",TRANSMOG,A(15963),A(15966),A(15965),A(15967),A(15962),A(15959),A(15964),A(15960))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"5",TRANSMOG,A(31884),A(31888),A(31887),A(31883),A(31880),A(31885),A(31881))
    set = SetCollector:AddSetLegacy(80000,nil,col,10803,"ISLAND_EXPEDITIONS",CLOTH,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"6",TRANSMOG,A(15745),A(15748),A(15747),A(15749),A(15744),A(15741),A(15746),A(15742))
    set = SetCollector:AddSetLegacy(80000,nil,col,10804,"ISLAND_EXPEDITIONS",LEATHER,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"1",TRANSMOG,A(28024),A(28025),A(28022),A(28027),A(28023),A(28020),A(28026),A(28021))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"2",TRANSMOG,A(31640),A(31642),A(31644),A(31643),A(31639),A(31636),A(31641),A(31637))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"3",TRANSMOG,A(18799),A(18803),A(18801),A(18804),A(18718),A(18798),A(18802),A(18800))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"4",TRANSMOG,A(18973),A(18970),A(18971),A(19007),A(18974),A(19164),A(18974),A(19019))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"5",TRANSMOG,A(15842),A(15844),A(15840),A(15845),A(15841),A(15838),A(15843),A(15839))
    set = SetCollector:AddSetLegacy(80000,nil,col,10803,"ISLAND_EXPEDITIONS",LEATHER,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"6",TRANSMOG,A(28409),A(38655),A(38651),A(38656),A(38652),A(38649),A(38654),A(38650))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"7",TRANSMOG,A(15117),A(15115),A(15119),A(15114),A(15118),A(15121),A(15116),A(15120))
    set = SetCollector:AddSetLegacy(80000,nil,col,10803,"ISLAND_EXPEDITIONS",MAIL,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"1",TRANSMOG,A(38627),A(38624),A(8628),A(8701),A(8700),A(38631),A(8699),A(38632))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"2",TRANSMOG,A(15066),A(15068),A(13613),A(15069),A(15065),A(13593),A(15067),A(15064))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"3",TRANSMOG,A(31650),A(31652),A(31648),A(31653),A(31649),A(31646),A(31651),A(31647))
    set = SetCollector:AddSetLegacy(80000,nil,col,10804,"ISLAND_EXPEDITIONS",PLATE,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"1",TRANSMOG,A(22632),A(22634),A(22630),A(22635),A(22631),A(22628),A(22633),A(22629))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"2",TRANSMOG,A(16686),A(16688),A(16684),A(16689),A(16685),A(16682),A(16687),A(16683))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"3",TRANSMOG,A(20077),A(20079),A(20075),A(20080),A(20076),A(20073),A(20078),A(20074))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"4",TRANSMOG,A(28397),A(28399),A(28395),A(28400),A(28396),A(28393),A(28398),A(28394))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"5",TRANSMOG,A(15665),A(15667),A(15669),A(15668),A(15664),A(15661),A(15666),A(15662))
    set = SetCollector:AddSetLegacy(80000,nil,col,10803,"ISLAND_EXPEDITIONS",PLATE,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"6",TRANSMOG,A(38642),A(38643),A(15490),A(15519),A(15504),A(36033),A(15485),A(38644))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"7",TRANSMOG,A(15144),A(15146),A(15142),A(15147),A(15143),A(15140),A(15145),A(15141))
    
    -- Arathi Warfront
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"EX_CLOTH_A_0801",CLOTH,ANY,ANY,ALLIANCE)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"EX_CLOTH_A_0801",TRANSMOG,A(37359),A(37235),A(37233),A(37214),A(37216),A(37212),A(37231),A(37213),A(37209))
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"EX_LEATHER_A_0801",LEATHER,ANY,ANY,ALLIANCE)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"EX_LEATHER_A_0801",TRANSMOG,A(36862),A(36866),A(36874),A(36858),A(36856),A(36860),A(36852),A(36864),A(36854))
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"EX_MAIL_A_0801",MAIL,ANY,ANY,ALLIANCE)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ORIGINAL",TRANSMOG,A(37253),A(37255),A(37559),A(37250),A(37248),A(37252),A(37246),A(37254),A(37247))    -- Chest 37251?
        SetCollector:AddVariantLegacy(80000,nil,col,set,"RECOLOR",TRANSMOG,A(37290),A(37278),A(37249),A(37250),A(37248),A(37289),A(37276),A(37254),A(37286))    -- Back 37846
        SetCollector:AddVariantLegacy(80000,nil,col,set,"WARFRONT",TRANSMOG,A(37277),A(37278),A(37562),A(37250),A(37248),A(37252),A(37276),A(37254),A(37247))
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"EX_PLATE_A_0801",PLATE,ANY,ANY,ALLIANCE)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"EX_PLATE_A_0801",TRANSMOG,A(37777),A(37779),A(37847),A(37783),A(37788),A(37784),A(37773),A(37786),A(37782))
    
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"EX_CLOTH_H_0801",CLOTH,ANY,ANY,HORDE)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"EX_CLOTH_H_0801",TRANSMOG,A(36758),A(36762),A(36959),A(37070),A(36772),A(37074),A(37069),A(36784),A(36769))
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"EX_LEATHER_H_0801",LEATHER,ANY,ANY,HORDE)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"EX_LEATHER_H_0801",TRANSMOG,A(37419),A(37415),A(37474),A(37386),A(37392),A(37418),A(37416),A(37389),A(37417))
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"EX_MAIL_H_0801",MAIL,ANY,ANY,HORDE)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"EX_MAIL_H_0801",TRANSMOG,A(38015),A(38017),A(38331),A(38013),A(38018),A(38014),A(38011),A(38016),A(38012))
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"EX_PLATE_H_0801",PLATE,ANY,ANY,HORDE)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"EX_PLATE_H_0801",TRANSMOG,A(36912),A(37093),A(37474),A(37091),A(36828),A(37092),A(37089),A(37096),A(37090))
end


local function GetRaidAppearances()
    local col = SetCollector.RAID
    local set, loc = ""
        
    -- Ny'alotha
    loc = "LOC_RAID_0804"
    set = SetCollector:AddSetLegacy(80300,nil,col,10804,"TR_CLOTH_25",CLOTH,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80300,nil,col,set,"RAIDFINDER",TRANSMOG,A(41042),A(41050),A(41026),A(41058),A(41038),A(41054),A(41046),A(41034))
        SetCollector:AddVariantLegacy(80300,nil,col,set,"NORMAL",TRANSMOG,A(41041),A(41049),A(41025),A(41057),A(41037),A(41053),A(41045),A(41033))
        SetCollector:AddVariantLegacy(80300,nil,col,set,"HEROIC",TRANSMOG,A(41040),A(41048),A(41024),A(41056),A(41036),A(41052),A(41044),A(41032))
        SetCollector:AddVariantLegacy(80300,nil,col,set,"MYTHIC",TRANSMOG,A(41069),A(41073),A(41061),A(41077),A(41067),A(41075),A(41071),A(41065))
    set = SetCollector:AddSetLegacy(80300,nil,col,10804,"TR_LEATHER_25",LEATHER,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80300,nil,col,set,"RAIDFINDER",TRANSMOG,A(40908),A(40930),A(40862),A(40952),A(40897),A(40941),A(40919),A(40886))
        SetCollector:AddVariantLegacy(80300,nil,col,set,"NORMAL",TRANSMOG,A(40905),A(40927),A(40858),A(40949),A(40894),A(40938),A(40916),A(40883))
        SetCollector:AddVariantLegacy(80300,nil,col,set,"HEROIC",TRANSMOG,A(40906),A(40928),A(40859),A(40950),A(40895),A(40939),A(40917),A(40884))
        SetCollector:AddVariantLegacy(80300,nil,col,set,"MYTHIC",TRANSMOG,A(40909),A(40931),A(40863),A(40953),A(40898),A(40942),A(40920),A(40887))
    set = SetCollector:AddSetLegacy(80300,nil,col,10804,"TR_MAIL_25",MAIL,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80300,nil,col,set,"RAIDFINDER",TRANSMOG,A(40795,107747),A(40807,107746),A(40783,107748),A(40815,108790),A(40791,108240),A(40811,107726),A(40803,108228),A(40787,107476))
        SetCollector:AddVariantLegacy(80300,nil,col,set,"NORMAL",TRANSMOG,A(40797,108478),A(40809,108197),A(40781,108189),A(40817,108233),A(40793,108237),A(40813,108801),A(40805,108498),A(40789,108229))
        SetCollector:AddVariantLegacy(80300,nil,col,set,"HEROIC",TRANSMOG,A(40798,108194),A(40810,108198),A(40782,108191),A(40818,108235),A(40794,108238),A(40814,108802),A(40806,108226),A(40790,108230))
        SetCollector:AddVariantLegacy(80300,nil,col,set,"MYTHIC",TRANSMOG,A(40833,108195),A(40839,108199),A(40823,108192),A(40843,108236),A(40831,108239),A(40841,108803),A(40835,108227),A(40829,108231))
    set = SetCollector:AddSetLegacy(80300,nil,col,10804,"TR_PLATE_25",PLATE,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80300,nil,col,set,"RAIDFINDER",TRANSMOG,A(40971),A(40979),A(40959),A(40987),A(40967),A(40983),A(40975),A(40963))
        SetCollector:AddVariantLegacy(80300,nil,col,set,"NORMAL",TRANSMOG,A(40973),A(40981),A(40961),A(40989),A(40969),A(40985),A(40977),A(40965))
        SetCollector:AddVariantLegacy(80300,nil,col,set,"HEROIC",TRANSMOG,A(40974),A(40982),A(40962),A(40990),A(40970),A(40986),A(40978),A(40966))
        SetCollector:AddVariantLegacy(80300,nil,col,set,"MYTHIC",TRANSMOG,A(41005),A(41011),A(40996),A(41017),A(41002),A(41014),A(41008),A(40999))

    -- The Eternal Palace
    loc = "LOC_RAID_0803"
    set = SetCollector:AddSetLegacy(80200,nil,col,10803,"TR_CLOTH_24",CLOTH,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80200,nil,col,set,"RAIDFINDER",TRANSMOG,A(40092),A(40098),A(40086,104596),A(40096),A(40102),A(40090),A(40100),A(40094),A(40088))
        SetCollector:AddVariantLegacy(80200,nil,col,set,"NORMAL",TRANSMOG,A(40075),A(40081),A(40069,104593),A(40079),A(40067),A(40073),A(40083),A(40077),A(40071))
        SetCollector:AddVariantLegacy(80200,nil,col,set,"HEROIC",TRANSMOG,A(40149),A(40143),A(40155,104594),A(40145),A(40139),A(40151),A(40141),A(40147),A(40153))
        SetCollector:AddVariantLegacy(80200,nil,col,set,"MYTHIC",TRANSMOG,A(40132),A(40126),A(40138,104595),A(40128),A(40122),A(40134),A(40124),A(40130),A(40136))
    set = SetCollector:AddSetLegacy(80200,nil,col,10803,"TR_LEATHER_24",LEATHER,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80200,nil,col,set,"RAIDFINDER",TRANSMOG,A(40176),A(40178),A(40192,104589),A(40172),A(40180),A(40175),A(40179),A(40177),A(40174))
        SetCollector:AddVariantLegacy(80200,nil,col,set,"NORMAL",TRANSMOG,A(40195),A(40198),A(40192,104589),A(40191),A(40200),A(40194),A(40199),A(40196),A(40193))
        SetCollector:AddVariantLegacy(80200,nil,col,set,"HEROIC",TRANSMOG,A(40205),A(40208),A(40192,104589),A(40201),A(40210),A(40204),A(40209),A(40206),A(40203))
        SetCollector:AddVariantLegacy(80200,nil,col,set,"MYTHIC",TRANSMOG,A(40235),A(40238),A(40192,104589),A(40231),A(40240),A(40234),A(40239),A(40236),A(40233))
    set = SetCollector:AddSetLegacy(80200,nil,col,10803,"TR_MAIL_24",MAIL,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80200,nil,col,set,"RAIDFINDER",TRANSMOG,A(40353,104453),A(40350,105158),A(40356,104588),A(40357,104431),A(40328,105299),A(40354,105305),A(40349,104689),A(40352,104705),A(40355,104721))
        SetCollector:AddVariantLegacy(80200,nil,col,set,"NORMAL",TRANSMOG,A(40322,104450),A(40319,105155),A(40325,104585),A(40326,104454),A(40308,105298),A(40323,105302),A(40318,105274),A(40321,104702),A(40324,104718))
        SetCollector:AddVariantLegacy(80200,nil,col,set,"HEROIC",TRANSMOG,A(40371,104451),A(40368,105156),A(40374,104586),A(40375,104432),A(40330,105300),A(40372,105303),A(40367,104687),A(40370,104703),A(40373,104719))
        SetCollector:AddVariantLegacy(80200,nil,col,set,"MYTHIC",TRANSMOG,A(40008,104452),A(40010,105157),A(40005,104587),A(40003,104433),A(40012,105301),A(40007,105304),A(40011,104688),A(40009,104704),A(40006,104720))
    set = SetCollector:AddSetLegacy(80200,nil,col,10803,"TR_PLATE_24",PLATE,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80200,nil,col,set,"RAIDFINDER",TRANSMOG,A(39986),A(39984),A(39989,104577),A(39990),A(39983),A(39987),A(39982),A(39985),A(39988))
        SetCollector:AddVariantLegacy(80200,nil,col,set,"NORMAL",TRANSMOG,A(39968),A(39966),A(39971,104574),A(39972),A(39965),A(39969),A(39964),A(39967),A(39970))
        SetCollector:AddVariantLegacy(80200,nil,col,set,"HEROIC",TRANSMOG,A(39977),A(39979),A(39974,104575),A(39973),A(39980),A(39976),A(39981),A(39978),A(39975))
        SetCollector:AddVariantLegacy(80200,nil,col,set,"MYTHIC",TRANSMOG,A(39959),A(39961),A(39956,104576),A(39955),A(39962),A(39958),A(39963),A(39960),A(39957))

    -- Battle of Dazar'alor
    loc = "LOC_RAID_0802"
    set = SetCollector:AddSetLegacy(80100,nil,col,10802,"TR_CLOTH_23",CLOTH,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80100,nil,col,set,"RAIDFINDER",TRANSMOG,A(38835),A(38838),A(38833,102299),A(38837),A(38809),A(38806),A(38830),A(38813),A(38831))
        SetCollector:AddVariantLegacy(80100,nil,col,set,"NORMAL",TRANSMOG,A(38855),A(38858),A(38853,102298),A(38857),A(38808),A(38805),A(38850),A(38812),A(38851))
        SetCollector:AddVariantLegacy(80100,nil,col,set,"HEROIC",TRANSMOG,A(38845),A(38848),A(38843,102300),A(38847),A(38807),A(38804),A(38840),A(38811),A(38841))
        SetCollector:AddVariantLegacy(80100,nil,col,set,"MYTHIC",TRANSMOG,A(38782),A(38814),A(38798,102301),A(38778),A(38803),A(38802),A(38786),A(38810),A(38790))
    set = SetCollector:AddSetLegacy(80100,nil,col,10802,"TR_LEATHER_23",LEATHER,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80100,nil,col,set,"RAIDFINDER",TRANSMOG,A(39426),A(39428),A(39476,101775),A(39422),A(39430),A(39425),A(39429),A(39427),A(39424))
        SetCollector:AddVariantLegacy(80100,nil,col,set,"NORMAL",TRANSMOG,A(39266),A(39268),A(39280,101772),A(39262),A(39270),A(39265),A(39269),A(39267),A(39264))
        SetCollector:AddVariantLegacy(80100,nil,col,set,"HEROIC",TRANSMOG,A(39435),A(39437),A(39477,101773),A(39431),A(39439),A(39434),A(39438),A(39436),A(39433))
        SetCollector:AddVariantLegacy(80100,nil,col,set,"MYTHIC",TRANSMOG,A(39471),A(39473),A(39478,101774),A(39467),A(39475),A(39470),A(39474),A(39472),A(39469))
    set = SetCollector:AddSetLegacy(80100,nil,col,10802,"TR_MAIL_23",MAIL,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80100,nil,col,set,"RAIDFINDER",TRANSMOG,A(39589),A(39591),A(39594,101769),A(39586,101881),A(39593),A(39588),A(39592),A(39590),A(39587))
        SetCollector:AddVariantLegacy(80100,nil,col,set,"NORMAL",TRANSMOG,A(39621),A(39623),A(39626,101768),A(39618,101880),A(39625),A(39620),A(39624),A(39622),A(39619))
        SetCollector:AddVariantLegacy(80100,nil,col,set,"HEROIC",TRANSMOG,A(39605),A(39607),A(39610,101770),A(39602,101882),A(39609),A(39604),A(39608),A(39606),A(39603))
        SetCollector:AddVariantLegacy(80100,nil,col,set,"MYTHIC",TRANSMOG,A(39556),A(39558),A(39552,101771),A(39560,101883),A(39551),A(39555),A(39559),A(39557),A(39554))
    set = SetCollector:AddSetLegacy(80100,nil,col,10802,"TR_PLATE_23",PLATE,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80100,nil,col,set,"RAIDFINDER",TRANSMOG,A(39515),A(39517),A(39520,102295),A(39512),A(39519),A(39514),A(39518),A(39516),A(39513))
        SetCollector:AddVariantLegacy(80100,nil,col,set,"NORMAL",TRANSMOG,A(39482),A(39484),A(39487,102294),A(39479),A(39486),A(39481),A(39485),A(39483),A(39480))
        SetCollector:AddVariantLegacy(80100,nil,col,set,"HEROIC",TRANSMOG,A(39531),A(39533),A(39536,102296),A(39528),A(39535),A(39530),A(39534),A(39532),A(39529))
        SetCollector:AddVariantLegacy(80100,nil,col,set,"MYTHIC",TRANSMOG,A(39507),A(39509),A(39511,102297),A(39496),A(39503),A(39506),A(39510),A(39508),A(39505))

    -- Uldir
    loc = "LOC_RAID_0801"
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"TR_CLOTH_22",CLOTH,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(38356),A(38358),A(38361,99205),A(38360),A(38359),A(38355),A(38352),A(38357),A(38353))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"NORMAL",TRANSMOG,A(38368),A(38370),A(38373,96613),A(38372),A(38371),A(38367),A(38364),A(38369),A(38365))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"HEROIC",TRANSMOG,A(38344),A(38346),A(38348,99206),A(38351),A(38347),A(38343),A(38340),A(38345),A(38341))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"MYTHIC",TRANSMOG,A(38380),A(38382),A(38385,99207),A(38384),A(38383),A(38379),A(38376),A(38381),A(38377))
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"TR_LEATHER_22",LEATHER,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(38456),A(38458),A(38485,99202),A(38454),A(38459),A(38455),A(38452),A(38457),A(38453))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"NORMAL",TRANSMOG,A(38464),A(38466),A(38488,96614),A(38462),A(38467),A(38463),A(38460),A(38465),A(38461))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"HEROIC",TRANSMOG,A(38326),A(38328),A(38449,99203),A(38324),A(38329),A(38325),A(38322),A(38327),A(38323))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"MYTHIC",TRANSMOG,A(38472),A(38474),A(38476,99204),A(38470),A(38475),A(38471),A(38468),A(38473),A(38469))
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"TR_MAIL_22",MAIL,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(38288),A(38290),A(38306,99201),A(38286),A(38291),A(38287),A(38284),A(38289),A(38285))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"NORMAL",TRANSMOG,A(38280),A(38282),A(38303,96615),A(38278),A(38283),A(38279),A(38276),A(38281),A(38277))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"HEROIC",TRANSMOG,A(38272),A(38274),A(38300,99199),A(38270),A(38275),A(38271),A(38268),A(38273),A(38269))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"MYTHIC",TRANSMOG,A(38296),A(38298),A(38309,99200),A(38294),A(38299),A(38295),A(38292),A(38297),A(38293))
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"TR_PLATE_22",PLATE,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(38406),A(38408),A(38410,100413),A(38404),A(38409),A(38405),A(38402),A(38407),A(38403))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"NORMAL",TRANSMOG,A(38417),A(38419),A(38421,100412),A(38415),A(38420),A(38416),A(38413),A(38418),A(38414))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"HEROIC",TRANSMOG,A(38395),A(38397),A(38393),A(38398),A(38394),A(38391),A(38396),A(38392))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"MYTHIC",TRANSMOG,A(38428),A(38430),A(38426),A(38431),A(38427),A(38424),A(38429),A(38425))
end


local function GetDungeonAppearances()
    local col = SetCollector.DUNGEON
    local set = ""
end


local function GetPvpAppearances()
    local col = SetCollector.PVP
    local set, loc = ""

    -- Season 4
    loc = "LOC_PVP_0804"
    set = SetCollector:AddSetLegacy(80000,nil,col,10804,"PVP_CLOTH_A_25",CLOTH,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(41043, 106830),A(41051, 106848),A(41027, 106806),A(41059, 106860),A(41039, 106826),A(41055, 106854),A(41047, 106838),A(41035, 106816))
    set = SetCollector:AddSetLegacy(80000,nil,col,10804,"PVP_LEATHER_A_25",LEATHER,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(40907, 107032),A(40929, 106972),A(40860, 107096),A(40951, 106994),A(40896, 106822),A(40940, 106858),A(40918, 106842),A(40885, 106820))
    set = SetCollector:AddSetLegacy(80000,nil,col,10804,"PVP_MAIL_A_25",MAIL,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(40796, 107030),A(40808, 107160),A(40784, 106938),A(40816, 106864),A(40792, 106828),A(40812, 106984),A(40804, 106840),A(40788, 106946))
    set = SetCollector:AddSetLegacy(80000,nil,col,10804,"PVP_PLATE_A_25",PLATE,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(40792, 107040),A(40980, 106798),A(),A(40960, 107072),A(40988, 106990),A(40968, 106824),A(40984, 106980),A(40976, 106836),A(40964, 106814))

    set = SetCollector:AddSetLegacy(80000,nil,col,10804,"PVP_CLOTH_H_25",CLOTH,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(41043, 106830),A(41051, 106848),A(41027, 106806),A(41059, 106860),A(41039, 106826),A(41055, 106854),A(41047, 106838),A(41035, 106816))
    set = SetCollector:AddSetLegacy(80000,nil,col,10804,"PVP_LEATHER_H_25",LEATHER,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(40907, 107032),A(40929, 106972),A(40860, 107096),A(40951, 106994),A(40896, 106822),A(40940, 106858),A(40918, 106842),A(40885, 106820))
    set = SetCollector:AddSetLegacy(80000,nil,col,10804,"PVP_MAIL_H_25",MAIL,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(40796, 107030),A(40808, 107160),A(40784, 106938),A(40816, 106864),A(40792, 106828),A(40812, 106984),A(40804, 106840),A(40788, 106946))
    set = SetCollector:AddSetLegacy(80000,nil,col,10804,"PVP_PLATE_H_25",PLATE,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(40792, 107040),A(40980, 106798),A(),A(40960, 107072),A(40988, 106990),A(40968, 106824),A(40984, 106980),A(40976, 106836),A(40964, 106814))

    -- Season 3
    loc = "LOC_PVP_0803"
    set = SetCollector:AddSetLegacy(80000,nil,col,10803,"PVP_CLOTH_A_24",CLOTH,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(40594, 103860),A(40602, 103878),A(40582, 103908),A(40578, 103836),A(40610, 103890),A(40590, 103856),A(40606, 103884),A(40598, 103868),A(40586, 103846))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(40062, 103668),A(40064, 103584),A(40059, 103616),A(40058, 103714),A(40066, 103596),A(40061, 103434),A(40065, 103462),A(40063, 103446),A(40060, 103424))
    set = SetCollector:AddSetLegacy(80000,nil,col,10803,"PVP_LEATHER_A_24",LEATHER,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(40642, 103864),A(40650, 103874),A(40626, 103910),A(40622, 103842),A(40658, 103896),A(40638, 103852),A(40654, 103888),A(40646, 103872),A(40634, 103850))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(40225, 103640),A(40228, 103580),A(40222, 103618),A(40221, 103704),A(40230, 103602),A(40224, 103430),A(40229, 103466),A(40226, 103450),A(40223, 103428))
    set = SetCollector:AddSetLegacy(80000,nil,col,10803,"PVP_MAIL_A_24",MAIL,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(40682, 103862),A(40690, 103880),A(40666, 103912),A(40662, 103840),A(40698, 103894),A(40678, 103858),A(40694, 103886),A(40686, 103870),A(40674, 103848))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(40344, 103638),A(40341, 103768),A(40347, 103620),A(40348, 103546),A(40327, 103472),A(40345, 103436),A(40340, 103592),A(40343, 103448),A(40346, 103554))
    set = SetCollector:AddSetLegacy(80000,nil,col,10803,"PVP_PLATE_A_24",PLATE,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(40566, 103834),A(40558, 103876),A(40574, 103914),A(40542, 103838),A(40570, 103892),A(40550, 103854),A(40562, 103882),A(40554, 103866),A(40546, 103844))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(40408, 103650),A(40406, 103454),A(40469, 103622),A(40412, 103684),A(40404, 103470),A(40409, 103432),A(40405, 103588),A(40407, 103572),A(40410, 103550))

    set = SetCollector:AddSetLegacy(80000,nil,col,10803,"PVP_CLOTH_H_24",CLOTH,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(40597, 103776),A(40605, 103780),A(40585, 103900),A(40581, 103770),A(40613, 103782),A(40593, 103774),A(40609, 103784),A(40601, 103778),A(40589, 103772))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(40113, 103658),A(40107, 103486),A(40119, 103608),A(40109, 103706),A(40103, 103488),A(40115, 103352),A(40105, 103362),A(40111, 103356),A(40117, 103350))
    set = SetCollector:AddSetLegacy(80000,nil,col,10803,"PVP_LEATHER_H_24",LEATHER,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(40645, 103792),A(40653, 103796),A(40629, 103902),A(40625, 103786),A(40661, 103800),A(40641, 103790),A(40657, 103798),A(40649, 103794),A(40637, 103788))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(40215, 103628),A(40218, 103502),A(40212, 103610),A(40211, 103692),A(40220, 103506),A(40214, 103368),A(40219, 103376),A(40216, 103372),A(40213, 103366))
    set = SetCollector:AddSetLegacy(80000,nil,col,10803,"PVP_MAIL_H_24",MAIL,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(40685, 103808),A(40693, 103812),A(40669, 103904),A(40665, 103802),A(40701, 103816),A(40681, 103806),A(40697, 103814),A(40689, 103810),A(40677, 103804))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(40362, 103630),A(40359, 103758),A(40365, 103612),A(40366, 103380),A(40329, 103394),A(40363, 103384),A(40358, 103520),A(40361, 103388),A(40364, 103510))
    set = SetCollector:AddSetLegacy(80000,nil,col,10803,"PVP_PLATE_H_24",PLATE,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(40563, 103818),A(40555, 103828),A(40571, 103906),A(40539, 103820),A(40567, 103832),A(40547, 103824),A(40559, 103830),A(40551, 103826),A(40543, 103822))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(40460, 103648),A(40463, 103406),A(40411, 103614),A(40467, 103680),A(40461, 103410),A(40465, 103402),A(40462, 103536),A(40464, 103532),A(40466, 103528))
    
    -- Season 2
    loc = "LOC_PVP_0802"
    -- Alliance
    set = SetCollector:AddSetLegacy(80000,nil,col,10802,"PVP_CLOTH_A_23",CLOTH,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(39335, 101335),A(39337, 101353),A(39340, 101529),A(39332, 101311),A(39339, 101365),A(39334, 101331),A(39338, 101359),A(39336, 101343),A(39333, 101321))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(39302, 101127),A(39304, 101145),A(39307, 101235),A(39299, 101103),A(39306, 101157),A(39301, 101123),A(39305, 101023),A(39303, 101135),A(39300, 101113))
    set = SetCollector:AddSetLegacy(80000,nil,col,10802,"PVP_LEATHER_A_23",LEATHER,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(39126, 101339),A(39128, 101349),A(39139, 101531),A(39123, 101317),A(39130, 101371),A(39125, 101327),A(39129, 101363),A(39127, 101347),A(39124, 101325))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(39117, 101131),A(39119, 101141),A(39122, 101237),A(39114, 101109),A(39121, 101163),A(39116, 101119),A(39120, 101155),A(39118, 101011),A(39115, 101117))
    set = SetCollector:AddSetLegacy(80000,nil,col,10802,"PVP_MAIL_A_23",MAIL,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(38947, 101337),A(38949, 101355),A(38952, 101533),A(38944, 101315),A(38951, 101369),A(38946, 101333),A(38950, 101361),A(38948, 101345),A(38945, 101323))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(38938, 101129),A(38940, 101147),A(38943, 101239),A(38935, 101107),A(38942, 101161),A(38937, 101125),A(38941, 101153),A(38939, 101137),A(38936, 101115))
    set = SetCollector:AddSetLegacy(80000,nil,col,10802,"PVP_PLATE_A_23",PLATE,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(39311, 101309),A(39313, 101351),A(39316, 101535),A(39308, 101313),A(39315, 101367),A(39310, 101329),A(39314, 101357),A(39312, 101341),A(39309, 101319))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(39097, 101101),A(39099, 101143),A(39102, 101241),A(39094, 101105),A(39101, 101159),A(39096, 101121),A(39100, 101149),A(39098, 101133),A(39095, 101111))
    -- Horde
    set = SetCollector:AddSetLegacy(80000,nil,col,10802,"PVP_CLOTH_H_23",CLOTH,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(39639, 101251),A(39641, 101255),A(39644, 101521),A(39636, 101245),A(39643, 101257),A(39638, 101249),A(39642, 101259),A(39640, 101253),A(39637, 101247))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(39669, 101043),A(39671, 101047),A(39674, 101227),A(39666, 101037),A(39673, 101049),A(39668, 101041),A(39672, 101051),A(39670, 101045),A(39667, 101039))
    set = SetCollector:AddSetLegacy(80000,nil,col,10802,"PVP_LEATHER_H_23",LEATHER,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(39409, 101267),A(39411, 101271),A(39687, 101523),A(39406, 101261),A(39413, 101275),A(39408, 101265),A(39412, 101273),A(39410, 101269),A(39407, 101263))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(39417, 100931),A(39419, 100935),A(39405, 101229),A(39414, 100925),A(39421, 100939),A(39416, 100929),A(39420, 100937),A(39418, 100933),A(39415, 100927))
    set = SetCollector:AddSetLegacy(80000,nil,col,10802,"PVP_MAIL_H_23",MAIL,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(39013, 101283),A(39015, 101287),A(39018, 101525),A(39010, 101277),A(39017, 101291),A(39012, 101281),A(39016, 101289),A(39014, 101285),A(39011, 101279))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(39031, 100947),A(39033, 100951),A(39058, 101231),A(39028, 100941),A(39035, 100955),A(39030, 100945),A(39034, 100953),A(39032, 100949),A(39029, 100943))
    set = SetCollector:AddSetLegacy(80000,nil,col,10802,"PVP_PLATE_H_23",PLATE,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(39174, 101293),A(39176, 101303),A(39179, 101527),A(39171, 101295),A(39178, 101307),A(39173, 101299),A(39177, 101305),A(39175, 101301),A(39172, 101297))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(39193, 100957),A(39195, 100967),A(39198, 101233),A(39190, 100959),A(39197, 100971),A(39192, 100963),A(39196, 100969),A(39194, 100965),A(39191, 100961))

    -- Season 1
    loc = "LOC_PVP_0801"
    -- Alliance
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"PVP_CLOTH_A_22",CLOTH,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(37360, 98748),A(37241, 98757),A(37238, 99285),A(37223, 98736),A(37225, 98763),A(37221, 98746),A(37236, 98760),A(37222, 98752),A(37218, 98741))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(37240, 97700),A(37206, 97709),A(37201, 99289),A(37202, 97787),A(37200, 97715),A(37204, 97797),A(37198, 97712),A(37205, 97704),A(37199, 97792))
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"PVP_LEATHER_A_22",LEATHER,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(36861, 98750),A(36865, 98755),A(36870, 99286),A(36857, 98739),A(36855, 98766),A(36859, 98744),A(36851, 98762),A(36863, 98754),A(36853, 98743))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(36900, 97702),A(36903, 97707),A(36867, 99290),A(36814, 97790),A(36812, 97718),A(36815, 97795),A(36879, 97714),A(36817, 97706),A(36811, 97794))
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"PVP_MAIL_A_22",MAIL,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(37271, 98749),A(37274, 98758),A(37269, 99287),A(37268, 98738),A(37275, 98765),A(37270, 98747),A(37266, 98761),A(37272, 98753),A(37267, 98742))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(37280, 97800),A(37281, 97809),A(37260, 99291),A(37259, 97789),A(37256, 97717),A(37261, 97798),A(37279, 97812),A(37263, 97804),A(37258, 97793))
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"PVP_PLATE_A_22",PLATE,ANY,ANY,ALLIANCE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(37810, 98735),A(37812, 98756),A(37851, 99288),A(37808, 98737),A(37813, 98764),A(37809, 98745),A(37806, 98759),A(37811, 98751),A(37807, 98740))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(37826, 97687),A(37828, 97807),A(37858, 99292),A(37824, 97689),A(37829, 97815),A(37825, 97697),A(37822, 97810),A(37827, 97802),A(37823, 97692))
    -- Horde
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"PVP_CLOTH_H_22",CLOTH,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(36757, 98780),A(36761, 98789),A(36960, 98704),A(37076, 98768),A(36771, 98794),A(37077, 98778),A(37075, 98798),A(36785, 98784),A(36768, 98773))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(36801, 97732),A(36804, 97741),A(36789, 97751),A(36754, 97720),A(36770, 97747),A(37071, 97730),A(36878, 97811),A(36783, 97736),A(36767, 97725))
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"PVP_LEATHER_H_22",LEATHER,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(37412, 98782),A(37420, 98787),A(37473, 98734),A(37375, 98771),A(37374, 98797),A(37414, 98776),A(37411, 98793),A(37394, 98786),A(37413, 98775))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(37409, 97734),A(37410, 97739),A(36795, 97752),A(37396, 97723),A(37401, 97750),A(37423, 97728),A(37408, 97746),A(37379, 97738),A(37422, 97727))
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"PVP_MAIL_H_22",MAIL,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(38054, 98781),A(38056, 98790),A(38335, 98799),A(38052, 98770),A(38057, 98796),A(38053, 98779),A(38050, 98792),A(38055, 98785),A(38051, 98774))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(38081, 97733),A(38082, 97742),A(38338, 97990),A(38073, 97722),A(38078, 97749),A(38074, 97731),A(38080, 97745),A(38076, 97737),A(38072, 97726))
    set = SetCollector:AddSetLegacy(80000,nil,col,10801,"PVP_PLATE_H_22",PLATE,ANY,ANY,HORDE,loc)
        SetCollector:AddVariantLegacy(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(36911, 98767),A(37088, 98788),A(36822, 98800),A(37086, 98769),A(36842, 98795),A(37087, 98777),A(37083, 98791),A(37095, 98783),A(37085, 98772))
        SetCollector:AddVariantLegacy(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(36807, 97818),A(36809, 97839),A(36795, 97991),A(36849, 97820),A(36793, 97847),A(37082, 97828),A(37098, 97842),A(37094, 97834),A(36848, 97823))

end


local function GetOtherAppearances()
    local col = SetCollector.OTHER
    local set = ""
    
    -- Black Empire Sets (Skip, same as Ny'alotha Raid Finder Set)

    -- Benthic Gear
    set = SetCollector:AddSetLegacy(80200,nil,col,1202,"OTH_CLOTH_1202",CLOTH,ANY,ANY,ANY)
            SetCollector:AddVariantLegacy(80200,nil,col,set,"BENTHIC",TRANSMOG,A(40596),A(40604),A(40580),A(40612),A(40592),A(40608),A(40600),A(40588))
            SetCollector:AddVariantLegacy(80200,nil,col,set,"RECOLOR",TRANSMOG,A(40595),A(40603),A(40579),A(40611),A(40591),A(40607),A(40599),A(40587))
    set = SetCollector:AddSetLegacy(80200,nil,col,1202,"OTH_LEATHER_1202",LEATHER,ANY,ANY,ANY)
            SetCollector:AddVariantLegacy(80200,nil,col,set,"BENTHIC",TRANSMOG,A(40644),A(40652),A(40624),A(40660),A(40640),A(40656),A(40648),A(40636))
            SetCollector:AddVariantLegacy(80200,nil,col,set,"RECOLOR",TRANSMOG,A(40643),A(40651),A(40623),A(40659),A(40639),A(40655),A(40647),A(40635))
    set = SetCollector:AddSetLegacy(80200,nil,col,1202,"OTH_MAIL_1202",MAIL,ANY,ANY,ANY)
            SetCollector:AddVariantLegacy(80200,nil,col,set,"BENTHIC",TRANSMOG,A(40683),A(40691),A(40663),A(40699),A(40679),A(40695),A(40687),A(40675))
            SetCollector:AddVariantLegacy(80200,nil,col,set,"RECOLOR",TRANSMOG,A(40684),A(40692),A(40664),A(40700),A(40680),A(40696),A(40688),A(40676))
    set = SetCollector:AddSetLegacy(80200,nil,col,1202,"OTH_PLATE_1202",PLATE,ANY,ANY,ANY)
            SetCollector:AddVariantLegacy(80200,nil,col,set,"BENTHIC",TRANSMOG,A(40565),A(40557),A(40541),A(40569),A(40549),A(40561),A(40553),A(40545))
            SetCollector:AddVariantLegacy(80200,nil,col,set,"RECOLOR",TRANSMOG,A(40564),A(40556),A(40540),A(40568),A(40548),A(40560),A(40552),A(40544))

    -- Kul'Tiran Leveling Sets
    set = SetCollector:AddSetLegacy(80000,nil,col,1101,"OTH_CLOTH_A_110",CLOTH,ANY,ANY,ANY)
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_A_1",TRANSMOG,A(35986),A(35988),A(35984),A(35989),A(35985),A(35982),A(35987),A(35983)) -- Stormsong
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_A_2",TRANSMOG,A(35994),A(35996),A(35992),A(35997),A(35993),A(35990),A(35995),A(35991)) -- Tiragarde Sound
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_A_3",TRANSMOG,A(35978),A(35980),A(35976),A(35981),A(35977),A(35974),A(35979),A(35975)) -- Drustvar
    set = SetCollector:AddSetLegacy(80000,nil,col,1101,"OTH_LEATHER_A_110",LEATHER,ANY,ANY,ANY)
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_A_1",TRANSMOG,A(36281),A(36283),A(36279),A(36284),A(36280),A(36277),A(36282),A(36278))
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_A_2",TRANSMOG,A(36289),A(36291),A(36287),A(36292),A(36288),A(36285),A(36290),A(36286))
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_A_3",TRANSMOG,A(36273),A(36275),A(36271),A(36276),A(36272),A(36269),A(36274),A(36270))
    set = SetCollector:AddSetLegacy(80000,nil,col,1101,"OTH_MAIL_A_110",MAIL,ANY,ANY,ANY)
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_A_1",TRANSMOG,A(36063),A(36065),A(36061),A(36066),A(36062),A(36059),A(36064),A(36060))
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_A_2",TRANSMOG,A(36073),A(36075),A(36071),A(36076),A(36072),A(36069),A(36074),A(36070))
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_A_3",TRANSMOG,A(36081),A(36083),A(36079),A(36084),A(36080),A(36077),A(36082),A(36078))
    set = SetCollector:AddSetLegacy(80000,nil,col,1101,"OTH_PLATE_A_110",PLATE,ANY,ANY,ANY)
            SetCollector:AddVariantLegacy(80300,nil,col,set,"ZONE_A_1",TRANSMOG,A(36175),A(36177),A(36173),A(36178),A(36174),A(36171),A(36176),A(36172))
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_A_2",TRANSMOG,A(36167),A(36169),A(36165),A(36170),A(36189),A(36163),A(36168),A(36164))
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_A_3",TRANSMOG,A(36159),A(36161),A(36157),A(36162),A(36158),A(36155),A(36160),A(36156))
    -- Zandalar Leveling Sets
    set = SetCollector:AddSetLegacy(80000,nil,col,1102,"OTH_CLOTH_H_110",CLOTH,ANY,ANY,ANY)
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_H_1",TRANSMOG,A(36317),A(36359),A(36356),A(36357),A(36355),A(36353),A(36352),A(36354)) -- Vol'dun
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_H_2",TRANSMOG,A(36358),A(36322),A(36318),A(36323),A(36324),A(36319),A(36320),A(36321)) -- Nazmir
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_H_3",TRANSMOG,A(36363),A(36366),A(36365),A(36367),A(36362),A(36360),A(36364),A(36361)) -- Zuldazar
    set = SetCollector:AddSetLegacy(80000,nil,col,1102,"OTH_LEATHER_H_110",LEATHER,ANY,ANY,ANY)
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_H_1",TRANSMOG,A(35938),A(35940),A(35936),A(35941),A(35937),A(35934),A(35939),A(35935))
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_H_2",TRANSMOG,A(35960),A(35962),A(35958),A(35963),A(35959),A(35956),A(35961),A(35957))
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_H_3",TRANSMOG,A(35951),A(35953),A(35949),A(35954),A(35950),A(35947),A(35952),A(35948))
    set = SetCollector:AddSetLegacy(80000,nil,col,1102,"OTH_MAIL_H_110",MAIL,ANY,ANY,ANY)
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_H_1",TRANSMOG,A(36013),A(36015),A(36011),A(36016),A(36012),A(36009),A(36014),A(36010))
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_H_2",TRANSMOG,A(36029),A(36031),A(36027),A(36032),A(36028),A(36025),A(36030),A(36026))
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_H_3",TRANSMOG,A(36021),A(36023),A(36372),A(36024),A(36020),A(36017),A(36022),A(36018))
    set = SetCollector:AddSetLegacy(80000,nil,col,1102,"OTH_PLATE_H_110",PLATE,ANY,ANY,ANY)
            SetCollector:AddVariantLegacy(80300,nil,col,set,"ZONE_H_1",TRANSMOG,A(36047),A(36049),A(36045),A(36050),A(36046),A(36043),A(36048),A(36044))
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_H_2",TRANSMOG,A(36037),A(36039),A(36035),A(36040),A(36036),A(36033),A(36038),A(36034))
            SetCollector:AddVariantLegacy(80000,nil,col,set,"ZONE_H_3",TRANSMOG,A(36055),A(36057),A(36053),A(36058),A(36054),A(36051),A(36056),A(36052))
    end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion08Appearances(expansion)
    if expansion.v08 then
        GetLegendaries()
        GetRaidAppearances()
        GetDungeonAppearances()
        GetPvpAppearances()
        GetExpansionAppearances()
        GetOtherAppearances()
    end
end


function SetCollector:GetVersion08Status()
    return SetCollector:GetExpansionStatus("8")
end


function SetCollector:SetVersion08Status()
    SetCollector:SetExpansionStatus("8")
end