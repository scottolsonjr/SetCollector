-- Appearances from Wrath of the Lich King (v.3.x)

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
    local COLLECTION, VERSION = SetCollector.LEGENDARY, 70000
    local sets = {
        CreateSet(COLLECTION,10301,"LG_HEALER_80",ANY_ARMOR,ANY_CLASS,ANY_FACTION,NO_LOCATION,
            CreateVariant("LG_HEALER_80",TRANSMOG,A(11613,22178))
        ),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 70000

    local sets = {
        -- Naxxramas
        IncludeSet(COLLECTION,10301,845,PLATE,DEATHKNIGHT,ANY_FACTION,846),
        IncludeSet(COLLECTION,10301,829,LEATHER,DRUID,ANY_FACTION,830),
        IncludeSet(COLLECTION,10301,742,MAIL,HUNTER,ANY_FACTION,743),
        IncludeSet(COLLECTION,10301,726,CLOTH,MAGE,ANY_FACTION,727),
        IncludeSet(COLLECTION,10301,710,PLATE,PALADIN,ANY_FACTION,711),
        IncludeSet(COLLECTION,10301,361,CLOTH,PRIEST,ANY_FACTION,362),
        IncludeSet(COLLECTION,10301,694,LEATHER,ROGUE,ANY_FACTION,695),
        IncludeSet(COLLECTION,10301,644,MAIL,SHAMAN,ANY_FACTION,645),
        IncludeSet(COLLECTION,10301,678,CLOTH,WARLOCK,ANY_FACTION,679),
        IncludeSet(COLLECTION,10301,661,PLATE,WARRIOR,ANY_FACTION,662),
        -- Ulduar
        IncludeSet(COLLECTION,10302,843,PLATE,DEATHKNIGHT,ANY_FACTION,844),
        IncludeSet(COLLECTION,10302,827,LEATHER,DRUID,ANY_FACTION,828),
        IncludeSet(COLLECTION,10302,740,MAIL,HUNTER,ANY_FACTION,741),
        IncludeSet(COLLECTION,10302,724,CLOTH,MAGE,ANY_FACTION,725),
        IncludeSet(COLLECTION,10302,708,PLATE,PALADIN,ANY_FACTION,709),
        IncludeSet(COLLECTION,10302,363,CLOTH,PRIEST,ANY_FACTION,364),
        IncludeSet(COLLECTION,10302,692,LEATHER,ROGUE,ANY_FACTION,693),
        IncludeSet(COLLECTION,10302,642,MAIL,SHAMAN,ANY_FACTION,643),
        IncludeSet(COLLECTION,10302,676,CLOTH,WARLOCK,ANY_FACTION,677),
        IncludeSet(COLLECTION,10302,659,PLATE,WARRIOR,ANY_FACTION,660),
        -- Trial of the Crusader
        IncludeSet(COLLECTION,10303,842,PLATE,DEATHKNIGHT,ANY_FACTION),
        IncludeSet(COLLECTION,10303,825,LEATHER,DRUID,ANY_FACTION),
        IncludeSet(COLLECTION,10303,739,MAIL,HUNTER,ANY_FACTION),
        IncludeSet(COLLECTION,10303,722,CLOTH,MAGE,ANY_FACTION),
        IncludeSet(COLLECTION,10303,706,PLATE,PALADIN,ANY_FACTION),
        IncludeSet(COLLECTION,10303,349,CLOTH,PRIEST,ANY_FACTION),
        IncludeSet(COLLECTION,10303,690,LEATHER,ROGUE,ANY_FACTION),
        IncludeSet(COLLECTION,10303,640,MAIL,SHAMAN,ANY_FACTION),
        IncludeSet(COLLECTION,10303,674,CLOTH,WARLOCK,ANY_FACTION),
        IncludeSet(COLLECTION,10303,658,PLATE,WARRIOR,ANY_FACTION),
        -- Icecrown Citadel
        IncludeSet(COLLECTION,10304,838,PLATE,DEATHKNIGHT,ANY_FACTION,839,840),
        IncludeSet(COLLECTION,10304,822,LEATHER,DRUID,ANY_FACTION,823,824),
        IncludeSet(COLLECTION,10304,735,MAIL,HUNTER,ANY_FACTION,736,737),
        IncludeSet(COLLECTION,10304,719,CLOTH,MAGE,ANY_FACTION,720,721),
        IncludeSet(COLLECTION,10304,703,PLATE,PALADIN,ANY_FACTION,704,705),
        IncludeSet(COLLECTION,10304,346,CLOTH,PRIEST,ANY_FACTION,347,348),
        IncludeSet(COLLECTION,10304,687,LEATHER,ROGUE,ANY_FACTION,688,689),
        IncludeSet(COLLECTION,10304,637,MAIL,SHAMAN,ANY_FACTION,638,639),
        IncludeSet(COLLECTION,10304,671,CLOTH,WARLOCK,ANY_FACTION,672,673),
        IncludeSet(COLLECTION,10304,655,PLATE,WARRIOR,ANY_FACTION,298,656),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion03Appearances(expansion)
    if expansion.v03 then
        -- Common
        --GetLegendaries()
        GetRaidAppearances()
    end
end

function SetCollector:GetVersion03Status()
    return SetCollector:GetExpansionStatus("3")
end

function SetCollector:SetVersion03Status()
    SetCollector:SetExpansionStatus("3")
end