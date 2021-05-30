-- Appearances from Warlords of Draenor (v.6.x)

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

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 70000
    -- Season 1
    local sets = {
        -- Alliance
        IncludeSet(COLLECTION,10601,128,PLATE,DEATHKNIGHT,ALLIANCE,68,1138),
        IncludeSet(COLLECTION,10601,126,LEATHER,DRUID,ALLIANCE,62,1140),
        IncludeSet(COLLECTION,10601,124,MAIL,HUNTER,ALLIANCE,58,1142),
        IncludeSet(COLLECTION,10601,144,CLOTH,MAGE,ALLIANCE,78,1144),
        IncludeSet(COLLECTION,10601,132,LEATHER,MONK,ALLIANCE,66,1146),
        IncludeSet(COLLECTION,10601,142,PLATE,PALADIN,ALLIANCE,70,1148),
        IncludeSet(COLLECTION,10601,140,CLOTH,PRIEST,ALLIANCE,76,403),
        IncludeSet(COLLECTION,10601,134,LEATHER,ROGUE,ALLIANCE,64,1150),
        IncludeSet(COLLECTION,10601,138,MAIL,SHAMAN,ALLIANCE,60,1152),
        IncludeSet(COLLECTION,10601,130,CLOTH,WARLOCK,ALLIANCE,74,1154),
        IncludeSet(COLLECTION,10601,136,PLATE,WARRIOR,ALLIANCE,72,1156),
        -- Horde
        IncludeSet(COLLECTION,10601,127,PLATE,DEATHKNIGHT,HORDE,67,1139),
        IncludeSet(COLLECTION,10601,125,LEATHER,DRUID,HORDE,61,1141),
        IncludeSet(COLLECTION,10601,123,MAIL,HUNTER,HORDE,57,1143),
        IncludeSet(COLLECTION,10601,143,CLOTH,MAGE,HORDE,77,1145),
        IncludeSet(COLLECTION,10601,131,LEATHER,MONK,HORDE,65,1147),
        IncludeSet(COLLECTION,10601,141,PLATE,PALADIN,HORDE,69,1149),
        IncludeSet(COLLECTION,10601,139,CLOTH,PRIEST,HORDE,75,404),
        IncludeSet(COLLECTION,10601,133,LEATHER,ROGUE,HORDE,63,1151),
        IncludeSet(COLLECTION,10601,137,MAIL,SHAMAN,HORDE,59,1153),
        IncludeSet(COLLECTION,10601,129,CLOTH,WARLOCK,HORDE,73,1155),
        IncludeSet(COLLECTION,10601,135,PLATE,WARRIOR,HORDE,71,1157),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    -- Season 2
    local sets = {
        -- Alliance
        IncludeSet(COLLECTION,10602,90,PLATE,DEATHKNIGHT,ALLIANCE,17,1173),
        IncludeSet(COLLECTION,10602,84,LEATHER,DRUID,ALLIANCE,26,1175),
        IncludeSet(COLLECTION,10602,80,MAIL,HUNTER,ALLIANCE,13,1177),
        IncludeSet(COLLECTION,10602,100,CLOTH,MAGE,ALLIANCE,29,1179),
        IncludeSet(COLLECTION,10602,88,LEATHER,MONK,ALLIANCE,28,1181),
        IncludeSet(COLLECTION,10602,94,PLATE,PALADIN,ALLIANCE,19,1183),
        IncludeSet(COLLECTION,10602,98,CLOTH,PRIEST,ALLIANCE,31,405),
        IncludeSet(COLLECTION,10602,85,LEATHER,ROGUE,ALLIANCE,23,1185),
        IncludeSet(COLLECTION,10602,81,MAIL,SHAMAN,ALLIANCE,15,1187),
        IncludeSet(COLLECTION,10602,96,CLOTH,WARLOCK,ALLIANCE,34,1189),
        IncludeSet(COLLECTION,10602,92,PLATE,WARRIOR,ALLIANCE,22,1191),
        -- Horde
        IncludeSet(COLLECTION,10602,89,PLATE,DEATHKNIGHT,HORDE,18,1174),
        IncludeSet(COLLECTION,10602,83,LEATHER,DRUID,HORDE,25,1176),
        IncludeSet(COLLECTION,10602,79,MAIL,HUNTER,HORDE,14,1178),
        IncludeSet(COLLECTION,10602,99,CLOTH,MAGE,HORDE,30,1180),
        IncludeSet(COLLECTION,10602,88,LEATHER,MONK,HORDE,28,1181),
        IncludeSet(COLLECTION,10602,93,PLATE,PALADIN,HORDE,20,1184),
        IncludeSet(COLLECTION,10602,97,CLOTH,PRIEST,HORDE,32,406),
        IncludeSet(COLLECTION,10602,86,LEATHER,ROGUE,HORDE,24,1186),
        IncludeSet(COLLECTION,10602,82,MAIL,SHAMAN,HORDE,16,1188),
        IncludeSet(COLLECTION,10602,95,CLOTH,WARLOCK,HORDE,33,1190),
        IncludeSet(COLLECTION,10602,91,PLATE,WARRIOR,HORDE,21,1192),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    -- Season 3
    local sets = {
        -- Alliance
        IncludeSet(COLLECTION,10603,108,PLATE,DEATHKNIGHT,ALLIANCE,45,1204),
        IncludeSet(COLLECTION,10603,106,LEATHER,DRUID,ALLIANCE,39,1206),
        IncludeSet(COLLECTION,10603,102,MAIL,HUNTER,ALLIANCE,35,1208),
        IncludeSet(COLLECTION,10603,122,CLOTH,MAGE,ALLIANCE,53,1210),
        IncludeSet(COLLECTION,10603,112,LEATHER,MONK,ALLIANCE,44,1212),
        IncludeSet(COLLECTION,10603,120,PLATE,PALADIN,ALLIANCE,48,1214),
        IncludeSet(COLLECTION,10603,118,CLOTH,PRIEST,ALLIANCE,52,407),
        IncludeSet(COLLECTION,10603,114,LEATHER,ROGUE,ALLIANCE,41,1216),
        IncludeSet(COLLECTION,10603,104,MAIL,SHAMAN,ALLIANCE,37,1218),
        IncludeSet(COLLECTION,10603,110,CLOTH,WARLOCK,ALLIANCE,56,1220),
        IncludeSet(COLLECTION,10603,116,PLATE,WARRIOR,ALLIANCE,50,1222),
        -- Horde
        IncludeSet(COLLECTION,10603,107,PLATE,DEATHKNIGHT,HORDE,46,1205),
        IncludeSet(COLLECTION,10603,105,LEATHER,DRUID,HORDE,40,1207),
        IncludeSet(COLLECTION,10603,101,MAIL,HUNTER,HORDE,36,1209),
        IncludeSet(COLLECTION,10603,121,CLOTH,MAGE,HORDE,54,1211),
        IncludeSet(COLLECTION,10603,111,LEATHER,MONK,HORDE,43,1213),
        IncludeSet(COLLECTION,10603,119,PLATE,PALADIN,HORDE,47,1215),
        IncludeSet(COLLECTION,10603,117,CLOTH,PRIEST,HORDE,51,408),
        IncludeSet(COLLECTION,10603,113,LEATHER,ROGUE,HORDE,42,1217),
        IncludeSet(COLLECTION,10603,103,MAIL,SHAMAN,HORDE,38,1219),
        IncludeSet(COLLECTION,10603,109,CLOTH,WARLOCK,HORDE,55,1221),
        IncludeSet(COLLECTION,10603,115,PLATE,WARRIOR,HORDE,49,1223),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 70000

    -- Blackrock Foundry/Highmaul
    local sets = {
        -- Raid Finder
        CreateSet(COLLECTION,10601,"RAID_CLOTH_0601",CLOTH,ANY_CLASS,ANY_FACTION,"LOC_RAID_0601",
            CreateVariant("RAIDFINDER",TRANSMOG,A(25845,73196),A(25847,73166),A(25849,73182),A(25848,72878),A(25844,73228),A(25841,73118),A(25846,73200),A(25842,72970))
        ),
        CreateSet(COLLECTION,10601,"RAID_LEATHER_0601",LEATHER,ANY_CLASS,ANY_FACTION,"LOC_RAID_0601",
            CreateVariant("RAIDFINDER",TRANSMOG,A(23053,68023),A(23055,68019),A(23051,68013),A(23048,66901),A(23052,68031),A(23057,66911),A(23054,68011),A(23050,68027))
        ),
        CreateSet(COLLECTION,10601,"RAID_MAIL_0601",MAIL,ANY_CLASS,ANY_FACTION,"LOC_RAID_0601",
            CreateVariant("RAIDFINDER",TRANSMOG,A(25949,73212),A(25950,73174),A(25947,73188),A(25952,73110),A(25948,73236),A(25945,72986),A(25951,73216),A(25946,73082))
        ),
        CreateSet(COLLECTION,10601,"RAID_PLATE_0601",PLATE,ANY_CLASS,ANY_FACTION,"LOC_RAID_0601",
            CreateVariant("RAIDFINDER",TRANSMOG,A(22640,68079),A(22642,68075),A(22638,68067),A(22643,66883),A(22639,68063),A(22636,66886),A(22641,68059),A(22637,68071))
        ),
        -- Normal, Heroic, Mythic
        IncludeSet(COLLECTION,10602,569,PLATE,DEATHKNIGHT,ANY_FACTION,570,571),
        IncludeSet(COLLECTION,10602,554,LEATHER,DRUID,ANY_FACTION,555,556),
        IncludeSet(COLLECTION,10602,536,MAIL,HUNTER,ANY_FACTION,537,538),
        IncludeSet(COLLECTION,10602,520,CLOTH,MAGE,ANY_FACTION,521,522),
        IncludeSet(COLLECTION,10602,498,LEATHER,MONK,ANY_FACTION,500,501),
        IncludeSet(COLLECTION,10602,483,PLATE,PALADIN,ANY_FACTION,484,485),
        IncludeSet(COLLECTION,10602,327,CLOTH,PRIEST,ANY_FACTION,329,419),
        IncludeSet(COLLECTION,10602,468,LEATHER,ROGUE,ANY_FACTION,469,470),
        IncludeSet(COLLECTION,10602,418,MAIL,SHAMAN,ANY_FACTION,328,420),
        IncludeSet(COLLECTION,10602,452,CLOTH,WARLOCK,ANY_FACTION,453,454),
        IncludeSet(COLLECTION,10602,435,PLATE,WARRIOR,ANY_FACTION,436,437),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    -- Hellfire Citadel
    local sets = {
        -- Raid Finder
        IncludeSet(COLLECTION,10603,581,CLOTH,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10603,582,LEATHER,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10603,583,MAIL,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10603,584,PLATE,ANY_CLASS,ANY_FACTION),
        -- Normal, Heroic, Mythic
        IncludeSet(COLLECTION,10604,566,PLATE,DEATHKNIGHT,ANY_FACTION,567,568),
        IncludeSet(COLLECTION,10604,551,LEATHER,DRUID,ANY_FACTION,552,553),
        IncludeSet(COLLECTION,10604,533,MAIL,HUNTER,ANY_FACTION,534,535),
        IncludeSet(COLLECTION,10604,517,CLOTH,MAGE,ANY_FACTION,518,519),
        IncludeSet(COLLECTION,10604,502,LEATHER,MONK,ANY_FACTION,503,505),
        IncludeSet(COLLECTION,10604,480,PLATE,PALADIN,ANY_FACTION,481,482),
        IncludeSet(COLLECTION,10604,323,CLOTH,PRIEST,ANY_FACTION,324,325),
        IncludeSet(COLLECTION,10604,465,LEATHER,ROGUE,ANY_FACTION,466,467),
        IncludeSet(COLLECTION,10604,415,MAIL,SHAMAN,ANY_FACTION,416,417),
        IncludeSet(COLLECTION,10604,449,CLOTH,WARLOCK,ANY_FACTION,450,451),
        IncludeSet(COLLECTION,10604,432,PLATE,WARRIOR,ANY_FACTION,433,434),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end


local function GetDungeonAppearances()
    local col = SetCollector.DUNGEON
    local set = ""

    --set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_CLOTH_06",CLOTH,ANY_CLASS,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_CLOTH_06",TRANSMOG,A(22461),A(),A(),A(),A(),A(22455),A(),A()) -- Felflame
    --set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_LEATHER_03",LEATHER,ANY_CLASS,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_LEATHER_06",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    --set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_MAIL_06",MAIL,ANY_CLASS,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_MAIL_06",TRANSMOG,A(22435),A(),A(22449),A(22430),A(),A(22431),A(22436),A()) -- Sharpeye
    --set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_PLATE_06",PLATE,ANY_CLASS,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_PLATE_06",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
end


local function GetExpansionAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 70000
    local sets = {
        -- Transmog Only Sets
        CreateSet(COLLECTION,10601,"GA_ALLIANCE_SET",ANY_ARMOR,ANY_CLASS,ALLIANCE,NO_LOCATION,
            CreateVariant("GA_ALLIANCE_SET",TRANSMOG,A(24474),A(24476),A(24472),A(24473),A(24470),A(24475),A(24471))
        ),
        CreateSet(COLLECTION,10601,"GA_HORDE_SET",ANY_ARMOR,ANY_CLASS,ALLIANCE,NO_LOCATION,
            CreateVariant("GA_HORDE_SET",TRANSMOG,A(24054),A(24051),A(24052),A(24817),A(24053),A(24050),A(24854))
        ),
        IncludeSet(COLLECTION,10602,1534,CLOTH,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10602,1535,LEATHER,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10602,1536,MAIL,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10602,1533,PLATE,ANY_CLASS,ANY_FACTION),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    --[[
    local col = SetCollector.EXPANSION
    local set = ""
    
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"GA_BWM_SET_100",CLOTH,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"CLOTH",TRANSMOG,A(23099),A(23096),A(23097),A(24893),A(23098),A(23807),A(23100),A(23806))
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"GA_BWM_SET_100",LEATHER,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LEATHER",TRANSMOG,A(22857),A(22859),A(22855),A(22852),A(22856),A(22853),A(22858),A(22854))
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"GA_BWM_SET_100",MAIL,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MAIL",TRANSMOG,A(22945),A(22944),A(22947),A(22950),A(22946),A(22949),A(23810),A(22948))
    set = SetCollector:AddSetLegacy(70000,nil,col,10602,"GA_BWM_SET_100",PLATE,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PLATE",TRANSMOG,A(23274),A(23278),A(23265),A(24323),A(23271),A(23259),A(23277),A(23262))
    
    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"GA_ALLIANCE_SET",ANY_ARMOR,ANY_CLASS,ALLIANCE)
    SetCollector:AddVariantLegacy(70000,nil,col,set,"GA_ALLIANCE_SET",TRANSMOG,A(24474),A(24476),A(24472),A(24473),A(24470),A(24475),A(24471)) --,A(185)) -- Shield not available for all classes

    set = SetCollector:AddSetLegacy(70000,nil,col,10601,"GA_HORDE_SET",ANY_ARMOR,ANY_CLASS,HORDE)
    SetCollector:AddVariantLegacy(70000,nil,col,set,"GA_HORDE_SET",TRANSMOG,A(24054),A(24051),A(24052),A(24817),A(24053),A(24050),A(24854))
                
    --set = SetCollector:AddSetLegacy(70000,nil,col,10600,"OTH_SHIPYARD_100",ANY_ARMOR,ANY_CLASS,ALLIANCE)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"CAPTAIN",TRANSMOG,A(26891,73444))
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"FLEETCOMMANDER",TRANSMOG,A(26888,73447))
    --set = SetCollector:AddSetLegacy(70000,nil,col,10600,"OTH_SHIPYARD_100",ANY_ARMOR,ANY_CLASS,HORDE)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"CAPTAIN",TRANSMOG,A(26892,73445))
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"FLEETCOMMANDER",TRANSMOG,A(26889,73446))]]--
end


local function GetCraftedAppearances()
    local col = SetCollector.CRAFTED
    local set = ""
    
    set = SetCollector:AddSetLegacy(70000,nil,col,100,"CR_PLATE_100",PLATE,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"CR_PLATE_100",TRANSMOG,A(27327,80888),A(27329,80890),A(27325,80885),A(27330,80892),A(27326,80887),A(27323,80891),A(27328,80889),A(27324,80886))
end


local function GetOtherAppearances()
    local col = SetCollector.OTHER
    local set = ""

    set = SetCollector:AddSetLegacy(70000,nil,col,1009,"OTH_CLOTH_100",CLOTH,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"OTH_CLOTH_100",TRANSMOG,A(31376,79535),A(31379,79537),A(31718,79539),A(31374,79538),A(31380,79532),A(31375,79533),A(31372,79531),A(31377,79536),A(31373,79534))
    set = SetCollector:AddSetLegacy(70000,nil,col,1009,"OTH_LEATHER_100",LEATHER,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"OTH_LEATHER_100",TRANSMOG,A(31393,79520),A(31396,79521),A(31718,79539),A(31394,79541),A(31397,79516),A(31392,79519),A(31390,79522),A(31395,79518),A(31391,79517))
    set = SetCollector:AddSetLegacy(70000,nil,col,1009,"OTH_MAIL_100",MAIL,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"OTH_MAIL_100",TRANSMOG,A(31385,79527),A(31387,79529),A(31718,79539),A(31383,79530),A(31388,79524),A(31384,79525),A(31381,79523),A(31386,79528),A(31382,79526))
    set = SetCollector:AddSetLegacy(70000,nil,col,1009,"OTH_PLATE_100",PLATE,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"OTH_PLATE_100",TRANSMOG,A(31310,79511),A(31312,79513),A(31718,79539),A(31308,79508),A(31313,79515),A(31309,79509),A(31306,79510),A(31311,79512),A(31307,79514))
    --set = SetCollector:AddSetLegacy(70000,nil,col,1008,"OTH_LOCKET_100",ANY_ARMOR,ANY_CLASS,ALLIANCE)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"OTH_LOCKET_100",TRANSMOG,A(31906,80788))
    --set = SetCollector:AddSetLegacy(70000,nil,col,1008,"OTH_SHOES_100",ANY_ARMOR,ANY_CLASS,HORDE)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"OTH_SHOES_100",TRANSMOG,A(25398,51820,97901))
    set = SetCollector:AddSetLegacy(70000,nil,col,1007,"OT_ELR_100",CLOTH,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"OT_ELR_100",TRANSMOG,A(26087,69593),A(26841,69650),A(26842,73423))
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion06Appearances(expansion)
    if expansion.v06 then
        -- Common
        GetCraftedAppearances()
        GetDungeonAppearances()
        GetExpansionAppearances()
        GetOtherAppearances()
        GetPvPAppearances()
        GetRaidAppearances()
    end
end


function SetCollector:GetVersion06Status()
    return SetCollector:GetExpansionStatus("6")
end


function SetCollector:SetVersion06Status()
    SetCollector:SetExpansionStatus("6")
end