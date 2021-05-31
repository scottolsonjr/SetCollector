-- Appearances from Mists of Pandaria (v.5.x)

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
local ANY_ARMOR = SetCollector.ANY_ARMOR

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

local function GetCraftedAppearances()
    local COLLECTION, VERSION = SetCollector.CRAFTED, 70000
    local sets = {
        CreateSet(COLLECTION,10501,"CR_CLOTH_90",CLOTH,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_CLOTH_90",TRANSMOG,A(22893,63683),A(22895,63686),A(22897,63687),A(22892,63685),A(22894,63684),A(22890,63688))
        ),
        --[[CreateSet(COLLECTION,10501,"CR_LEATHER_90",LEATHER,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_LEATHER_90",TRANSMOG,A())
        ),
        CreateSet(COLLECTION,10501,"CR_MAIL_90",MAIL,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_MAIL_90",TRANSMOG,A())
        ),
        CreateSet(COLLECTION,10501,"CR_PLATE_90",PLATE,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("CR_PLATE_90",TRANSMOG,A())
        ),]]
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetExpansionAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 70000
    local sets = {
        IncludeSet(COLLECTION,10501,1446,PLATE,DEATHKNIGHT,ANY_FACTION),
        IncludeSet(COLLECTION,10501,1445,LEATHER,DRUID,ANY_FACTION),
        IncludeSet(COLLECTION,10501,1444,MAIL,HUNTER,ANY_FACTION),
        IncludeSet(COLLECTION,10501,1443,CLOTH,MAGE,ANY_FACTION),
        IncludeSet(COLLECTION,10501,1442,LEATHER,MONK,ANY_FACTION),
        IncludeSet(COLLECTION,10501,1441,PLATE,PALADIN,ANY_FACTION),
        IncludeSet(COLLECTION,10501,1440,CLOTH,PRIEST,ANY_FACTION),
        IncludeSet(COLLECTION,10501,1439,LEATHER,ROGUE,ANY_FACTION),
        IncludeSet(COLLECTION,10501,1438,MAIL,SHAMAN,ANY_FACTION),
        IncludeSet(COLLECTION,10501,1437,CLOTH,WARLOCK,ANY_FACTION),
        IncludeSet(COLLECTION,10501,1436,PLATE,WARRIOR,ANY_FACTION),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetLegendaries()
    local COLLECTION, VERSION = SetCollector.LEGENDARY, 70000
    local sets = {
        CreateSet(COLLECTION,10501,"LG_CASTER_INT_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_CASTER_INT_90",TRANSMOG,A(20801,54617))
        ),
        CreateSet(COLLECTION,10502,"LG_HEALER_INT_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_HEALER_INT_90",TRANSMOG,A(20825,54618))
        ),
        CreateSet(COLLECTION,10503,"LG_MELEE_AGI_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_MELEE_AGI_90",TRANSMOG,A(20805,54619))
        ),
        CreateSet(COLLECTION,10504,"LG_MELEE_STR_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_MELEE_STR_90",TRANSMOG,A(20805,54620))
        ),
        CreateSet(COLLECTION,10505,"LG_TANK_AGI_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_TANK_AGI_90",TRANSMOG,A(20803,54619))
        ),
        CreateSet(COLLECTION,10506,"LG_TANK_STR_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_TANK_STR_90",TRANSMOG,A(20805,54620))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 70000
    -- Season 12
    local sets = {
        -- Alliance
        --IncludeSet(COLLECTION,10501,211,PLATE,DEATHKNIGHT,ALLIANCE,1030),
        --IncludeSet(COLLECTION,10501,210,LEATHER,DRUID,ALLIANCE,1032),
        --IncludeSet(COLLECTION,10501,199,MAIL,HUNTER,ALLIANCE,1034),
        --IncludeSet(COLLECTION,10501,219,CLOTH,MAGE,ALLIANCE,1036),
        --IncludeSet(COLLECTION,10501,213,LEATHER,MONK,ALLIANCE,1038),
        --IncludeSet(COLLECTION,10501,218,PLATE,PALADIN,ALLIANCE,1040),
        --IncludeSet(COLLECTION,10501,217,CLOTH,PRIEST,ALLIANCE,401),
        --IncludeSet(COLLECTION,10501,214,LEATHER,ROGUE,ALLIANCE,1042),
        IncludeSet(COLLECTION,10501,284,MAIL,SHAMAN,ALLIANCE,194,1062),
        --IncludeSet(COLLECTION,10501,212,CLOTH,WARLOCK,ALLIANCE,1046),
        --IncludeSet(COLLECTION,10501,215,PLATE,WARRIOR,ALLIANCE,1048),
        -- Horde
        --IncludeSet(COLLECTION,10501,201,PLATE,DEATHKNIGHT,HORDE,1031),
        --IncludeSet(COLLECTION,10501,200,LEATHER,DRUID,HORDE,1033),
        --IncludeSet(COLLECTION,10501,198,MAIL,HUNTER,HORDE,1035),
        --IncludeSet(COLLECTION,10501,209,CLOTH,MAGE,HORDE,1037),
        --IncludeSet(COLLECTION,10501,203,LEATHER,MONK,HORDE,1039),
        --IncludeSet(COLLECTION,10501,208,PLATE,PALADIN,HORDE,1041),
        --IncludeSet(COLLECTION,10501,207,CLOTH,PRIEST,HORDE,402),
        --IncludeSet(COLLECTION,10501,204,LEATHER,ROGUE,HORDE,1043),
        --IncludeSet(COLLECTION,10501,216,MAIL,SHAMAN,HORDE,1044),
        --IncludeSet(COLLECTION,10501,212,CLOTH,WARLOCK,HORDE,1046),
        --IncludeSet(COLLECTION,10501,215,PLATE,WARRIOR,HORDE,1048),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    -- Season 13
    local sets = {
        -- Alliance
        --IncludeSet(COLLECTION,10502,211,PLATE,DEATHKNIGHT,ALLIANCE,1030),
        --IncludeSet(COLLECTION,10502,210,LEATHER,DRUID,ALLIANCE,1032),
        --IncludeSet(COLLECTION,10502,199,MAIL,HUNTER,ALLIANCE,1034),
        --IncludeSet(COLLECTION,10502,219,CLOTH,MAGE,ALLIANCE,1036),
        --IncludeSet(COLLECTION,10502,213,LEATHER,MONK,ALLIANCE,1038),
        --IncludeSet(COLLECTION,10502,218,PLATE,PALADIN,ALLIANCE,1040),
        --IncludeSet(COLLECTION,10502,217,CLOTH,PRIEST,ALLIANCE,401),
        --IncludeSet(COLLECTION,10502,214,LEATHER,ROGUE,ALLIANCE,1042),
        --IncludeSet(COLLECTION,10502,216,MAIL,SHAMAN,ALLIANCE,1044),
        --IncludeSet(COLLECTION,10502,212,CLOTH,WARLOCK,ALLIANCE,1046),
        --IncludeSet(COLLECTION,10502,215,PLATE,WARRIOR,ALLIANCE,1048),
        -- Horde
        --IncludeSet(COLLECTION,10502,201,PLATE,DEATHKNIGHT,HORDE,1031),
        --IncludeSet(COLLECTION,10502,200,LEATHER,DRUID,HORDE,1033),
        --IncludeSet(COLLECTION,10502,198,MAIL,HUNTER,HORDE,1035),
        --IncludeSet(COLLECTION,10502,209,CLOTH,MAGE,HORDE,1037),
        --IncludeSet(COLLECTION,10502,203,LEATHER,MONK,HORDE,1039),
        --IncludeSet(COLLECTION,10502,208,PLATE,PALADIN,HORDE,1041),
        --IncludeSet(COLLECTION,10502,207,CLOTH,PRIEST,HORDE,402),
        --IncludeSet(COLLECTION,10502,204,LEATHER,ROGUE,HORDE,1043),
        --IncludeSet(COLLECTION,10502,216,MAIL,SHAMAN,HORDE,1044),
        --IncludeSet(COLLECTION,10502,212,CLOTH,WARLOCK,HORDE,1046),
        --IncludeSet(COLLECTION,10502,215,PLATE,WARRIOR,HORDE,1048),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    -- Season 14
    local sets = {
        -- Alliance
        IncludeSet(COLLECTION,10503,211,PLATE,DEATHKNIGHT,ALLIANCE,1030),
        IncludeSet(COLLECTION,10503,210,LEATHER,DRUID,ALLIANCE,1032),
        IncludeSet(COLLECTION,10503,199,MAIL,HUNTER,ALLIANCE,1034),
        IncludeSet(COLLECTION,10503,219,CLOTH,MAGE,ALLIANCE,1036),
        IncludeSet(COLLECTION,10503,213,LEATHER,MONK,ALLIANCE,1038),
        IncludeSet(COLLECTION,10503,218,PLATE,PALADIN,ALLIANCE,1040),
        IncludeSet(COLLECTION,10503,217,CLOTH,PRIEST,ALLIANCE,401),
        IncludeSet(COLLECTION,10503,214,LEATHER,ROGUE,ALLIANCE,1042),
        IncludeSet(COLLECTION,10503,216,MAIL,SHAMAN,ALLIANCE,1044),
        IncludeSet(COLLECTION,10503,212,CLOTH,WARLOCK,ALLIANCE,1046),
        IncludeSet(COLLECTION,10503,215,PLATE,WARRIOR,ALLIANCE,1048),
        -- Horde
        IncludeSet(COLLECTION,10503,201,PLATE,DEATHKNIGHT,HORDE,1031),
        IncludeSet(COLLECTION,10503,200,LEATHER,DRUID,HORDE,1033),
        IncludeSet(COLLECTION,10503,198,MAIL,HUNTER,HORDE,1035),
        IncludeSet(COLLECTION,10503,209,CLOTH,MAGE,HORDE,1037),
        IncludeSet(COLLECTION,10503,203,LEATHER,MONK,HORDE,1039),
        IncludeSet(COLLECTION,10503,208,PLATE,PALADIN,HORDE,1041),
        IncludeSet(COLLECTION,10503,207,CLOTH,PRIEST,HORDE,402),
        IncludeSet(COLLECTION,10503,204,LEATHER,ROGUE,HORDE,1043),
        IncludeSet(COLLECTION,10503,206,MAIL,SHAMAN,HORDE,1045),
        IncludeSet(COLLECTION,10503,202,CLOTH,WARLOCK,HORDE,1047),
        IncludeSet(COLLECTION,10503,205,PLATE,WARRIOR,HORDE,1049),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    -- Season 15
    local sets = {
        -- Alliance
        IncludeSet(COLLECTION,10504,234,PLATE,DEATHKNIGHT,ALLIANCE,1073),
        IncludeSet(COLLECTION,10504,233,LEATHER,DRUID,ALLIANCE,1075),
        IncludeSet(COLLECTION,10504,232,MAIL,HUNTER,ALLIANCE,1077),
        IncludeSet(COLLECTION,10504,242,CLOTH,MAGE,ALLIANCE,1079),
        IncludeSet(COLLECTION,10504,236,LEATHER,MONK,ALLIANCE,1081),
        IncludeSet(COLLECTION,10504,241,PLATE,PALADIN,ALLIANCE,1083),
        IncludeSet(COLLECTION,10504,240,CLOTH,PRIEST,ALLIANCE,399),
        IncludeSet(COLLECTION,10504,237,LEATHER,ROGUE,ALLIANCE,1085),
        IncludeSet(COLLECTION,10504,239,MAIL,SHAMAN,ALLIANCE,1087),
        IncludeSet(COLLECTION,10504,235,CLOTH,WARLOCK,ALLIANCE,1089),
        IncludeSet(COLLECTION,10504,238,PLATE,WARRIOR,ALLIANCE,1091),
        -- Horde
        IncludeSet(COLLECTION,10504,245,PLATE,DEATHKNIGHT,HORDE,1074),
        IncludeSet(COLLECTION,10504,244,LEATHER,DRUID,HORDE,1076),
        IncludeSet(COLLECTION,10504,243,MAIL,HUNTER,HORDE,1078),
        IncludeSet(COLLECTION,10504,253,CLOTH,MAGE,HORDE,1080),
        IncludeSet(COLLECTION,10504,247,LEATHER,MONK,HORDE,1082),
        IncludeSet(COLLECTION,10504,252,PLATE,PALADIN,HORDE,1084),
        IncludeSet(COLLECTION,10504,251,CLOTH,PRIEST,HORDE,400),
        IncludeSet(COLLECTION,10504,248,LEATHER,ROGUE,HORDE,1086),
        IncludeSet(COLLECTION,10504,250,MAIL,SHAMAN,HORDE,1088),
        IncludeSet(COLLECTION,10504,246,CLOTH,WARLOCK,HORDE,1090),
        IncludeSet(COLLECTION,10504,249,PLATE,WARRIOR,HORDE,1092),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 70000

    local sets = {
        -- Heart of Fear/Terrace of Endless Spring
        IncludeSet(COLLECTION,10501,578,PLATE,DEATHKNIGHT,ANY_FACTION,579,580),
        IncludeSet(COLLECTION,10501,563,LEATHER,DRUID,ANY_FACTION,564,565),
        IncludeSet(COLLECTION,10501,545,MAIL,HUNTER,ANY_FACTION,546,547),
        IncludeSet(COLLECTION,10501,529,CLOTH,MAGE,ANY_FACTION,530,531),
        IncludeSet(COLLECTION,10501,513,LEATHER,MONK,ANY_FACTION,514,515),
        IncludeSet(COLLECTION,10501,493,PLATE,PALADIN,ANY_FACTION,494,495),
        IncludeSet(COLLECTION,10501,336,CLOTH,PRIEST,ANY_FACTION,337,429),
        IncludeSet(COLLECTION,10501,477,LEATHER,ROGUE,ANY_FACTION,478,479),
        IncludeSet(COLLECTION,10501,427,MAIL,SHAMAN,ANY_FACTION,338,428),
        IncludeSet(COLLECTION,10501,461,CLOTH,WARLOCK,ANY_FACTION,462,463),
        IncludeSet(COLLECTION,10501,444,PLATE,WARRIOR,ANY_FACTION,445,446),
        -- Throne of Thunder
        IncludeSet(COLLECTION,10502,575,PLATE,DEATHKNIGHT,ANY_FACTION,576,577),
        IncludeSet(COLLECTION,10502,560,LEATHER,DRUID,ANY_FACTION,561,562),
        IncludeSet(COLLECTION,10502,542,MAIL,HUNTER,ANY_FACTION,543,544),
        IncludeSet(COLLECTION,10502,526,CLOTH,MAGE,ANY_FACTION,527,528),
        IncludeSet(COLLECTION,10502,510,LEATHER,MONK,ANY_FACTION,511,512),
        IncludeSet(COLLECTION,10502,490,PLATE,PALADIN,ANY_FACTION,491,492),
        IncludeSet(COLLECTION,10502,310,CLOTH,PRIEST,ANY_FACTION,334,335),
        IncludeSet(COLLECTION,10502,474,LEATHER,ROGUE,ANY_FACTION,475,476),
        IncludeSet(COLLECTION,10502,424,MAIL,SHAMAN,ANY_FACTION,425,426),
        IncludeSet(COLLECTION,10502,458,CLOTH,WARLOCK,ANY_FACTION,459,460),
        IncludeSet(COLLECTION,10502,441,PLATE,WARRIOR,ANY_FACTION,442,443),
        -- Siege of Orgrimmar
        IncludeSet(COLLECTION,10503,572,PLATE,DEATHKNIGHT,ANY_FACTION,573,574),
        IncludeSet(COLLECTION,10503,557,LEATHER,DRUID,ANY_FACTION,558,559),
        IncludeSet(COLLECTION,10503,539,MAIL,HUNTER,ANY_FACTION,540,541),
        IncludeSet(COLLECTION,10503,523,CLOTH,MAGE,ANY_FACTION,524,525),
        IncludeSet(COLLECTION,10503,506,LEATHER,MONK,ANY_FACTION,507,508),
        IncludeSet(COLLECTION,10503,487,PLATE,PALADIN,ANY_FACTION,488,489),
        IncludeSet(COLLECTION,10503,331,CLOTH,PRIEST,ANY_FACTION,332,333),
        IncludeSet(COLLECTION,10503,471,LEATHER,ROGUE,ANY_FACTION,472,473),
        IncludeSet(COLLECTION,10503,421,MAIL,SHAMAN,ANY_FACTION,422,423),
        IncludeSet(COLLECTION,10503,455,CLOTH,WARLOCK,ANY_FACTION,456,457),
        IncludeSet(COLLECTION,10503,438,PLATE,WARRIOR,ANY_FACTION,439,440),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion05Appearances(expansion)
    if expansion.v05 then
        -- Common
        GetCraftedAppearances()
        GetExpansionAppearances()
        --GetLegendaries()
        GetPvPAppearances()
        GetRaidAppearances()
    end
end

function SetCollector:GetVersion05Status()
    return SetCollector:GetExpansionStatus("5")
end

function SetCollector:SetVersion05Status()
    SetCollector:SetExpansionStatus("5")
end