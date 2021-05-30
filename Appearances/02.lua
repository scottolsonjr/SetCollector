-- Appearances from The Burning Crusade (v.2.x)

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
                
    set = SetCollector:AddSetLegacy(70000,nil,col,2,"LG_MELEE_70",ANY_ARMOR,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_MELEE_70",TRANSMOG,A(8460,15136,32837),A(8461,15137,32838))
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 70000

    local sets = {
        -- Gruul's Lair
        IncludeSet(COLLECTION,10201,922,LEATHER,DRUID,ANY_FACTION),
        IncludeSet(COLLECTION,10201,913,MAIL,HUNTER,ANY_FACTION),
        IncludeSet(COLLECTION,10201,898,CLOTH,MAGE,ANY_FACTION),
        IncludeSet(COLLECTION,10201,906,PLATE,PALADIN,ANY_FACTION),
        IncludeSet(COLLECTION,10201,354,CLOTH,PRIEST,ANY_FACTION),
        IncludeSet(COLLECTION,10201,890,LEATHER,ROGUE,ANY_FACTION),
        IncludeSet(COLLECTION,10201,872,MAIL,SHAMAN,ANY_FACTION),
        IncludeSet(COLLECTION,10201,864,CLOTH,WARLOCK,ANY_FACTION),
        IncludeSet(COLLECTION,10201,849,PLATE,WARRIOR,ANY_FACTION),
        -- Serpentshrine Cavern
        IncludeSet(COLLECTION,10202,921,LEATHER,DRUID,ANY_FACTION),
        IncludeSet(COLLECTION,10202,918,MAIL,HUNTER,ANY_FACTION),
        IncludeSet(COLLECTION,10202,905,CLOTH,MAGE,ANY_FACTION),
        IncludeSet(COLLECTION,10202,897,PLATE,PALADIN,ANY_FACTION),
        IncludeSet(COLLECTION,10202,353,CLOTH,PRIEST,ANY_FACTION),
        IncludeSet(COLLECTION,10202,889,LEATHER,ROGUE,ANY_FACTION),
        IncludeSet(COLLECTION,10202,871,MAIL,SHAMAN,ANY_FACTION),
        IncludeSet(COLLECTION,10202,863,CLOTH,WARLOCK,ANY_FACTION),
        IncludeSet(COLLECTION,10202,848,PLATE,WARRIOR,ANY_FACTION),
        -- Black Temple
        IncludeSet(COLLECTION,10203,920,LEATHER,DRUID,ANY_FACTION),
        IncludeSet(COLLECTION,10203,912,MAIL,HUNTER,ANY_FACTION),
        IncludeSet(COLLECTION,10203,904,CLOTH,MAGE,ANY_FACTION),
        IncludeSet(COLLECTION,10203,896,PLATE,PALADIN,ANY_FACTION),
        IncludeSet(COLLECTION,10203,351,CLOTH,PRIEST,ANY_FACTION),
        IncludeSet(COLLECTION,10203,888,LEATHER,ROGUE,ANY_FACTION),
        IncludeSet(COLLECTION,10203,870,MAIL,SHAMAN,ANY_FACTION),
        IncludeSet(COLLECTION,10203,862,CLOTH,WARLOCK,ANY_FACTION),
        IncludeSet(COLLECTION,10203,847,PLATE,WARRIOR,ANY_FACTION),
        -- Sunwell Plateau
        IncludeSet(COLLECTION,10204,919,LEATHER,DRUID,ANY_FACTION),
        IncludeSet(COLLECTION,10204,911,MAIL,HUNTER,ANY_FACTION),
        IncludeSet(COLLECTION,10204,903,CLOTH,MAGE,ANY_FACTION),
        IncludeSet(COLLECTION,10204,895,PLATE,PALADIN,ANY_FACTION),
        IncludeSet(COLLECTION,10204,352,CLOTH,PRIEST,ANY_FACTION),
        IncludeSet(COLLECTION,10204,887,LEATHER,ROGUE,ANY_FACTION),
        IncludeSet(COLLECTION,10204,869,MAIL,SHAMAN,ANY_FACTION),
        IncludeSet(COLLECTION,10204,932,CLOTH,WARLOCK,ANY_FACTION),
        IncludeSet(COLLECTION,10204,931,PLATE,WARRIOR,ANY_FACTION),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetDruidAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"DR_DG_03",LEATHER,DRUID,ANY_FACTION)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_DG_03",TRANSMOG,A(7162,12416),A(6923,12028),A(7080,12324),A(6855,11916),A(6998,12118))
end


local function GetHunterAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"HU_DG_03",MAIL,HUNTER,ANY_FACTION)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_DG_03",TRANSMOG,A(7121,12367),A(6961,12076),A(7101,12345),A(6856,11922),A(6999,12119))
end


local function GetMageAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"MA_DG_03",CLOTH,MAGE,ANY_FACTION)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_DG_03",TRANSMOG,A(7122,12368),A(6924,12029),A(7102,12346),A(6874,11942),A(6981,12097))
end


local function GetPaladinAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"PA_DG_03",PLATE,PALADIN,ANY_FACTION)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_DG_03",TRANSMOG,A(7123,12369),A(6925,12030),A(7081,12325),A(6890,11963),A(6982,12098))
end


local function GetPriestAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"PR_DG_03",CLOTH,PRIEST,ANY_FACTION)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_DG_03",TRANSMOG,A(7195,12457),A(6944,12058),A(7103,12347),A(6891,11964),A(7000,12120))
end


local function GetRogueAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"RO_DG_03",LEATHER,ROGUE,ANY_FACTION)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_DG_03",TRANSMOG,A(7196,12458),A(6945,12059),A(7082,12326),A(6875,11943),A(7019,12146))
end


local function GetShamanAppearances()

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"SH_DG_03",MAIL,SHAMAN,ANY_FACTION)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_DG_03",TRANSMOG,A(7163,12417),A(6962,12077),A(7104,12348),A(6876,11944),A(7020,12147))
end


local function GetWarlockAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"WK_DG_03",CLOTH,WARLOCK,ANY_FACTION)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_DG_03",TRANSMOG,A(7197,12459),A(6946,12060),A(7105,12349),A(6892,11965),A(7035,12168))
end


local function GetWarriorAppearances()
    local col, set, loc = ""
                
    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"WR_DG_03",PLATE,WARRIOR,ANY_FACTION)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_DG_03",TRANSMOG,A(7164,15418),A(6963,12078),A(7083,12327),A(6857,11923),A(7036,12191))
end


local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 90000
    local sets = {
        IncludeSet(COLLECTION,10202,1529,CLOTH,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10202,1528,LEATHER,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10202,1527,MAIL,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10202,1526,PLATE,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10204,1827,CLOTH,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10204,1826,LEATHER,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10204,1825,MAIL,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,10204,1824,PLATE,ANY_CLASS,ANY_FACTION),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion02Appearances(expansion)
    if expansion.v02 then
        -- Common
        --GetLegendaries()
        GetOtherAppearances()
        GetRaidAppearances()
        -- Class-specific
        GetDruidAppearances()
        GetHunterAppearances()
        GetMageAppearances()
        GetPaladinAppearances()
        GetPriestAppearances()
        GetRogueAppearances()
        GetShamanAppearances()
        GetShamanAppearances()
        GetWarlockAppearances()
        GetWarriorAppearances()
    end
end


function SetCollector:GetVersion02Status()
    return SetCollector:GetExpansionStatus("2")
end


function SetCollector:SetVersion02Status()
    SetCollector:SetExpansionStatus("2")
end