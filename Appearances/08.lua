-- Appearances from Battle for Azeroth (v.8.x)

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
    
	set = SetCollector:AddSet(80300,nil,col,60,"LG_120",ANY,ANY,ANY,ANY)
            SetCollector:AddVariant(80300,nil,col,set,"RANK_1_TO_5",TRANSMOG,A(40845,105938))
            SetCollector:AddVariant(80300,nil,col,set,"RANK_6_TO_11",TRANSMOG,A(40846,105939))
            SetCollector:AddVariant(80300,nil,col,set,"RANK_12_PLUS",TRANSMOG,A(40847,105940))
end


local function GetExpansionAppearances()
	local col = SetCollector.EXPANSION
    local set = ""

    -- Island Expeditions (May be appearances from earlier sets)
	set = SetCollector:AddSet(80000,nil,col,10804,"ISLAND_EXPEDITIONS",CLOTH,ANY,ANY,ANY)
        SetCollector:AddVariant(80000,nil,col,set,"1",TRANSMOG,A(15699),A(15702),A(15701),A(15703),A(15698),A(15695),A(15700),A(15696))
        SetCollector:AddVariant(80000,nil,col,set,"2",TRANSMOG,A(5954),A(5957),A(2044),A(1190),A(5956),A(2059),A(5955),A(5283))
        SetCollector:AddVariant(80000,nil,col,set,"3",TRANSMOG,A(39765),A(26513),A(26625),A(26521),A(26517))
        SetCollector:AddVariant(80000,nil,col,set,"4",TRANSMOG,A(15963),A(15966),A(15965),A(15967),A(15962),A(15959),A(15964),A(15960))
        SetCollector:AddVariant(80000,nil,col,set,"5",TRANSMOG,A(31884),A(31888),A(31887),A(31883),A(31880),A(31885),A(31881))
    set = SetCollector:AddSet(80000,nil,col,10803,"ISLAND_EXPEDITIONS",CLOTH,ANY,ANY,ANY)
        SetCollector:AddVariant(80000,nil,col,set,"6",TRANSMOG,A(15745),A(15748),A(15747),A(15749),A(15744),A(15741),A(15746),A(15742))
	set = SetCollector:AddSet(80000,nil,col,10804,"ISLAND_EXPEDITIONS",LEATHER,ANY,ANY,ANY)
        SetCollector:AddVariant(80000,nil,col,set,"1",TRANSMOG,A(28024),A(28025),A(28022),A(28027),A(28023),A(28020),A(28026),A(28021))
        SetCollector:AddVariant(80000,nil,col,set,"2",TRANSMOG,A(31640),A(31642),A(31644),A(31643),A(31639),A(31636),A(31641),A(31637))
        SetCollector:AddVariant(80000,nil,col,set,"3",TRANSMOG,A(18799),A(18803),A(18801),A(18804),A(18718),A(18798),A(18802),A(18800))
        SetCollector:AddVariant(80000,nil,col,set,"4",TRANSMOG,A(18973),A(18970),A(18971),A(19007),A(18974),A(19164),A(18974),A(19019))
        SetCollector:AddVariant(80000,nil,col,set,"5",TRANSMOG,A(15842),A(15844),A(15840),A(15845),A(15841),A(15838),A(15843),A(15839))
    set = SetCollector:AddSet(80000,nil,col,10803,"ISLAND_EXPEDITIONS",LEATHER,ANY,ANY,ANY)
        SetCollector:AddVariant(80000,nil,col,set,"6",TRANSMOG,A(28409),A(38655),A(38651),A(38656),A(38652),A(38649),A(38654),A(38650))
        SetCollector:AddVariant(80000,nil,col,set,"7",TRANSMOG,A(15117),A(15115),A(15119),A(15114),A(15118),A(15121),A(15116),A(15120))
	set = SetCollector:AddSet(80000,nil,col,10803,"ISLAND_EXPEDITIONS",MAIL,ANY,ANY,ANY)
        SetCollector:AddVariant(80000,nil,col,set,"1",TRANSMOG,A(38627),A(38624),A(8628),A(8701),A(8700),A(38631),A(8699),A(38632))
        SetCollector:AddVariant(80000,nil,col,set,"2",TRANSMOG,A(15066),A(15068),A(13613),A(15069),A(15065),A(13593),A(15067),A(15064))
        SetCollector:AddVariant(80000,nil,col,set,"3",TRANSMOG,A(31650),A(31652),A(31648),A(31653),A(31649),A(31646),A(31651),A(31647))
    set = SetCollector:AddSet(80000,nil,col,10804,"ISLAND_EXPEDITIONS",PLATE,ANY,ANY,ANY)
        SetCollector:AddVariant(80000,nil,col,set,"1",TRANSMOG,A(22632),A(22634),A(22630),A(22635),A(22631),A(22628),A(22633),A(22629))
        SetCollector:AddVariant(80000,nil,col,set,"2",TRANSMOG,A(16686),A(16688),A(16684),A(16689),A(16685),A(16682),A(16687),A(16683))
        SetCollector:AddVariant(80000,nil,col,set,"3",TRANSMOG,A(20077),A(20079),A(20075),A(20080),A(20076),A(20073),A(20078),A(20074))
        SetCollector:AddVariant(80000,nil,col,set,"4",TRANSMOG,A(28397),A(28399),A(28395),A(28400),A(28396),A(28393),A(28398),A(28394))
        SetCollector:AddVariant(80000,nil,col,set,"5",TRANSMOG,A(15665),A(15667),A(15669),A(15668),A(15664),A(15661),A(15666),A(15662))
    set = SetCollector:AddSet(80000,nil,col,10803,"ISLAND_EXPEDITIONS",PLATE,ANY,ANY,ANY)
        SetCollector:AddVariant(80000,nil,col,set,"6",TRANSMOG,A(38642),A(38643),A(15490),A(15519),A(15504),A(36033),A(15485),A(38644))
        SetCollector:AddVariant(80000,nil,col,set,"7",TRANSMOG,A(15144),A(15146),A(15142),A(15147),A(15143),A(15140),A(15145),A(15141))
    
    -- Darkshore Warfront
    --[[
	set = SetCollector:AddSet(80000,nil,col,10802,"EX_CLOTH_A_0802",CLOTH,ANY,ANY,ALLIANCE)
            SetCollector:AddVariant(80000,nil,col,set,"EX_CLOTH_A_0802",TRANSMOG,A(),A(39325),A(),A(39320),A(39327),A(39322),A(39326),A(39324),A(39321))
	set = SetCollector:AddSet(80000,nil,col,10802,"EX_LEATHER_A_0802",LEATHER,ANY,ANY,ALLIANCE)
            SetCollector:AddVariant(80000,nil,col,set,"EX_LEATHER_A_0802",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())]]
    set = SetCollector:AddSet(80000,nil,col,10802,"EX_MAIL_A_0802",MAIL,ANY,ANY,ALLIANCE)
        SetCollector:AddVariant(80000,nil,col,set,"ORIGINAL",TRANSMOG,A(38911),A(38931),A(38934),A(38908),A(38915),A(38910),A(38914),A(38912),A(38909))
        SetCollector:AddVariant(80000,nil,col,set,"RECOLOR",TRANSMOG,A(38911),A(38931),A(38934),A(38926),A(38915),A(38928),A(38932),A(38912),A(38927))
    --set = SetCollector:AddSet(80000,nil,col,10802,"EX_PLATE_A_0802",PLATE,ANY,ANY,ALLIANCE)
    --        SetCollector:AddVariant(80000,nil,col,set,"EX_PLATE_A_0802",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    --[[
    set = SetCollector:AddSet(80000,nil,col,10802,"EX_CLOTH_H_0802",CLOTH,ANY,ANY,HORDE)
            SetCollector:AddVariant(80000,nil,col,set,"EX_CLOTH_H_0802",TRANSMOG,A(),A(39658),A(),A(39653),A(39660),A(39655),A(39659),A(39657),A(39654))
    set = SetCollector:AddSet(80000,nil,col,10802,"EX_LEATHER_H_0802",LEATHER,ANY,ANY,HORDE)
            SetCollector:AddVariant(80000,nil,col,set,"EX_LEATHER_H_0802",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(80000,nil,col,10802,"EX_MAIL_H_0802",MAIL,ANY,ANY,HORDE)
            SetCollector:AddVariant(80000,nil,col,set,"EX_MAIL_H_0802",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(80000,nil,col,10802,"EX_PLATE_H_0802",PLATE,ANY,ANY,HORDE)
            SetCollector:AddVariant(80000,nil,col,set,"EX_PLATE_H_0802",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())]]
    
    -- Arathi Warfront
	set = SetCollector:AddSet(80000,nil,col,10801,"EX_CLOTH_A_0801",CLOTH,ANY,ANY,ALLIANCE)
            SetCollector:AddVariant(80000,nil,col,set,"EX_CLOTH_A_0801",TRANSMOG,A(37359),A(37235),A(37233),A(37214),A(37216),A(37212),A(37231),A(37213),A(37209))
	set = SetCollector:AddSet(80000,nil,col,10801,"EX_LEATHER_A_0801",LEATHER,ANY,ANY,ALLIANCE)
            SetCollector:AddVariant(80000,nil,col,set,"EX_LEATHER_A_0801",TRANSMOG,A(36862),A(36866),A(36874),A(36858),A(36856),A(36860),A(36852),A(36864),A(36854))
    set = SetCollector:AddSet(80000,nil,col,10801,"EX_MAIL_A_0801",MAIL,ANY,ANY,ALLIANCE)
            SetCollector:AddVariant(80000,nil,col,set,"ORIGINAL",TRANSMOG,A(37253),A(37255),A(37559),A(37250),A(37248),A(37252),A(37246),A(37254),A(37247))    -- Chest 37251?
            SetCollector:AddVariant(80000,nil,col,set,"RECOLOR",TRANSMOG,A(37290),A(37278),A(37249),A(37250),A(37248),A(37289),A(37276),A(37254),A(37286))    -- Back 37846
            SetCollector:AddVariant(80000,nil,col,set,"WARFRONT",TRANSMOG,A(37277),A(37278),A(37562),A(37250),A(37248),A(37252),A(37276),A(37254),A(37247))
    set = SetCollector:AddSet(80000,nil,col,10801,"EX_PLATE_A_0801",PLATE,ANY,ANY,ALLIANCE)
            SetCollector:AddVariant(80000,nil,col,set,"EX_PLATE_A_0801",TRANSMOG,A(37777),A(37779),A(37847),A(37783),A(37788),A(37784),A(37773),A(37786),A(37782))
    
    set = SetCollector:AddSet(80000,nil,col,10801,"EX_CLOTH_H_0801",CLOTH,ANY,ANY,HORDE)
            SetCollector:AddVariant(80000,nil,col,set,"EX_CLOTH_H_0801",TRANSMOG,A(36758),A(36762),A(36959),A(37070),A(36772),A(37074),A(37069),A(36784),A(36769))
    set = SetCollector:AddSet(80000,nil,col,10801,"EX_LEATHER_H_0801",LEATHER,ANY,ANY,HORDE)
            SetCollector:AddVariant(80000,nil,col,set,"EX_LEATHER_H_0801",TRANSMOG,A(37419),A(37415),A(37474),A(37386),A(37392),A(37418),A(37416),A(37389),A(37417))
    set = SetCollector:AddSet(80000,nil,col,10801,"EX_MAIL_H_0801",MAIL,ANY,ANY,HORDE)
            SetCollector:AddVariant(80000,nil,col,set,"EX_MAIL_H_0801",TRANSMOG,A(38015),A(38017),A(38331),A(38013),A(38018),A(38014),A(38011),A(38016),A(38012))
    set = SetCollector:AddSet(80000,nil,col,10801,"EX_PLATE_H_0801",PLATE,ANY,ANY,HORDE)
            SetCollector:AddVariant(80000,nil,col,set,"EX_PLATE_H_0801",TRANSMOG,A(36912),A(37093),A(37474),A(37091),A(36828),A(37092),A(37089),A(37096),A(37090))
end


local function GetRaidAppearances()
    local col = SetCollector.RAID
    local set = ""
    local loc = ""
        
    -- Ny'alotha
    loc = "LOC_RAID_0804"
    set = SetCollector:AddSet(80300,nil,col,10804,"TR_CLOTH_25",CLOTH,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80300,nil,col,set,"RAIDFINDER",TRANSMOG,A(41042),A(41050),A(41026),A(41058),A(41038),A(41054),A(41046),A(41034))
            SetCollector:AddVariant(80300,nil,col,set,"NORMAL",TRANSMOG,A(41041),A(41049),A(41025),A(41057),A(41037),A(41053),A(41045),A(41033))
            SetCollector:AddVariant(80300,nil,col,set,"HEROIC",TRANSMOG,A(41040),A(41048),A(41024),A(41056),A(41036),A(41052),A(41044),A(41032))
            SetCollector:AddVariant(80300,nil,col,set,"MYTHIC",TRANSMOG,A(41069),A(41073),A(41061),A(41077),A(41067),A(41075),A(41071),A(41065))
    set = SetCollector:AddSet(80300,nil,col,10804,"TR_LEATHER_25",LEATHER,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80300,nil,col,set,"RAIDFINDER",TRANSMOG,A(40908),A(40930),A(40862),A(40952),A(40897),A(40941),A(40919),A(40886))
            SetCollector:AddVariant(80300,nil,col,set,"NORMAL",TRANSMOG,A(40905),A(40927),A(40858),A(40949),A(40894),A(40938),A(40916),A(40883))
            SetCollector:AddVariant(80300,nil,col,set,"HEROIC",TRANSMOG,A(40906),A(40928),A(40859),A(40950),A(40895),A(40939),A(40917),A(40884))
            SetCollector:AddVariant(80300,nil,col,set,"MYTHIC",TRANSMOG,A(40909),A(40931),A(40863),A(40953),A(40898),A(40942),A(40920),A(40887))
    set = SetCollector:AddSet(80300,nil,col,10804,"TR_MAIL_25",MAIL,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80300,nil,col,set,"RAIDFINDER",TRANSMOG,A(40795),A(40807),A(40783),A(40815),A(40791),A(40811),A(40803),A(40787))
            SetCollector:AddVariant(80300,nil,col,set,"NORMAL",TRANSMOG,A(40797),A(40809),A(40785),A(40817),A(40793),A(40813),A(40805),A(40789))
            SetCollector:AddVariant(80300,nil,col,set,"HEROIC",TRANSMOG,A(40798),A(40810),A(40782),A(40818),A(40794),A(40814),A(40806),A(40790))
            SetCollector:AddVariant(80300,nil,col,set,"MYTHIC",TRANSMOG,A(40833),A(40839),A(40825),A(40843),A(40831),A(40841),A(40835),A(40829))
    set = SetCollector:AddSet(80300,nil,col,10804,"TR_PLATE_25",PLATE,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80300,nil,col,set,"RAIDFINDER",TRANSMOG,A(40971),A(40979),A(40959),A(40987),A(40967),A(40983),A(40975),A(40963))
            SetCollector:AddVariant(80300,nil,col,set,"NORMAL",TRANSMOG,A(40973),A(40981),A(40961),A(40989),A(40969),A(40985),A(40977),A(40965))
            SetCollector:AddVariant(80300,nil,col,set,"HEROIC",TRANSMOG,A(40974),A(40982),A(40962),A(40990),A(40970),A(40986),A(40978),A(40966))
            SetCollector:AddVariant(80300,nil,col,set,"MYTHIC",TRANSMOG,A(41005),A(41011),A(40996),A(41017),A(41002),A(41014),A(41008),A(40999))

    -- The Eternal Palace
    loc = "LOC_RAID_0803"
    set = SetCollector:AddSet(80200,nil,col,10803,"TR_CLOTH_24",CLOTH,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80200,nil,col,set,"RAIDFINDER",TRANSMOG,A(40092),A(40098),A(40096),A(40102),A(40090),A(40100),A(40094),A(40088))
            SetCollector:AddVariant(80200,nil,col,set,"NORMAL",TRANSMOG,A(40075),A(40081),A(40079),A(40067),A(40073),A(40083),A(40077),A(40071))
            SetCollector:AddVariant(80200,nil,col,set,"HEROIC",TRANSMOG,A(40149),A(40143),A(40145),A(40139),A(40151),A(40141),A(40147),A(40153))
            SetCollector:AddVariant(80200,nil,col,set,"MYTHIC",TRANSMOG,A(40132),A(40126),A(40128),A(40122),A(40134),A(40124),A(40130),A(40136))
    set = SetCollector:AddSet(80200,nil,col,10803,"TR_LEATHER_24",LEATHER,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80200,nil,col,set,"RAIDFINDER",TRANSMOG,A(40176),A(40178),A(40172),A(40180),A(40175),A(40179),A(40177),A(40174))
            SetCollector:AddVariant(80200,nil,col,set,"NORMAL",TRANSMOG,A(40195),A(40198),A(40191),A(40200),A(40194),A(40199),A(40196),A(40193))
            SetCollector:AddVariant(80200,nil,col,set,"HEROIC",TRANSMOG,A(40205),A(40208),A(40201),A(40210),A(40204),A(40209),A(40206),A(40203))
            SetCollector:AddVariant(80200,nil,col,set,"MYTHIC",TRANSMOG,A(40235),A(40238),A(40231),A(40240),A(40234),A(40239),A(40236),A(40233))
    set = SetCollector:AddSet(80200,nil,col,10803,"TR_MAIL_24",MAIL,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80200,nil,col,set,"RAIDFINDER",TRANSMOG,A(40353),A(40350),A(40357),A(40328),A(40354),A(40349),A(40352),A(40355))
            SetCollector:AddVariant(80200,nil,col,set,"NORMAL",TRANSMOG,A(40322),A(40319),A(40326),A(40308),A(40323),A(40318),A(40321),A(40324))
            SetCollector:AddVariant(80200,nil,col,set,"HEROIC",TRANSMOG,A(40371),A(40368),A(40375),A(40330),A(40372),A(40367),A(40370),A(40373))
            SetCollector:AddVariant(80200,nil,col,set,"MYTHIC",TRANSMOG,A(40008),A(40010),A(40003),A(40012),A(40007),A(40011),A(40009),A(40006))
    set = SetCollector:AddSet(80200,nil,col,10803,"TR_PLATE_24",PLATE,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80200,nil,col,set,"RAIDFINDER",TRANSMOG,A(39986),A(39984),A(39990),A(39983),A(39987),A(39982),A(39985),A(39988))
            SetCollector:AddVariant(80200,nil,col,set,"NORMAL",TRANSMOG,A(39968),A(39966),A(39972),A(39965),A(39969),A(39964),A(39967),A(39970))
            SetCollector:AddVariant(80200,nil,col,set,"HEROIC",TRANSMOG,A(39977),A(39979),A(39973),A(39980),A(39976),A(39981),A(39978),A(39975))
            SetCollector:AddVariant(80200,nil,col,set,"MYTHIC",TRANSMOG,A(39959),A(39961),A(39955),A(39962),A(39958),A(39963),A(39960),A(39957))

    -- Battle of Dazar'alor
    loc = "LOC_RAID_0802"
    set = SetCollector:AddSet(80100,nil,col,10802,"TR_CLOTH_23",CLOTH,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80100,nil,col,set,"RAIDFINDER",TRANSMOG,A(38835),A(38838),A(38837),A(38809),A(38806),A(38830),A(38813),A(38831))
            SetCollector:AddVariant(80100,nil,col,set,"NORMAL",TRANSMOG,A(38855),A(38858),A(38857),A(38808),A(38805),A(38850),A(38812),A(38851))
            SetCollector:AddVariant(80100,nil,col,set,"HEROIC",TRANSMOG,A(38845),A(38848),A(38847),A(38807),A(38804),A(38840),A(38811),A(38841))
            SetCollector:AddVariant(80100,nil,col,set,"MYTHIC",TRANSMOG,A(38782),A(38814),A(38778),A(38803),A(38802),A(38786),A(38810),A(38790))
    set = SetCollector:AddSet(80100,nil,col,10802,"TR_LEATHER_23",LEATHER,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80100,nil,col,set,"RAIDFINDER",TRANSMOG,A(39426),A(39428),A(39422),A(39430),A(39425),A(39429),A(39427),A(39424))
            SetCollector:AddVariant(80100,nil,col,set,"NORMAL",TRANSMOG,A(39266),A(39268),A(39262),A(39270),A(39265),A(39269),A(39267),A(39264))
            SetCollector:AddVariant(80100,nil,col,set,"HEROIC",TRANSMOG,A(39435),A(39437),A(39431),A(39439),A(39434),A(39438),A(39436),A(39433))
            SetCollector:AddVariant(80100,nil,col,set,"MYTHIC",TRANSMOG,A(39471),A(39473),A(39467),A(39475),A(39470),A(39474),A(39472),A(39469))
    set = SetCollector:AddSet(80100,nil,col,10802,"TR_MAIL_23",MAIL,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80100,nil,col,set,"RAIDFINDER",TRANSMOG,A(39589),A(39591),A(39585),A(39593),A(39588),A(39592),A(39590),A(39587))
            SetCollector:AddVariant(80100,nil,col,set,"NORMAL",TRANSMOG,A(39621),A(39623),A(39617),A(39625),A(39620),A(39624),A(39622),A(39619))
            SetCollector:AddVariant(80100,nil,col,set,"HEROIC",TRANSMOG,A(39605),A(39607),A(39601),A(39609),A(39604),A(39608),A(39606),A(39603))
            SetCollector:AddVariant(80100,nil,col,set,"MYTHIC",TRANSMOG,A(39556),A(39558),A(39544),A(39551),A(39555),A(39559),A(39557),A(39554))
    set = SetCollector:AddSet(80100,nil,col,10802,"TR_PLATE_23",PLATE,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80100,nil,col,set,"RAIDFINDER",TRANSMOG,A(39515),A(39517),A(39512),A(39519),A(39514),A(39518),A(39516),A(39513))
            SetCollector:AddVariant(80100,nil,col,set,"NORMAL",TRANSMOG,A(39482),A(39484),A(39479),A(39486),A(39481),A(39485),A(39483),A(39480))
            SetCollector:AddVariant(80100,nil,col,set,"HEROIC",TRANSMOG,A(39531),A(39533),A(39528),A(39535),A(39530),A(39534),A(39532),A(39529))
            SetCollector:AddVariant(80100,nil,col,set,"MYTHIC",TRANSMOG,A(39507),A(39509),A(39496),A(39503),A(39506),A(39510),A(39508),A(39505))

    -- Uldir
    loc = "LOC_RAID_0801"
    set = SetCollector:AddSet(80000,nil,col,10801,"TR_CLOTH_22",CLOTH,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(38356),A(38358),A(38360),A(38359),A(38355),A(38352),A(38357),A(38353))
            SetCollector:AddVariant(80000,nil,col,set,"NORMAL",TRANSMOG,A(38368),A(38370),A(38372),A(38371),A(38367),A(38364),A(38369),A(38365))
            SetCollector:AddVariant(80000,nil,col,set,"HEROIC",TRANSMOG,A(38344),A(38346),A(38351),A(38347),A(38343),A(38340),A(38345),A(38341))
            SetCollector:AddVariant(80000,nil,col,set,"MYTHIC",TRANSMOG,A(38380),A(38382),A(38384),A(38383),A(38379),A(38376),A(38381),A(38377))
    set = SetCollector:AddSet(80000,nil,col,10801,"TR_LEATHER_22",LEATHER,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(38456),A(38458),A(38454),A(38459),A(38455),A(38452),A(38457),A(38453))
            SetCollector:AddVariant(80000,nil,col,set,"NORMAL",TRANSMOG,A(38464),A(38466),A(38462),A(38467),A(38463),A(38460),A(38465),A(38461))
            SetCollector:AddVariant(80000,nil,col,set,"HEROIC",TRANSMOG,A(38326),A(38328),A(38324),A(38329),A(38325),A(38322),A(38327),A(38323))
            SetCollector:AddVariant(80000,nil,col,set,"MYTHIC",TRANSMOG,A(38472),A(38474),A(38470),A(38475),A(38471),A(38468),A(38473),A(38469))
    set = SetCollector:AddSet(80000,nil,col,10801,"TR_MAIL_22",MAIL,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(38288),A(38290),A(38286),A(38291),A(38287),A(38284),A(38289),A(38285))
            SetCollector:AddVariant(80000,nil,col,set,"NORMAL",TRANSMOG,A(38280),A(38282),A(38278),A(38283),A(38279),A(38276),A(38281),A(38277))
            SetCollector:AddVariant(80000,nil,col,set,"HEROIC",TRANSMOG,A(38272),A(38274),A(38270),A(38275),A(38271),A(38268),A(38273),A(38269))
            SetCollector:AddVariant(80000,nil,col,set,"MYTHIC",TRANSMOG,A(38296),A(38298),A(38294),A(38299),A(38295),A(38292),A(38297),A(38293))
    set = SetCollector:AddSet(80000,nil,col,10801,"TR_PLATE_22",PLATE,ANY,ANY,ANY,loc)
            SetCollector:AddVariant(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(38406),A(38408),A(38404),A(38409),A(38405),A(38402),A(38407),A(38403))
            SetCollector:AddVariant(80000,nil,col,set,"NORMAL",TRANSMOG,A(38417),A(38419),A(38415),A(38420),A(38416),A(38413),A(38418),A(38414))
            SetCollector:AddVariant(80000,nil,col,set,"HEROIC",TRANSMOG,A(38395),A(38397),A(38393),A(38398),A(38394),A(38391),A(38396),A(38392))
            SetCollector:AddVariant(80000,nil,col,set,"MYTHIC",TRANSMOG,A(38428),A(38430),A(38426),A(38431),A(38427),A(38424),A(38429),A(38425))
end


local function GetDungeonAppearances()
    local col = SetCollector.DUNGEON
    local set = ""
end


local function GetPvpAppearances()
    local col = SetCollector.PVP
    local set = ""

	--[[set = SetCollector:AddSet(80000,nil,col,240,"PVP_CLOTH_A_24",CLOTH,ANY,ANY,ALLIANCE)
				SetCollector:AddVariant(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25845,73196),A(25847,73166),A(25849,73182),A(25844,73228),A(25846,73200),A(25842,72970))	-- Need belt
	set = SetCollector:AddSet(80000,nil,col,240,"PVP_LEATHER_A_24",LEATHER,ANY,ANY,ALLIANCE)
				SetCollector:AddVariant(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25983,73204),A(25985,73170),A(25981,73184),A(25982,73232),A(25984,73208),A(25979,72978))		-- Need belt
	set = SetCollector:AddSet(80000,nil,col,240,"PVP_MAIL_A_24",MAIL,ANY,ANY,ALLIANCE)
				SetCollector:AddVariant(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25949,73209),A(25950,73171),A(25947,73185),A(25952,73110),A(25948,73233),A(25945,72983),A(25951,73213),A(25946,73079))
	set = SetCollector:AddSet(80000,nil,col,240,"PVP_PLATE_A_24",PLATE,ANY,ANY,ALLIANCE)
				SetCollector:AddVariant(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25933,73220),A(25935,73178),A(25931,73192),A(25932,73240),A(25934,73224),A(25930,72890))		-- Need belt
				
	set = SetCollector:AddSet(80000,nil,col,230,"PVP_CLOTH_A_23",CLOTH,ANY,ANY,ALLIANCE)
				SetCollector:AddVariant(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25845,73196),A(25847,73166),A(25849,73182),A(25844,73228),A(25846,73200),A(25842,72970))	-- Need belt
	set = SetCollector:AddSet(80000,nil,col,230,"PVP_LEATHER_A_23",LEATHER,ANY,ANY,ALLIANCE)
				SetCollector:AddVariant(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25983,73204),A(25985,73170),A(25981,73184),A(25982,73232),A(25984,73208),A(25979,72978))		-- Need belt
	set = SetCollector:AddSet(80000,nil,col,230,"PVP_MAIL_A_23",MAIL,ANY,ANY,ALLIANCE)
				SetCollector:AddVariant(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25949,73209),A(25950,73171),A(25947,73185),A(25952,73110),A(25948,73233),A(25945,72983),A(25951,73213),A(25946,73079))
	set = SetCollector:AddSet(80000,nil,col,230,"PVP_PLATE_A_23",PLATE,ANY,ANY,ALLIANCE)
				SetCollector:AddVariant(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25933,73220),A(25935,73178),A(25931,73192),A(25932,73240),A(25934,73224),A(25930,72890))		-- Need belt

	set = SetCollector:AddSet(80000,nil,col,220,"PVP_CLOTH_A_22",CLOTH,ANY,ANY,ALLIANCE)
				SetCollector:AddVariant(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25845,73196),A(25847,73166),A(25849,73182),A(25844,73228),A(25846,73200),A(25842,72970))	-- Need belt
	set = SetCollector:AddSet(80000,nil,col,220,"PVP_LEATHER_A_22",LEATHER,ANY,ANY,ALLIANCE)
				SetCollector:AddVariant(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25983,73204),A(25985,73170),A(25981,73184),A(25982,73232),A(25984,73208),A(25979,72978))		-- Need belt
	--set = SetCollector:AddSet(80000,nil,col,220,"PVP_MAIL_A_22",MAIL,ANY,ANY,ALLIANCE)
            --SetCollector:AddVariant(80000,nil,col,set,"ASPIRANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
            --SetCollector:AddVariant(80000,nil,col,set,"GLADIATOR",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
	set = SetCollector:AddSet(80000,nil,col,220,"PVP_PLATE_A_22",PLATE,ANY,ANY,ALLIANCE)
				SetCollector:AddVariant(80000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25933,73220),A(25935,73178),A(25931,73192),A(25932,73240),A(25934,73224),A(25930,72890))		-- Need belt]]--
end


--
-- Crafted Appearances are identical to leveling sets
--


local function GetOtherAppearances()
    local col = SetCollector.OTHER
    local set = ""
	
    -- Black Empire Sets (Skip, same as Ny'alotha Raid Finder Set)

    -- Benthic Gear
    set = SetCollector:AddSet(80200,nil,col,1202,"OTH_CLOTH_1202",CLOTH,ANY,ANY,ANY)
            SetCollector:AddVariant(80200,nil,col,set,"BENTHIC",TRANSMOG,A(40596),A(40604),A(40580),A(40612),A(40592),A(40608),A(40600),A(40588))
            SetCollector:AddVariant(80200,nil,col,set,"RECOLOR",TRANSMOG,A(40595),A(40603),A(40579),A(40611),A(40591),A(40607),A(40599),A(40587))
    set = SetCollector:AddSet(80200,nil,col,1202,"OTH_LEATHER_1202",LEATHER,ANY,ANY,ANY)
            SetCollector:AddVariant(80200,nil,col,set,"BENTHIC",TRANSMOG,A(40644),A(40652),A(40624),A(40660),A(40640),A(40656),A(40648),A(40636))
            SetCollector:AddVariant(80200,nil,col,set,"RECOLOR",TRANSMOG,A(40643),A(40651),A(40623),A(40659),A(40639),A(40655),A(40647),A(40635))
    set = SetCollector:AddSet(80200,nil,col,1202,"OTH_MAIL_1202",MAIL,ANY,ANY,ANY)
            SetCollector:AddVariant(80200,nil,col,set,"BENTHIC",TRANSMOG,A(40683),A(40691),A(40663),A(40699),A(40679),A(40695),A(40687),A(40675))
            SetCollector:AddVariant(80200,nil,col,set,"RECOLOR",TRANSMOG,A(40684),A(40692),A(40664),A(40700),A(40680),A(40696),A(40688),A(40676))
    set = SetCollector:AddSet(80200,nil,col,1202,"OTH_PLATE_1202",PLATE,ANY,ANY,ANY)
			SetCollector:AddVariant(80200,nil,col,set,"BENTHIC",TRANSMOG,A(40565),A(40557),A(40541),A(40569),A(40549),A(40561),A(40553),A(40545))
			SetCollector:AddVariant(80200,nil,col,set,"RECOLOR",TRANSMOG,A(40564),A(40556),A(40540),A(40568),A(40548),A(40560),A(40552),A(40544))

    -- Kul'Tiran Leveling Sets
    set = SetCollector:AddSet(80000,nil,col,1101,"OTH_CLOTH_A_110",CLOTH,ANY,ANY,ANY)
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_A_1",TRANSMOG,A(35986),A(35988),A(35984),A(35989),A(35985),A(35982),A(35987),A(35983)) -- Stormsong
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_A_2",TRANSMOG,A(35994),A(35996),A(35992),A(35997),A(35993),A(35990),A(35995),A(35991)) -- Tiragarde Sound
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_A_3",TRANSMOG,A(35978),A(35980),A(35976),A(35981),A(35977),A(35974),A(35979),A(35975)) -- Drustvar
    set = SetCollector:AddSet(80000,nil,col,1101,"OTH_LEATHER_A_110",LEATHER,ANY,ANY,ANY)
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_A_1",TRANSMOG,A(36281),A(36283),A(36279),A(36284),A(36280),A(36277),A(36282),A(36278))
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_A_2",TRANSMOG,A(36289),A(36291),A(36287),A(36292),A(36288),A(36285),A(36290),A(36286))
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_A_3",TRANSMOG,A(36273),A(36275),A(36271),A(36276),A(36272),A(36269),A(36274),A(36270))
    set = SetCollector:AddSet(80000,nil,col,1101,"OTH_MAIL_A_110",MAIL,ANY,ANY,ANY)
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_A_1",TRANSMOG,A(36063),A(36065),A(36061),A(36066),A(36062),A(36059),A(36064),A(36060))
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_A_2",TRANSMOG,A(36073),A(36075),A(36071),A(36076),A(36072),A(36069),A(36074),A(36070))
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_A_3",TRANSMOG,A(36081),A(36083),A(36079),A(36084),A(36080),A(36077),A(36082),A(36078))
    set = SetCollector:AddSet(80000,nil,col,1101,"OTH_PLATE_A_110",PLATE,ANY,ANY,ANY)
            SetCollector:AddVariant(80300,nil,col,set,"ZONE_A_1",TRANSMOG,A(36175),A(36177),A(36173),A(36178),A(36174),A(36171),A(36176),A(36172))
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_A_2",TRANSMOG,A(36167),A(36169),A(36165),A(36170),A(36189),A(36163),A(36168),A(36164))
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_A_3",TRANSMOG,A(36159),A(36161),A(36157),A(36162),A(36158),A(36155),A(36160),A(36156))
    -- Zandalar Leveling Sets
    set = SetCollector:AddSet(80000,nil,col,1102,"OTH_CLOTH_H_110",CLOTH,ANY,ANY,ANY)
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_H_1",TRANSMOG,A(36317),A(36359),A(36356),A(36357),A(36355),A(36353),A(36352),A(36354)) -- Vol'dun
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_H_2",TRANSMOG,A(36358),A(36322),A(36318),A(36323),A(36324),A(36319),A(36320),A(36321)) -- Nazmir
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_H_3",TRANSMOG,A(36363),A(36366),A(36365),A(36367),A(36362),A(36360),A(36364),A(36361)) -- Zuldazar
    set = SetCollector:AddSet(80000,nil,col,1102,"OTH_LEATHER_H_110",LEATHER,ANY,ANY,ANY)
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_H_1",TRANSMOG,A(35938),A(35940),A(35936),A(35941),A(35937),A(35934),A(35939),A(35935))
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_H_2",TRANSMOG,A(35960),A(35962),A(35958),A(35963),A(35959),A(35956),A(35961),A(35957))
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_H_3",TRANSMOG,A(35951),A(35953),A(35949),A(35954),A(35950),A(35947),A(35952),A(35948))
    set = SetCollector:AddSet(80000,nil,col,1102,"OTH_MAIL_H_110",MAIL,ANY,ANY,ANY)
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_H_1",TRANSMOG,A(36013),A(36015),A(36011),A(36016),A(36012),A(36009),A(36014),A(36010))
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_H_2",TRANSMOG,A(36029),A(36031),A(36027),A(36032),A(36028),A(36025),A(36030),A(36026))
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_H_3",TRANSMOG,A(36021),A(36023),A(36372),A(36024),A(36020),A(36017),A(36022),A(36018))
    set = SetCollector:AddSet(80000,nil,col,1102,"OTH_PLATE_H_110",PLATE,ANY,ANY,ANY)
            SetCollector:AddVariant(80300,nil,col,set,"ZONE_H_1",TRANSMOG,A(36047),A(36049),A(36045),A(36050),A(36046),A(36043),A(36048),A(36044))
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_H_2",TRANSMOG,A(36037),A(36039),A(36035),A(36040),A(36036),A(36033),A(36038),A(36034))
            SetCollector:AddVariant(80000,nil,col,set,"ZONE_H_3",TRANSMOG,A(36055),A(36057),A(36053),A(36058),A(36054),A(36051),A(36056),A(36052))
    end

--
--	GLOBAL FUNCTIONS
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