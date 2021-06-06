-- Appearances from The Burning Crusade (v.2.x)

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

local function GetLegendaries()
    local COLLECTION, VERSION = SetCollector.RAID, 70000
    
    local sets = {
        CreateSet(COLLECTION,10201,"LG_MELEE_70",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_MELEE_70",TRANSMOG,A(8460,15136),A(8461,15137))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
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

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 70000
    local sets = {
        -- Season 1
        IncludeSet(COLLECTION,10201,977,LEATHER,DRUID,ANY_FACTION),
        IncludeSet(COLLECTION,10201,976,MAIL,HUNTER,ANY_FACTION),
        IncludeSet(COLLECTION,10201,975,CLOTH,MAGE,ANY_FACTION),
        IncludeSet(COLLECTION,10201,974,PLATE,PALADIN,ANY_FACTION),
        IncludeSet(COLLECTION,10201,973,CLOTH,PRIEST,ANY_FACTION),
        IncludeSet(COLLECTION,10201,972,LEATHER,ROGUE,ANY_FACTION),
        IncludeSet(COLLECTION,10201,971,MAIL,SHAMAN,ANY_FACTION),
        IncludeSet(COLLECTION,10201,970,CLOTH,WARLOCK,ANY_FACTION),
        IncludeSet(COLLECTION,10201,381,PLATE,WARRIOR,ANY_FACTION),
        -- Season 2
        IncludeSet(COLLECTION,10202,969,LEATHER,DRUID,ANY_FACTION),
        IncludeSet(COLLECTION,10202,968,MAIL,HUNTER,ANY_FACTION),
        IncludeSet(COLLECTION,10202,967,CLOTH,MAGE,ANY_FACTION),
        IncludeSet(COLLECTION,10202,966,PLATE,PALADIN,ANY_FACTION),
        IncludeSet(COLLECTION,10202,380,CLOTH,PRIEST,ANY_FACTION),
        IncludeSet(COLLECTION,10202,965,LEATHER,ROGUE,ANY_FACTION),
        IncludeSet(COLLECTION,10202,964,MAIL,SHAMAN,ANY_FACTION),
        IncludeSet(COLLECTION,10202,963,CLOTH,WARLOCK,ANY_FACTION),
        IncludeSet(COLLECTION,10202,962,PLATE,WARRIOR,ANY_FACTION),
        -- Season 3
        IncludeSet(COLLECTION,10203,961,LEATHER,DRUID,ANY_FACTION),
        IncludeSet(COLLECTION,10203,960,MAIL,HUNTER,ANY_FACTION),
        IncludeSet(COLLECTION,10203,959,CLOTH,MAGE,ANY_FACTION),
        IncludeSet(COLLECTION,10203,958,PLATE,PALADIN,ANY_FACTION),
        IncludeSet(COLLECTION,10203,379,CLOTH,PRIEST,ANY_FACTION),
        IncludeSet(COLLECTION,10203,957,LEATHER,ROGUE,ANY_FACTION),
        IncludeSet(COLLECTION,10203,956,MAIL,SHAMAN,ANY_FACTION),
        IncludeSet(COLLECTION,10203,955,CLOTH,WARLOCK,ANY_FACTION),
        IncludeSet(COLLECTION,10203,954,PLATE,WARRIOR,ANY_FACTION),
        -- Season 4
        IncludeSet(COLLECTION,10204,953,LEATHER,DRUID,ANY_FACTION),
        IncludeSet(COLLECTION,10204,952,MAIL,HUNTER,ANY_FACTION),
        IncludeSet(COLLECTION,10204,951,CLOTH,MAGE,ANY_FACTION),
        IncludeSet(COLLECTION,10204,950,PLATE,PALADIN,ANY_FACTION),
        IncludeSet(COLLECTION,10204,378,CLOTH,PRIEST,ANY_FACTION),
        IncludeSet(COLLECTION,10204,949,LEATHER,ROGUE,ANY_FACTION),
        IncludeSet(COLLECTION,10204,948,MAIL,SHAMAN,ANY_FACTION),
        IncludeSet(COLLECTION,10204,947,CLOTH,WARLOCK,ANY_FACTION),
        IncludeSet(COLLECTION,10204,946,PLATE,WARRIOR,ANY_FACTION),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
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

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion02Appearances(expansion)
    if expansion.v02 then
        -- Common
        --GetLegendaries()
        GetOtherAppearances()
        GetPvPAppearances()
        GetRaidAppearances()
    end
end


function SetCollector:GetVersion02Status()
    return SetCollector:GetExpansionStatus("2")
end


function SetCollector:SetVersion02Status()
    SetCollector:SetExpansionStatus("2")
end