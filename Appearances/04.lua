-- Appearances from Cataclysm (v.4.x)

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
                
    set = SetCollector:AddSetLegacy(70000,nil,col,4,"LG_85",ANY_ARMOR,ANY_CLASS,ANY_FACTION)
            SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_85",TRANSMOG,A(15522,36447,71086))
end


--[[
local function GetCraftingAppearances()
    local col = SetCollector.CRAFTED
    local set = ""
                
    set = SetCollector:AddSetLegacy(70000,nil,col,4,"CR_040000",CLOTH,ANY_CLASS,ANY_FACTION)
            SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_85",TRANSMOG,A(15522,36447,71086))
end
]]--

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 70000

    local sets = {
        -- Bastion of Twilight
        IncludeSet(COLLECTION,10401,836,PLATE,DEATHKNIGHT,ANY_FACTION,837),
        IncludeSet(COLLECTION,10401,820,LEATHER,DRUID,ANY_FACTION,821),
        IncludeSet(COLLECTION,10401,733,MAIL,HUNTER,ANY_FACTION,734),
        IncludeSet(COLLECTION,10401,717,CLOTH,MAGE,ANY_FACTION,718),
        IncludeSet(COLLECTION,10401,701,PLATE,PALADIN,ANY_FACTION,702),
        IncludeSet(COLLECTION,10401,344,CLOTH,PRIEST,ANY_FACTION,345),
        IncludeSet(COLLECTION,10401,685,LEATHER,ROGUE,ANY_FACTION,686),
        IncludeSet(COLLECTION,10401,635,MAIL,SHAMAN,ANY_FACTION,636),
        IncludeSet(COLLECTION,10401,669,CLOTH,WARLOCK,ANY_FACTION,670),
        IncludeSet(COLLECTION,10401,653,PLATE,WARRIOR,ANY_FACTION,654),
        -- Firelands
        IncludeSet(COLLECTION,10402,834,PLATE,DEATHKNIGHT,ANY_FACTION,835),
        IncludeSet(COLLECTION,10402,818,LEATHER,DRUID,ANY_FACTION,819),
        IncludeSet(COLLECTION,10402,731,MAIL,HUNTER,ANY_FACTION,732),
        IncludeSet(COLLECTION,10402,715,CLOTH,MAGE,ANY_FACTION,716),
        IncludeSet(COLLECTION,10402,699,PLATE,PALADIN,ANY_FACTION,700),
        IncludeSet(COLLECTION,10402,342,CLOTH,PRIEST,ANY_FACTION,343),
        IncludeSet(COLLECTION,10402,683,LEATHER,ROGUE,ANY_FACTION,684),
        IncludeSet(COLLECTION,10402,633,MAIL,SHAMAN,ANY_FACTION,634),
        IncludeSet(COLLECTION,10402,667,CLOTH,WARLOCK,ANY_FACTION,668),
        IncludeSet(COLLECTION,10402,651,PLATE,WARRIOR,ANY_FACTION,652),
        -- Dragon Soul
        IncludeSet(COLLECTION,10403,831,PLATE,DEATHKNIGHT,ANY_FACTION,832,833),
        IncludeSet(COLLECTION,10403,815,LEATHER,DRUID,ANY_FACTION,816,817),
        IncludeSet(COLLECTION,10403,728,MAIL,HUNTER,ANY_FACTION,729,730),
        IncludeSet(COLLECTION,10403,712,CLOTH,MAGE,ANY_FACTION,713,714),
        IncludeSet(COLLECTION,10403,696,PLATE,PALADIN,ANY_FACTION,697,698),
        IncludeSet(COLLECTION,10403,339,CLOTH,PRIEST,ANY_FACTION,340,341),
        IncludeSet(COLLECTION,10403,680,LEATHER,ROGUE,ANY_FACTION,681,682),
        IncludeSet(COLLECTION,10403,630,MAIL,SHAMAN,ANY_FACTION,632,663),
        IncludeSet(COLLECTION,10403,664,CLOTH,WARLOCK,ANY_FACTION,665,666),
        IncludeSet(COLLECTION,10403,631,PLATE,WARRIOR,ANY_FACTION,649,650),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion04Appearances(expansion)
    if expansion.v04 then
        -- Common
        --GetLegendaries()
        GetRaidAppearances()
    end
end


function SetCollector:GetVersion04Status()
    return SetCollector:GetExpansionStatus("4")
end


function SetCollector:SetVersion04Status()
    SetCollector:SetExpansionStatus("4")
end