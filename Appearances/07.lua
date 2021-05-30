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
local NO_OBTAIN         = SetCollector.NO_OBTAIN

-- Useable as Transmog
local TRANSMOG         = SetCollector.TRANSMOG
local NO_TRANSMOG     = SetCollector.NO_TRANSMOG

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

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 70000
    local sets = {
        -- Time Keeper
        IncludeSet(COLLECTION,10703,1457,CLOTH,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10703,1459,LEATHER,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10703,1458,MAIL,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10703,1456,PLATE,ANY_CLASS,ANY_FACTION),
        -- Seat of the Triumvirate
        IncludeSet(COLLECTION,10704,1471,CLOTH,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10704,1470,LEATHER,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10704,1469,MAIL,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10704,1468,PLATE,ANY_CLASS,ANY_FACTION),
        -- Test Sets
        --[[IncludeSet(COLLECTION,10710,1471,ANY_ARMOR,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10711,1470,ANY_ARMOR,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10712,1469,ANY_ARMOR,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10713,1468,ANY_ARMOR,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10714,1459,ANY_ARMOR,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10715,1458,ANY_ARMOR,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10716,1457,ANY_ARMOR,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10717,1456,ANY_ARMOR,ANY_CLASS,ANY_FACTION),]]
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 70000
    local sets = {
        -- Seasons 1 & 2
        -- Alliance
        IncludeSet(COLLECTION,10701,1106,PLATE,DEATHKNIGHT,ALLIANCE,1108,1163),
        IncludeSet(COLLECTION,10701,1110,LEATHER,DEMONHUNTER,ALLIANCE,1112,1167),
        IncludeSet(COLLECTION,10701,1098,LEATHER,DRUID,ALLIANCE,1100,1168),
        IncludeSet(COLLECTION,10701,1113,MAIL,HUNTER,ALLIANCE,409,1115),
        IncludeSet(COLLECTION,10701,1094,CLOTH,MAGE,ALLIANCE,1096,1137),
        IncludeSet(COLLECTION,10701,1117,LEATHER,MONK,ALLIANCE,1119,1169),
        IncludeSet(COLLECTION,10701,1121,PLATE,PALADIN,ALLIANCE,1123,1164),
        IncludeSet(COLLECTION,10701,388,CLOTH,PRIEST,ALLIANCE,392,1071),
        IncludeSet(COLLECTION,10701,1068,LEATHER,ROGUE,ALLIANCE,1125,1127),
        IncludeSet(COLLECTION,10701,1129,MAIL,SHAMAN,ALLIANCE,1131,1161),
        IncludeSet(COLLECTION,10701,1101,CLOTH,WARLOCK,ALLIANCE,1103,1158),
        IncludeSet(COLLECTION,10701,1133,PLATE,WARRIOR,ALLIANCE,1070,1135),
        -- Horde
        IncludeSet(COLLECTION,10701,1105,PLATE,DEATHKNIGHT,HORDE,1107,1165),
        IncludeSet(COLLECTION,10701,1109,LEATHER,DEMONHUNTER,HORDE,1111,1170),
        IncludeSet(COLLECTION,10701,1097,LEATHER,DRUID,HORDE,1099,1171),
        IncludeSet(COLLECTION,10701,1114,MAIL,HUNTER,HORDE,410,1116),
        IncludeSet(COLLECTION,10701,1093,CLOTH,MAGE,HORDE,1095,1159),
        IncludeSet(COLLECTION,10701,1118,LEATHER,MONK,HORDE,1120,1172),
        IncludeSet(COLLECTION,10701,1122,PLATE,PALADIN,HORDE,1124,1166),
        IncludeSet(COLLECTION,10701,390,CLOTH,PRIEST,HORDE,393,1072),
        IncludeSet(COLLECTION,10701,1126,LEATHER,ROGUE,HORDE,1067,1128),
        IncludeSet(COLLECTION,10701,1130,MAIL,SHAMAN,HORDE,1132,1162),
        IncludeSet(COLLECTION,10701,1102,CLOTH,WARLOCK,HORDE,1104,1160),
        IncludeSet(COLLECTION,10701,1134,PLATE,WARRIOR,HORDE,1069,1136),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    --[[local sets = {
        -- Seasons 3 & 4
        -- Alliance
        IncludeSet(COLLECTION,10701,1129,MAIL,SHAMAN,ALLIANCE,1131,1161),
        -- Horde
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    local sets = {
        -- Seasons 5, 6 & 7
        -- Alliance
        IncludeSet(COLLECTION,10701,1129,MAIL,SHAMAN,ALLIANCE,1131,1161),
        -- Horde
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)]]
end

local function GetRaidAppearances()
    
    local COLLECTION, VERSION = SetCollector.RAID, 70000

    -- The Nighthold
    VERSION = 70000
    local sets = {
        IncludeSet(COLLECTION,10701,1002,PLATE,DEATHKNIGHT,ANY_FACTION,1003,1004,1005),
        IncludeSet(COLLECTION,10701,998,LEATHER,DEMONHUNTER,ANY_FACTION,999,1000,1001),
        IncludeSet(COLLECTION,10701,994,LEATHER,DRUID,ANY_FACTION,995,996,997),
        IncludeSet(COLLECTION,10701,990,MAIL,HUNTER,ANY_FACTION,991,992,993),
        IncludeSet(COLLECTION,10701,986,CLOTH,MAGE,ANY_FACTION,987,988,989),
        IncludeSet(COLLECTION,10701,982,LEATHER,MONK,ANY_FACTION,983,984,985),
        IncludeSet(COLLECTION,10701,978,PLATE,PALADIN,ANY_FACTION,979,980,981),
        IncludeSet(COLLECTION,10701,308,CLOTH,PRIEST,ANY_FACTION,309,311,322),
        IncludeSet(COLLECTION,10701,942,LEATHER,ROGUE,ANY_FACTION,943,944,945),
        IncludeSet(COLLECTION,10701,933,MAIL,SHAMAN,ANY_FACTION,934,935,936),
        IncludeSet(COLLECTION,10701,315,CLOTH,WARLOCK,ANY_FACTION,316,321,941),
        IncludeSet(COLLECTION,10701,937,PLATE,WARRIOR,ANY_FACTION,938,939,940),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    -- Tomb of Sargeras
    VERSION = 70200
    local sets = {
        IncludeSet(COLLECTION,10702,1337,PLATE,DEATHKNIGHT,ANY_FACTION,1338,1339,1340),
        IncludeSet(COLLECTION,10702,1333,LEATHER,DEMONHUNTER,ANY_FACTION,1334,1335,1336),
        IncludeSet(COLLECTION,10702,1329,LEATHER,DRUID,ANY_FACTION,1330,1331,1332),
        IncludeSet(COLLECTION,10702,1325,MAIL,HUNTER,ANY_FACTION,1326,1327,1328),
        IncludeSet(COLLECTION,10702,1321,CLOTH,MAGE,ANY_FACTION,1322,1323,1324),
        IncludeSet(COLLECTION,10702,1317,LEATHER,MONK,ANY_FACTION,1318,1319,1320),
        IncludeSet(COLLECTION,10702,1313,PLATE,PALADIN,ANY_FACTION,1314,1315,1316),
        IncludeSet(COLLECTION,10702,1309,CLOTH,PRIEST,ANY_FACTION,1310,1312,1342),
        IncludeSet(COLLECTION,10702,1305,LEATHER,ROGUE,ANY_FACTION,1306,1307,1308),
        IncludeSet(COLLECTION,10702,1301,MAIL,SHAMAN,ANY_FACTION,1302,1303,1304),
        IncludeSet(COLLECTION,10702,1297,CLOTH,WARLOCK,ANY_FACTION,1298,1299,1300),
        IncludeSet(COLLECTION,10702,1293,PLATE,WARRIOR,ANY_FACTION,1294,1295,1296),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    -- Antorus, the Burning Throne
    VERSION = 70300
    local sets = {
        IncludeSet(COLLECTION,10703,1472,PLATE,DEATHKNIGHT,ANY_FACTION,1473,1474,1475),
        IncludeSet(COLLECTION,10703,1476,LEATHER,DEMONHUNTER,ANY_FACTION,1477,1478,1479),
        IncludeSet(COLLECTION,10703,1480,LEATHER,DRUID,ANY_FACTION,1481,1482,1483),
        IncludeSet(COLLECTION,10703,1484,MAIL,HUNTER,ANY_FACTION,1485,1486,1487),
        IncludeSet(COLLECTION,10703,1488,CLOTH,MAGE,ANY_FACTION,1489,1490,1491),
        IncludeSet(COLLECTION,10703,1492,LEATHER,MONK,ANY_FACTION,1493,1494,1495),
        IncludeSet(COLLECTION,10703,1496,PLATE,PALADIN,ANY_FACTION,1497,1498,1499),
        IncludeSet(COLLECTION,10703,1500,CLOTH,PRIEST,ANY_FACTION,1501,1502,1503),
        IncludeSet(COLLECTION,10703,1504,LEATHER,ROGUE,ANY_FACTION,1505,1506,1507),
        IncludeSet(COLLECTION,10703,1508,MAIL,SHAMAN,ANY_FACTION,1509,1510,1511),
        IncludeSet(COLLECTION,10703,1512,CLOTH,WARLOCK,ANY_FACTION,1513,1514,1515),
        IncludeSet(COLLECTION,10703,1516,PLATE,WARRIOR,ANY_FACTION,1517,1518,1519),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion07Appearances(expansion)
    if expansion.v07 then
        -- Common
        GetLegendaries()
        GetExpansionAppearances()
        GetOtherAppearances()
        GetPvPAppearances()
        GetRaidAppearances()
    end
end


function SetCollector:GetVersion07Status()
    return SetCollector:GetExpansionStatus("7")
end


function SetCollector:SetVersion07Status()
    SetCollector:SetExpansionStatus("7")
end