-- Appearances from Dragonflight (v.10.x)

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
local ANY_ARMOR	= SetCollector.ANY_ARMOR

-- Classes
local DEATHKNIGHT = SetCollector.DEATHKNIGHT
local DEMONHUNTER = SetCollector.DEMONHUNTER
local DRUID = SetCollector.DRUID
local EVOKER = SetCollector.EVOKER
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

-- Collection Types
local OUTFITS = SetCollector.OUTFITS
local ARTIFACT = SetCollector.ARTIFACT
local LEGENDARY = SetCollector.LEGENDARY
local RAID = SetCollector.RAID
local DUNGEON = SetCollector.DUNGEON
local CHALLENGE = SetCollector.CHALLENGE
local PVP = SetCollector.PVP
local EXPANSION = SetCollector.EXPANSION
local CRAFTED = SetCollector.CRAFTED
local OTHER = SetCollector.OTHER
local CUSTOM = SetCollector.CUSTOM
local HOLIDAY = SetCollector.HOLIDAY

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
    local COLLECTION, VERSION = SetCollector.CRAFTED, 100000
    local sets = {
        -- Primal Elements
        IncludeSet(COLLECTION,11000,2749,PLATE,ANY_CLASS,ANY_FACTION), -- Primal Molten
        IncludeSet(COLLECTION,11000,2743,CLOTH,ANY_CLASS,ANY_FACTION), -- Vibrant Wildercloth
        IncludeSet(COLLECTION,11000,2745,MAIL,ANY_CLASS,ANY_FACTION), -- Flame-Touched
        IncludeSet(COLLECTION,11000,2747,LEATHER,ANY_CLASS,ANY_FACTION), -- Life-Bound

        -- Expedition Gear
        IncludeSet(COLLECTION,11000,2698,PLATE,ANY_CLASS,ANY_FACTION), -- Crimson Combatant's Draconium Armor
        IncludeSet(COLLECTION,11000,2691,CLOTH,ANY_CLASS,ANY_FACTION), -- Crimson Combatant's Wildercloth Regalia
        IncludeSet(COLLECTION,11000,2694,MAIL,ANY_CLASS,ANY_FACTION), -- Crimson Combatant's Adamant Battlegear
        IncludeSet(COLLECTION,11000,2688,LEATHER,ANY_CLASS,ANY_FACTION), -- Crimson Combatant's Resilient Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetDungeonAppearances()
    local COLLECTION, VERSION = SetCollector.DUNGEON, 100000
    local sets = {
        IncludeSet(COLLECTION,11000,2712,PLATE,ANY_CLASS,ANY_FACTION), -- Djaradin Battlegear / Djaradin Dungeon Battlegear
        IncludeSet(COLLECTION,11000,2710,MAIL,ANY_CLASS,ANY_FACTION), -- Centaur Regalia / Centaur Dungeon Harness
        IncludeSet(COLLECTION,11000,2703,CLOTH,ANY_CLASS,ANY_FACTION), -- Titan Keeper's Vestments / Titan Dungeonkeeper's Vestments
        IncludeSet(COLLECTION,11000,2683,LEATHER,ANY_CLASS,ANY_FACTION), -- Tuskarr Battlegear / Ottuk Hide Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetExpansionAppearances()
    local COLLECTION, VERSION = SetCollector.EXPANSION, 100000
    local sets = {
        -- World and Weekly Quests
        IncludeSet(COLLECTION,11000,2711,PLATE,ANY_CLASS,ANY_FACTION,2714,2713), -- Djaradin Battlegear / Wyrmforged Battlegear
        IncludeSet(COLLECTION,11000,2706,MAIL,ANY_CLASS,ANY_FACTION,2708,2709), -- Centaur Regalia / Ohn'ahran Falconer's Regalia
        IncludeSet(COLLECTION,11000,2701,CLOTH,ANY_CLASS,ANY_FACTION,2704,2705), -- Titan Keeper's Vestments / Cobalt Watcher's Vestments
        IncludeSet(COLLECTION,11000,2681,LEATHER,ANY_CLASS,ANY_FACTION,2684,2587), -- Tuskarr Battlegear / Ottuk Hide Armor

        -- Expedition Gear
        IncludeSet(COLLECTION,11000,2697,PLATE,ANY_CLASS,ANY_FACTION,2700,2492,2699),
        IncludeSet(COLLECTION,11000,2692,MAIL,ANY_CLASS,ANY_FACTION,2695,2696,2491),
        IncludeSet(COLLECTION,11000,2685,LEATHER,ANY_CLASS,ANY_FACTION,2490,2687,2686),
        IncludeSet(COLLECTION,11000,2689,CLOTH,ANY_CLASS,ANY_FACTION,2693,2690,2489),

        -- Dracthyr Battlegear
        IncludeSet(COLLECTION,11000,2672,MAIL,ANY_CLASS,ANY_FACTION,2673,2674,2675,2670),  -- Emerald, Crimson, Cobalt, Sandshaped, Obsidian

        -- Valdrakken Civilian Clothing
        IncludeSet(COLLECTION,11000,2582,ANY_ARMOR,ANY_CLASS,ANY_FACTION,2583,2584,2585,2586), 

        -- Primal Elements
        IncludeSet(COLLECTION,11000,2667,PLATE,ANY_CLASS,ANY_FACTION,2668,2748),  
        IncludeSet(COLLECTION,11000,2661,CLOTH,ANY_CLASS,ANY_FACTION,2662,2742),
        IncludeSet(COLLECTION,11000,2663,MAIL,ANY_CLASS,ANY_FACTION,2664,2744),
        IncludeSet(COLLECTION,11000,2665,LEATHER,ANY_CLASS,ANY_FACTION,2666,2746),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetLegendaryAppearances()
    local COLLECTION, VERSION = SetCollector.LEGENDARY, 100000
    -- local sets = {
    --     IncludeSet(COLLECTION,11000,SET_ID,ANY_ARMOR,ANY_CLASS,ANY_FACTION,ALT_2,ALT_3,ALT_4),
    -- }
    -- AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 100000
    -- local sets = {
    --     IncludeSet(COLLECTION,11000,SET_ID,ANY_ARMOR,ANY_CLASS,ANY_FACTION,ALT_2,ALT_3,ALT_4),
    -- }
    -- AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetPvPAppearances()
    local COLLECTION, VERSION = SetCollector.PVP, 100000
    local sets = {
        -- Dragonflight Season 1 (Aspirant)
        IncludeSet(COLLECTION,11000,2715,PLATE,ANY_CLASS,ANY_FACTION), -- Crimson Aspirant's Plate Battlegear
        IncludeSet(COLLECTION,11000,2707,MAIL,ANY_CLASS,ANY_FACTION), -- Crimson Aspirant's Chain Armor
        IncludeSet(COLLECTION,11000,2702,CLOTH,ANY_CLASS,ANY_FACTION), -- Crimson Aspirant's Silk Vestments
        IncludeSet(COLLECTION,11000,2682,LEATHER,ANY_CLASS,ANY_FACTION), -- Crimson Aspirant's Battlegarb

        -- Dragonflight Season 1 (Gladiator, Alt = Elite)
        IncludeSet(COLLECTION,11000,2716,ANY_ARMOR,MAGE,ANY_FACTION,2717), -- Crimson Gladiator's Silk Armor
        IncludeSet(COLLECTION,11000,2718,ANY_ARMOR,PRIEST,ANY_FACTION,2719), -- Crimson Gladiator's Silk Armor
        IncludeSet(COLLECTION,11000,2720,ANY_ARMOR,WARLOCK,ANY_FACTION,2721), -- Crimson Gladiator's Silk Armor
        IncludeSet(COLLECTION,11000,2722,ANY_ARMOR,DRUID,ANY_FACTION,2723), -- Crimson Gladiator's Leather Armor
        IncludeSet(COLLECTION,11000,2724,ANY_ARMOR,DEMONHUNTER,ANY_FACTION,2725), -- Crimson Gladiator's Leather Armor
        IncludeSet(COLLECTION,11000,2726,ANY_ARMOR,MONK,ANY_FACTION,2727), -- Crimson Gladiator's Leather Armor
        IncludeSet(COLLECTION,11000,2728,ANY_ARMOR,ROGUE,ANY_FACTION,2729), -- Crimson Gladiator's Leather Armor
        IncludeSet(COLLECTION,11000,2730,ANY_ARMOR,EVOKER,ANY_FACTION,2731), -- Crimson Gladiator's Chain Armor
        IncludeSet(COLLECTION,11000,2732,ANY_ARMOR,HUNTER,ANY_FACTION,2733), -- Crimson Gladiator's Chain Armor
        IncludeSet(COLLECTION,11000,2734,ANY_ARMOR,SHAMAN,ANY_FACTION,2735), -- Crimson Gladiator's Chain Armor
        IncludeSet(COLLECTION,11000,2736,ANY_ARMOR,DEATHKNIGHT,ANY_FACTION,2737), -- Crimson Gladiator's Plate Armor
        IncludeSet(COLLECTION,11000,2738,ANY_ARMOR,PALADIN,ANY_FACTION,2739), -- Crimson Gladiator's Plate Armor
        IncludeSet(COLLECTION,11000,2740,ANY_ARMOR,WARRIOR,ANY_FACTION,2741), -- Crimson Gladiator's Plate Armor
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 100000
    local sets = {
        -- Vault of the Incarnates (N, H, M, RF)
        IncludeSet(COLLECTION,11000,2601,ANY_ARMOR,DEATHKNIGHT,ANY_FACTION,2614,2615,2616), -- Haunted Frostbrood Remains
        IncludeSet(COLLECTION,11000,2602,ANY_ARMOR,DEMONHUNTER,ANY_FACTION,2617,2618,2619), -- Skybound Avenger's Flightwear
        IncludeSet(COLLECTION,11000,2603,ANY_ARMOR,DRUID,ANY_FACTION,2620,2622,2621), -- Lost Landcaller's Vesture
        IncludeSet(COLLECTION,11000,2604,ANY_ARMOR,EVOKER,ANY_FACTION,2623,2624,2625), -- Scales of the Awakened
        IncludeSet(COLLECTION,11000,2605,ANY_ARMOR,HUNTER,ANY_FACTION,2626,2628,2627), -- Stormwing Harrier's Camouflage
        IncludeSet(COLLECTION,11000,2606,ANY_ARMOR,MAGE,ANY_FACTION,2629,2630,2631), -- Bindings of the Crystal Scholar
        IncludeSet(COLLECTION,11000,2607,ANY_ARMOR,MONK,ANY_FACTION,2632,2633,2634), -- Wrappings of the Waking Fist
        IncludeSet(COLLECTION,11000,2608,ANY_ARMOR,PALADIN,ANY_FACTION,2635,2637,2636), -- Virtuous Silver Cataphract
        IncludeSet(COLLECTION,11000,2609,ANY_ARMOR,PRIEST,ANY_FACTION,2638,2640,2639), -- Draconic Hierophant's Finery
        IncludeSet(COLLECTION,11000,2610,ANY_ARMOR,ROGUE,ANY_FACTION,2641,2642,2643), -- Vault Delver's Toolkit
        IncludeSet(COLLECTION,11000,2611,ANY_ARMOR,SHAMAN,ANY_FACTION,2644,2646,2645), -- Elements of Infused Earth
        IncludeSet(COLLECTION,11000,2612,ANY_ARMOR,WARLOCK,ANY_FACTION,2647,2648,2649), -- Scalesworn Cultist's Habit
        IncludeSet(COLLECTION,11000,2613,ANY_ARMOR,WARRIOR,ANY_FACTION,2650,2651,2652),  -- Stones of the Walking Mountain
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion10Appearances(expansion)
    if expansion.v10 then
        GetCraftedAppearances()
        GetDungeonAppearances()
        GetExpansionAppearances()
        GetLegendaryAppearances()
        GetOtherAppearances()
        GetPvPAppearances()
        GetRaidAppearances()
    end
end

function SetCollector:GetVersion10Status()
    return SetCollector:GetExpansionStatus("10")
end

function SetCollector:SetVersion10Status()
    SetCollector:SetExpansionStatus("10")
end

