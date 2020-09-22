-- Appearances from Shadowlands (v.9.x)

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

-- Collection Types
local OUTFITS        = SetCollector.OUTFITS
local ARTIFACT       = SetCollector.ARTIFACT
local LEGENDARY      = SetCollector.LEGENDARY
local RAID           = SetCollector.RAID
local DUNGEON        = SetCollector.DUNGEON
local CHALLENGE      = SetCollector.CHALLENGE
local PVP            = SetCollector.PVP
local EXPANSION      = SetCollector.EXPANSION
local CRAFTED        = SetCollector.CRAFTED
local OTHER          = SetCollector.OTHER
local CUSTOM         = SetCollector.CUSTOM
local HOLIDAY        = SetCollector.HOLIDAY

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
local function CreateSet(...) return SetCollector:CreateSet(...) end
local function CreateVariant(...) return SetCollector:CreateVariant(...) end
local function AddVariantToSet(...) return SetCollector:AddVariantToSet(...) end
local function AddSetToDatabase(...) return SetCollector:AddSetToDatabase(...) end
local function AddSetsToDatabase(...) return SetCollector:AddSetsToDatabase(...) end

local function GetLegendaryAppearances()
    local col, version = SetCollector.LEGENDARY, 90000
    
    local set01 = CreateSet(col, 10901, "LG_CLOTH_0901", CLOTH, ANY, ANY)
    AddVariantToSet(set01, CreateVariant("LG_CLOTH_0901",TRANSMOG,A(43079,107406),A(43154,107408),A(43165,107402),A(42984,107410),A(42979,107405),A(43803,107409),A(42981,107407),A(42978,107404)))
    local set02 = CreateSet(col, 10901, "LG_LEATHER_0901", LEATHER, ANY, ANY)
    AddVariantToSet(set02, CreateVariant("LG_LEATHER_0901",TRANSMOG,A(44174,106648),A(44176,106650),A(44171,106645),A(44178,106652),A(44173,106647),A(44177,106651),A(44175,106649),A(44172,106646)))
    local set03 = CreateSet(col, 10901, "LG_MAIL_0901", MAIL, ANY, ANY)
    AddVariantToSet(set03, CreateVariant("LG_MAIL_0901",TRANSMOG,A(43090,106696),A(43089,106698),A(43080,106693),A(43088,106700),A(43083,106695),A(43087,106699),A(43085,106697),A(43082,106694)))
    local set04 = CreateSet(col, 10901, "LG_PLATE_0901", PLATE, ANY, ANY)
    AddVariantToSet(set04, CreateVariant("LG_PLATE_0901",TRANSMOG,A(42829,106001),A(42823,106003),A(42760,105998),A(42808,106005),A(42835,106000),A(42818,106004),A(42790,106002),A(42841,105999)))
    AddSetsToDatabase(version, col, set01, set02, set03, set04)
end

local function GetRaidAppearances()
    local col = SetCollector.RAID
    local set, loc = ""
        
    -- Castle Nathria
    loc = "LOC_RAID_0901"
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"TR_CLOTH_26",CLOTH,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RAIDFINDER",TRANSMOG,A(44035),A(44037),A(44031),A(44039),A(44034),A(44038),A(44036),A(44033))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"NORMAL",TRANSMOG,A(44024),A(44026),A(44020),A(44028),A(44023),A(44027),A(44025),A(44022))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"HEROIC",TRANSMOG,A(44002),A(44004),A(43998),A(44006),A(44001),A(44005),A(44003),A(44000))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"MYTHIC",TRANSMOG,A(43845),A(43846),A(43836),A(43844),A(43838),A(43843),A(43840),A(43837))
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"TR_LEATHER_26",LEATHER,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RAIDFINDER",TRANSMOG,A(44096),A(44121),A(44094),A(44099),A(44124),A(44098),A(44097),A(44095))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"NORMAL",TRANSMOG,A(44075),A(44077),A(44072),A(44079),A(44074),A(44078),A(44076),A(44073))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"HEROIC",TRANSMOG,A(44105),A(44122),A(44103),A(44108),A(44125),A(44107),A(44106),A(44104))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"MYTHIC",TRANSMOG,A(43884),A(43883),A(43853),A(43860),A(43855),A(43859),A(43857),A(43854))
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"TR_MAIL_26",MAIL,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RAIDFINDER",TRANSMOG,A(43977),A(43978),A(43973),A(43981),A(43976),A(43979),A(43982),A(43975))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"NORMAL",TRANSMOG,A(43989),A(43990),A(43985),A(43993),A(43988),A(43991),A(43994),A(43987))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"HEROIC",TRANSMOG,A(43965),A(43966),A(43961),A(43969),A(43964),A(43967),A(43970),A(43963))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"MYTHIC",TRANSMOG,A(43948),A(43947),A(43937),A(43945),A(43940),A(43943),A(43946),A(43939))
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"TR_PLATE_26",PLATE,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RAIDFINDER",TRANSMOG,A(43910,115242),A(43912,115239),A(43907,115245),A(43914,115266),A(43909,115251),A(43913,115260),A(43911,115248),A(43908,115263))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"NORMAL",TRANSMOG,A(43920,115404),A(43922,114507),A(43917,114512),A(43924,115416),A(43919,115448),A(43923,115428),A(43921,114515),A(43918,115432))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"HEROIC",TRANSMOG,A(43890,115243),A(43892,115240),A(43887,115246),A(43894,115267),A(43889,115252),A(43893,115261),A(43891,115249),A(43888,115264))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"MYTHIC",TRANSMOG,A(43880,115244),A(43879,115241),A(43871,115247),A(43878,115268),A(43873,115253),A(43877,115262),A(43875,115250),A(43872,115265))
end

local function GetCraftedAppearances()
    local col = SetCollector.CRAFTED
    local set = ""
        
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"CR_CLOTH_0901",CLOTH,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CR_CLOTH_0901",TRANSMOG,A(42985,107361),A(41987,107363),A(41980,107357),A(41989,107365),A(41984,107360),A(41988,107364),A(41986,107362),A(41983,107359))
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"CR_LEATHER_0901",LEATHER,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CR_LEATHER_0901",TRANSMOG,A(42262,106608),A(42166,106610),A(42161,106739),A(42168,106612),A(42164,106607),A(42167,106611),A(42165,106609),A(42163,106588))
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"CR_MAIL_0901",MAIL,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CR_MAIL_0901",TRANSMOG,A(42440,106656),A(42450,106658),A(42420,106653),A(42460,106660),A(42435,106655),A(42455,106659),A(42445,106657),A(42430,106654))
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"CR_PLATE_0901",PLATE,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CR_PLATE_0901",TRANSMOG,A(42044,105963),A(42046,105965),A(42040,105960),A(42048,105967),A(42043,105962),A(42047,105966),A(42045,105964),A(42042,105961))
end

local function GetDungeonAppearances()
    local col = SetCollector.DUNGEON
    local set, loc = ""
        
    -- De Other Side/Mists of Tirna Scithe
    loc = "LOC_DG_0901"
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"DG_CLOTH_0901",CLOTH,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"1",TRANSMOG,A(42610,111439),A(42612,111440),A(42606,111654),A(42614,111441),A(42609,111442),A(42613,111660),A(42611,111667),A(42608,111643)) 
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"DG_LEATHER_0901",LEATHER,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"1",TRANSMOG,A(42684,111579),A(42686,111661),A(42680,111580),A(42688,111582),A(42683,111655),A(42687,111581),A(42685,111645),A(42682,111668))
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"DG_MAIL_0901",MAIL,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"1",TRANSMOG,A(),A(41914,111444),A(41908,111669),A(41916,111446),A(41911,111646),A(41915,111445),A(41913,111656),A(41910,111662))
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"DG_PLATE_0901",PLATE,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"1",TRANSMOG,A(),A(42218,111448),A(42220,111663),A(42224,111670),A(42221,111450),A(42222,111647),A(42223,111449),A(42219,111657))

    -- Halls of Atonement/Sanguine Depths
    loc = "LOC_DG_0902"
    set = SetCollector:AddSetLegacy(90000,nil,col,10902,"DG_CLOTH_0901",CLOTH,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"2",TRANSMOG,A(42601,111557),A(42603,111556),A(42597,111517),A(42605,111544),A(42600,111533),A(42604,111526),A(42602,111538),A(42599,111531)) 
    set = SetCollector:AddSetLegacy(90000,nil,col,10902,"DG_LEATHER_0901",LEATHER,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"2",TRANSMOG,A(42693,111521),A(42695,111555),A(42689,111535),A(42697,111547),A(42692,111532),A(42696,111527),A(42694,111523),A(42691,111537))
    set = SetCollector:AddSetLegacy(90000,nil,col,10902,"DG_MAIL_0901",MAIL,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"2",TRANSMOG,A(41930,111520),A(41932,111525),A(41926,111519),A(41934,111546),A(41929,111541),A(41933,111543),A(41931,111539),A(41928,111530))
    set = SetCollector:AddSetLegacy(90000,nil,col,10902,"DG_PLATE_0901",PLATE,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"2",TRANSMOG,A(42235,111516),A(42236,111524),A(42238,111518),A(42242,111545),A(42239,111540),A(42240,111542),A(42241,111522),A(42237,111536))
        
    -- Plaguefall/Theater of Pain
    loc = "LOC_DG_0903"
    set = SetCollector:AddSetLegacy(90000,nil,col,10903,"DG_CLOTH_0901",CLOTH,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(42619,111481),A(42621,111511),A(42615,111500),A(42623,111514),A(42618,111585),A(42622,111512),A(42620,111483),A(42617,111478))
    set = SetCollector:AddSetLegacy(90000,nil,col,10903,"DG_LEATHER_0901",LEATHER,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(42711,111482),A(42713,111485),A(42707,111503),A(42715,111588),A(42710,111479),A(42714,111513),A(42712,111509),A(42709,111505))
    set = SetCollector:AddSetLegacy(90000,nil,col,10903,"DG_MAIL_0901",MAIL,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(41897,111507),A(41899,111486),A(41894,111502),A(41901,111488),A(41896,111506),A(41900,111587),A(41898,111484),A(41895,111504))
    set = SetCollector:AddSetLegacy(90000,nil,col,10903,"DG_PLATE_0901",PLATE,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(42067,111490),A(42068,111510),A(42210,111501),A(42214,111515),A(42211,111492),A(42212,111586),A(42213,111508),A(42209,111491))
    
    -- Spires of Ascension/The Necrotic Wake
    loc = "LOC_DG_0904"
    set = SetCollector:AddSetLegacy(90000,nil,col,10904,"DG_CLOTH_0901",CLOTH,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(42628,111458),A(42630,111465),A(42624,112875),A(42632,111498),A(42627,111471),A(42631,112886),A(42629,112884),A(42626,112879))
    set = SetCollector:AddSetLegacy(90000,nil,col,10904,"DG_LEATHER_0901",LEATHER,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(42720,112883),A(42722,111496),A(42716,111468),A(42724,111466),A(42719,112880),A(42723,112888),A(42721,112885),A(42718,111457))
    set = SetCollector:AddSetLegacy(90000,nil,col,10904,"DG_MAIL_0901",MAIL,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(41939,111463),A(41941,111459),A(41935,112877),A(41943,112891),A(41938,112882),A(41942,112887),A(41940,111495),A(41937,111469))
    set = SetCollector:AddSetLegacy(90000,nil,col,10904,"DG_PLATE_0901",PLATE,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(42244,111494),A(42245,111472),A(42247,112876),A(42251,112890),A(42248,112881),A(42249,111460),A(42250,111464),A(42246,112878))
end

local function GetPvPAppearances()
    local col = SetCollector.PVP
    local set, loc = ""
    
    -- Season 1
    loc = "LOC_PVP_0901"
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"PVP_CLOTH_0901",CLOTH,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"ASPIRANT",TRANSMOG,A(42592,109374),A(42594,109383),A(42588,109362),A(42956,109389),A(42591,109372),A(42595,109386),A(42593,109378),A(42590,109367))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"GLADIATOR",TRANSMOG,A(44013,109407),A(44015,109416),A(44009,109395),A(44017,109422),A(44012,109405),A(44016,109419),A(44014,109411),A(44011,109400))
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"PVP_LEATHER_0901",LEATHER,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"ASPIRANT",TRANSMOG,A(42702,109376),A(42704,109381),A(42698,109365),A(42706,109392),A(42701,109370),A(42705,109388),A(42703,109380),A(42700,109369))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"GLADIATOR",TRANSMOG,A(4414,109409),A(44123,109414),A(44112,109398),A(44117,109425),A(44126,109403),A(44116,109421),A(44115,109413),A(44113,109402))
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"PVP_MAIL_0901",MAIL,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"ASPIRANT",TRANSMOG,A(41921,109375),A(41923,109384),A(41917,109364),A(41925,109391),A(41920,109373),A(41924,109387),A(41922,109379),A(41919,109368))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"GLADIATOR",TRANSMOG,A(43953,109408),A(43954,109417),A(43949,109397),A(43957,109424),A(43952,109406),A(43955,109420),A(43958,109412),A(43951,109401))
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"PVP_PLATE_0901",PLATE,ANY,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"ASPIRANT",TRANSMOG,A(42226,109360),A(42227,109382),A(42229,109363),A(42233,109390),A(42230,109371),A(42231,109385),A(42232,109377),A(42228,109366))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"GLADIATOR",TRANSMOG,A(43936,109393),A(43935,109415),A(43927,109396),A(43934,109423),A(43929,109404),A(43933,109418),A(43931,109410),A(43928,109399))
end

local function GetExpansionAppearances()
    local col = SetCollector.EXPANSION
    local set = ""

    -- Covenants
    -- Kyrian
    set = SetCollector:AddSetLegacy(90000,nil,col,10904,"EX_CLOTH_0904",CLOTH,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(),A(),A(),A(42464,111107),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSetLegacy(90000,nil,col,10904,"EX_LEATHER_0904",LEATHER,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSetLegacy(90000,nil,col,10904,"EX_MAIL_0904",MAIL,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(41374,108551),A(),A(),A(42911,112709),A(),A(42917,112711),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(42913,112760),A(42919,112762),A(42901,112757),A(42925,112764),A(42910,112759),A(42922,112763),A(42916,112761),A(42907,112758))
    set = SetCollector:AddSetLegacy(90000,nil,col,10904,"EX_PLATE_0904",PLATE,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(),A(),A(),A(41380,108546),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    -- Venthyr
    set = SetCollector:AddSetLegacy(90000,nil,col,10903,"EX_CLOTH_0903",CLOTH,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(42110,113421),A(42112,113423),A(42105,113418),A(42114,113425),A(42109,113420),A(42113,113424),A(42111,113422),A(42108,113419))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSetLegacy(90000,nil,col,10903,"EX_LEATHER_0903",LEATHER,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(42073,113367),A(42075,113369),A(42069,113364),A(42077,113371),A(42072,113366),A(42076,113370),A(42074,113368),A(42071,113365))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSetLegacy(90000,nil,col,10903,"EX_MAIL_0903",MAIL,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(42966,113394),A(42968,113396),A(42962,113391),A(42970,113398),A(42965,113393),A(42969,113397),A(42967,113395),A(42964,113392))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSetLegacy(90000,nil,col,10903,"EX_PLATE_0903",PLATE,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(41469,113325),A(41475,113330),A(41457,113326),A(41481,113332),A(41466,113328),A(41478,113331),A(41472,113329),A(41463,113327))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    -- Necrolord
    set = SetCollector:AddSetLegacy(90000,nil,col,10902,"EX_CLOTH_0902",CLOTH,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(42392,113951),A(42400,113976),A(42376,113956),A(42408,113986),A(42388,113966),A(42404,113981),A(42396,113971),A(42384,113961))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSetLegacy(90000,nil,col,10902,"EX_LEATHER_0902",LEATHER,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(41650,113906),A(41658,113931),A(41634,113911),A(41662,113941),A(41646,113921),A(41667,113936),A(41654,113926),A(41642,113916))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSetLegacy(90000,nil,col,10902,"EX_MAIL_0902",MAIL,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(42334,113996),A(42342,114021),A(42318,114001),A(42350,114031),A(42330,114011),A(42346,114026),A(42338,114016),A(42326,114006))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSetLegacy(90000,nil,col,10902,"EX_PLATE_0902",PLATE,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(41431,113861),A(41437,113886),A(41421,113866),A(41443,113896),A(41428,113876),A(41440,113891),A(41434,113881),A(41422,113871))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    -- Nightfae
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"EX_CLOTH_0901",CLOTH,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(41879,112449),A(41876,112455),A(41877,112436),A(41874,112461),A(41880,112446),A(41875,112458),A(41878,112452),A(41881,112443)) --41883,112440 Chest alternate
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"EX_LEATHER_0901",LEATHER,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(41838,112568),A(41841,112577),A(41840,112574),A(41843,112583),A(41837,112565),A(41842,112580),A(41839,112571),A(41836,112562))    -- 41834,112556
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"EX_MAIL_0901",MAIL,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(43223,113825),A(43226,113823),A(43225,113837),A(43228,113821),A(43222,113826),A(43227,113822),A(73224,113824),A(43221,113827))    -- 43219,113828
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSetLegacy(90000,nil,col,10901,"EX_PLATE_0901",PLATE,ANY,ANY,ANY)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"CAMPAIGN",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"RENOWN",TRANSMOG,A(41261,112685),A(41270,112683),A(41285,112688),A(41264,112681),A(41276,112686),A(41267,112682),A(41273,112684),A(41279,112687))
        SetCollector:AddVariantLegacy(90000,nil,col,set,"3",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
        SetCollector:AddVariantLegacy(90000,nil,col,set,"4",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    
    -- Pre-patch Set
    set = SetCollector:AddSetLegacy(90000,nil,col,10900,"EX_CLOTH_A_0900",CLOTH,ANY,ANY,ALLIANCE)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"EX_CLOTH_A_0900",TRANSMOG,A(37358,114695),A(37230,114692),A(37227,114629),A(37202,114632),A(37200,114653),A(37204,114698),A(37226,114701),A(27205,114644),A(37199,114638))
    set = SetCollector:AddSetLegacy(90000,nil,col,10900,"EX_LEATHER_A_0900",LEATHER,ANY,ANY,ALLIANCE)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"EX_LEATHER_A_0900",TRANSMOG,A(36816,114728),A(36818,114725),A(36813,114704),A(36814,114635),A(36812,114659),A(36815,114641),A(36810,114734),A(36817,114650),A(36811,114731))
    set = SetCollector:AddSetLegacy(90000,nil,col,10900,"EX_MAIL_A_0900",MAIL,ANY,ANY,ALLIANCE)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"EX_MAIL_A_0900",TRANSMOG,A(37262,114740),A(37265,114737),A(37260,114707),A(37259,114746),A(37256,114656),A(37261,114743),A(37257,114752),A(27263,114647),A(27258,114749))
    set = SetCollector:AddSetLegacy(90000,nil,col,10900,"EX_PLATE_A_0900",PLATE,ANY,ANY,ALLIANCE)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"EX_PLATE_A_0900",TRANSMOG,A(37802,114764),A(37804,114758),A(37855,114710),A(37800,114770),A(37805,114755),A(37801,114767),A(37798,114776),A(37803,114761),A(37799,114773))

    set = SetCollector:AddSetLegacy(90000,nil,col,10900,"EX_CLOTH_H_0900",CLOTH,ANY,ANY,HORDE)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"EX_CLOTH_H_0900",TRANSMOG,A(36756,114782),A(36760,114779),A(36958,114713),A(36754,114662),A(36770,114680),A(37071,114785),A(36745,114788),A(36783,114674),A(36767,114671))
    set = SetCollector:AddSetLegacy(90000,nil,col,10900,"EX_LEATHER_H_0900",LEATHER,ANY,ANY,HORDE)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"EX_LEATHER_H_0900",TRANSMOG,A(37424,114794),A(37425,114791),A(36794,114716),A(37396,114668),A(37401,114689),A(37423,114797),A(37421,114803),A(37379,114677),A(37422,114800))
    set = SetCollector:AddSetLegacy(90000,nil,col,10900,"EX_MAIL_H_0900",MAIL,ANY,ANY,HORDE)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"EX_MAIL_H_0900",TRANSMOG,A(38075,114812),A(38077,114806),A(36794,114719),A(38013,114665),A(38078,114686),A(38074,114815),A(38071,114821),A(38076,114810),A(38072,114818))
    set = SetCollector:AddSetLegacy(90000,nil,col,10900,"EX_PLATE_H_0900",PLATE,ANY,ANY,HORDE)
        SetCollector:AddVariantLegacy(90000,nil,col,set,"EX_PLATE_H_0900",TRANSMOG,A(36850,114830),A(36808,114824),A(38337,114722),A(36849,114836),A(36793,114683),A(37082,114833),A(36847,114842),A(37094,114827),A(36848,114839))
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
    end
end

function SetCollector:GetVersion09Status()
    return SetCollector:GetExpansionStatus("9")
end

function SetCollector:SetVersion09Status()
    SetCollector:SetExpansionStatus("9")
end