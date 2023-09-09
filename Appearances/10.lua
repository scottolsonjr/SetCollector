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
local function I(...) return SetCollector:CreateAppearanceFromItemID(...) end
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
        IncludeSet(COLLECTION,11000,2667,PLATE,ANY_CLASS,ANY_FACTION,2668,2748,2856),  
        IncludeSet(COLLECTION,11000,2661,CLOTH,ANY_CLASS,ANY_FACTION,2662,2742,2853),
        IncludeSet(COLLECTION,11000,2663,MAIL,ANY_CLASS,ANY_FACTION,2664,2744,2855),
        IncludeSet(COLLECTION,11000,2665,LEATHER,ANY_CLASS,ANY_FACTION,2666,2746,2854),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100100
    sets = {
        -- Cavern Delver's Gear
        IncludeSet(COLLECTION,11010,3011,CLOTH,ANY_CLASS,ANY_FACTION,3012,3013,3014), -- Moonless Vestiture
        IncludeSet(COLLECTION,11010,3015,LEATHER,ANY_CLASS,ANY_FACTION,3016,3017,3018), -- Sunless Leathers
        IncludeSet(COLLECTION,11010,3019,MAIL,ANY_CLASS,ANY_FACTION,3020,3021,3022), -- Skyless Scales
        IncludeSet(COLLECTION,11010,3023,PLATE,ANY_CLASS,ANY_FACTION,3024,3025,3026), -- Starless Bulwark

        -- Ornate Black Dragon Labwear
        IncludeSet(COLLECTION,11010,2912,ANY_ARMOR,ANY_CLASS,ANY_FACTION,2938),

        -- Black Dragonflight Vestments
        IncludeSet(COLLECTION,11010,2852,ANY_ARMOR,ANY_CLASS,ANY_FACTION),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100105
    sets = {
        -- Jingoist's War Armor / Warmongers's Battlegear
        IncludeSet(COLLECTION,11022,3065,CLOTH,ANY_CLASS,ALLIANCE),
        IncludeSet(COLLECTION,11022,3066,LEATHER,ANY_CLASS,ALLIANCE),
        IncludeSet(COLLECTION,11022,3067,MAIL,ANY_CLASS,ALLIANCE),
        IncludeSet(COLLECTION,11022,3068,PLATE,ANY_CLASS,ALLIANCE),
        IncludeSet(COLLECTION,11022,3061,CLOTH,ANY_CLASS,HORDE),
        IncludeSet(COLLECTION,11022,3062,LEATHER,ANY_CLASS,HORDE),
        IncludeSet(COLLECTION,11022,3063,MAIL,ANY_CLASS,HORDE),
        IncludeSet(COLLECTION,11022,3064,PLATE,ANY_CLASS,HORDE),

        -- Other Time Rifts
        IncludeSet(COLLECTION,11021,3069,CLOTH,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,11021,3070,LEATHER,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,11021,3071,MAIL,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,11021,3072,PLATE,ANY_CLASS,ANY_FACTION),

        -- Drake Racer's Silks
        IncludeSet(COLLECTION,11020,3054,ANY_ARMOR,ANY_CLASS,ANY_FACTION),

        -- T.B.D.
        IncludeSet(COLLECTION,11020,3055,CLOTH,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,11020,3056,LEATHER,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,11020,3057,MAIL,ANY_CLASS,ANY_FACTION),
        IncludeSet(COLLECTION,11020,3058,PLATE,ANY_CLASS,ANY_FACTION),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)

    VERSION = 100107
    sets = {
        IncludeSet(COLLECTION,11030,3085,ANY_ARMOR,ANY_CLASS,ANY_FACTION),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetOtherAppearances()
    local COLLECTION, VERSION = SetCollector.OTHER, 100000
    local sets = {
        IncludeSet(COLLECTION,11000,2482,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Fireplume Regalia
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
    
    VERSION = 100100
    local sets = {
        IncludeSet(COLLECTION,11010,2857,ANY_ARMOR,ANY_CLASS,ANY_FACTION), -- Waveborne Diplomat's Regalia
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
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

    VERSION = 100100
    sets = {
        -- Dragonflight Season 2 (Gladiator, Alt = Elite)
        IncludeSet(COLLECTION,11010,2935,ANY_ARMOR,MAGE,ANY_FACTION,2936), -- Obsidion Gladiator's Silk Armor
        IncludeSet(COLLECTION,11010,2915,ANY_ARMOR,PRIEST,ANY_FACTION,2916), -- Obsidion Gladiator's Silk Armor
        IncludeSet(COLLECTION,11010,2917,ANY_ARMOR,WARLOCK,ANY_FACTION,2918), -- Obsidion Gladiator's Silk Armor
        IncludeSet(COLLECTION,11010,2921,ANY_ARMOR,DRUID,ANY_FACTION,2922), -- Obsidion Gladiator's Leather Armor
        IncludeSet(COLLECTION,11010,2919,ANY_ARMOR,DEMONHUNTER,ANY_FACTION,2920), -- Obsidion Gladiator's Leather Armor
        IncludeSet(COLLECTION,11010,2923,ANY_ARMOR,MONK,ANY_FACTION,2924), -- Obsidion Gladiator's Leather Armor
        IncludeSet(COLLECTION,11010,2925,ANY_ARMOR,ROGUE,ANY_FACTION,2926), -- Obsidion Gladiator's Leather Armor
        IncludeSet(COLLECTION,11010,2910,ANY_ARMOR,EVOKER,ANY_FACTION,2911), -- Obsidion Gladiator's Chain Armor
        IncludeSet(COLLECTION,11010,2927,ANY_ARMOR,HUNTER,ANY_FACTION,2928), -- Obsidion Gladiator's Chain Armor
        IncludeSet(COLLECTION,11010,2929,ANY_ARMOR,SHAMAN,ANY_FACTION,2930), -- Obsidion Gladiator's Chain Armor
        IncludeSet(COLLECTION,11010,2913,ANY_ARMOR,DEATHKNIGHT,ANY_FACTION,2914), -- Obsidion Gladiator's Plate Armor
        IncludeSet(COLLECTION,11010,2931,ANY_ARMOR,PALADIN,ANY_FACTION,2932), -- Obsidion Gladiator's Plate Armor
        IncludeSet(COLLECTION,11010,2933,ANY_ARMOR,WARRIOR,ANY_FACTION,2934), -- Obsidion Gladiator's Plate Armor
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
    
    VERSION = 100100
    sets = {
        -- Aberrus, the Shadowed Crucible (N, H, M, RF)
        IncludeSet(COLLECTION,11010,2870,ANY_ARMOR,DEATHKNIGHT,ANY_FACTION,2895,2896,2897), -- Lingering Phantom's Encasement
        IncludeSet(COLLECTION,11010,2869,ANY_ARMOR,DEMONHUNTER,ANY_FACTION,2901,2902,2903), -- Kinslayer's Burdens
        IncludeSet(COLLECTION,11010,2868,ANY_ARMOR,DRUID,ANY_FACTION,2892,2893,2894), -- Strands of the Autumn Blaze
        IncludeSet(COLLECTION,11010,2867,ANY_ARMOR,EVOKER,ANY_FACTION,2904,2905,2906), -- Legacy of Obsidian Secrets
        IncludeSet(COLLECTION,11010,2866,ANY_ARMOR,HUNTER,ANY_FACTION,2889,2890,2891), -- Ashen Predator's Scaleform
        IncludeSet(COLLECTION,11010,2865,ANY_ARMOR,MAGE,ANY_FACTION,2907,2908,2909), -- Underlight Conjurer's Brilliance
        IncludeSet(COLLECTION,11010,2864,ANY_ARMOR,MONK,ANY_FACTION,2886,2887,2888), -- Fangs of the Vermillion Forge
        IncludeSet(COLLECTION,11010,2859,ANY_ARMOR,PALADIN,ANY_FACTION,2871,2872,2873), -- Heartfire Sentinel's Authority
        IncludeSet(COLLECTION,11010,2863,ANY_ARMOR,PRIEST,ANY_FACTION,2883,2884,2885), -- The Furnace Seraph's Verdict
        IncludeSet(COLLECTION,11010,2862,ANY_ARMOR,ROGUE,ANY_FACTION,2880,2881,2882), -- Lurking Specter's Shadeweave
        IncludeSet(COLLECTION,11010,2861,ANY_ARMOR,SHAMAN,ANY_FACTION,2877,2878,2879), -- Runes of the Cinderwolf
        IncludeSet(COLLECTION,11010,2860,ANY_ARMOR,WARLOCK,ANY_FACTION,2874,2875,2876), -- Sinister Savant's Cursethreads
        IncludeSet(COLLECTION,11010,2858,ANY_ARMOR,WARRIOR,ANY_FACTION,2898,2899,2900),  -- Irons of the Onyx Crucible
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetTradingPostAppearances()
    local COLLECTION, VERSION = SetCollector.TRADING, 100005
    local sets = {
        IncludeSet(COLLECTION,11005,2321,CLOTH,ANY_CLASS,ANY_FACTION), -- Vestment of the Honored Valarjar",
        IncludeSet(COLLECTION,11005,2323,CLOTH,ANY_CLASS,ANY_FACTION), -- Twisted Arcanum Regalia",
        IncludeSet(COLLECTION,11005,2320,PLATE,ANY_CLASS,ANY_FACTION), -- Fel-Automaton Exoplate
        IncludeSet(COLLECTION,11005,2331,MAIL,ANY_CLASS,ANY_FACTION), -- Chains of the Honored Valarjar",
        IncludeSet(COLLECTION,11005,2334,LEATHER,ANY_CLASS,ANY_FACTION), -- Battlewraps of the Honored Valarjar",
        IncludeSet(COLLECTION,11005,2337,LEATHER,ANY_CLASS,ANY_FACTION), -- Vestments of the Nightmare Forest
        IncludeSet(COLLECTION,11005,2338,MAIL,ANY_CLASS,ANY_FACTION), -- Slumbering Caldera Regalia
        IncludeSet(COLLECTION,11005,2343,PLATE,ANY_CLASS,ANY_FACTION), -- Battleplate of the Honored Valarjar",
        IncludeSet(COLLECTION,11005,2655,CLOTH,ANY_CLASS,ANY_FACTION), -- Corrupted Runelord's Regalia",
        IncludeSet(COLLECTION,11005,2656,PLATE,ANY_CLASS,ANY_FACTION), -- Val'sharah Protector's Battleplate",
        IncludeSet(COLLECTION,11005,2657,LEATHER,ANY_CLASS,ANY_FACTION), -- Sylvan Stalker's Leathers",
        IncludeSet(COLLECTION,11005,2658,MAIL,ANY_CLASS,ANY_FACTION), -- Tidecaller's Chainmail",
        IncludeSet(COLLECTION,11005,2659,CLOTH,ANY_CLASS,ANY_FACTION), -- Void-Bound Raiment",
        IncludeSet(COLLECTION,11005,2660,LEATHER,ANY_CLASS,ANY_FACTION), -- Void-Bound Battlegear",
        IncludeSet(COLLECTION,11005,2676,MAIL,ANY_CLASS,ANY_FACTION), -- Void-Bound Chains",
        IncludeSet(COLLECTION,11005,2677,PLATE,ANY_CLASS,ANY_FACTION), -- Void-Bound Warplate",
        IncludeSet(COLLECTION,11005,2678,LEATHER,ANY_CLASS,ANY_FACTION), -- Kvaldir Scout Leathers",
        IncludeSet(COLLECTION,11005,2679,PLATE,ANY_CLASS,ANY_FACTION), -- Helarjar Berserker Warplate",
        IncludeSet(COLLECTION,11005,2343,PLATE,ANY_CLASS,ANY_FACTION),      -- Battleplate of the Honored Valarjar
        IncludeSet(COLLECTION,11005,2321,CLOTH,ANY_CLASS,ANY_FACTION),      -- Vestment of the Honored Valarjar
        IncludeSet(COLLECTION,11005,2340,ANY_ARMOR,ANY_CLASS,ANY_FACTION),  -- Swashbuckling Buccaneer's Slops
        IncludeSet(COLLECTION,11005,2346,ANY_ARMOR,ANY_CLASS,ANY_FACTION),  -- Dashing Buccaneer's Slops
        IncludeSet(COLLECTION,11005,2654,MAIL,ANY_CLASS,ANY_FACTION),       -- Glorious Dragonrider's Mail
        IncludeSet(COLLECTION,11005,2327,ANY_ARMOR,ANY_CLASS,ANY_FACTION),  -- Darkmoon Harlequin's Bells
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
        GetOtherAppearances()
        GetPvPAppearances()
        GetRaidAppearances()
        GetTradingPostAppearances()
    end
end

function SetCollector:GetVersion10Status()
    return SetCollector:GetExpansionStatus("10")
end

function SetCollector:SetVersion10Status()
    SetCollector:SetExpansionStatus("10")
end

