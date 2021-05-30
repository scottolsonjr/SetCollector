-- Appearances from Mists of Pandaria (v.5.x)

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
    
    set = SetCollector:AddSetLegacy(70000,nil,col,41,"LG_CASTER_INT_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION)
          SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_CASTER_INT_90",TRANSMOG,A(20801,54617,102246))
    set = SetCollector:AddSetLegacy(70000,nil,col,42,"LG_HEALER_INT_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_HEALER_INT_90",TRANSMOG,A(20825,54618,102247))    
    set = SetCollector:AddSetLegacy(70000,nil,col,43,"LG_MELEE_AGI_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_MELEE_AGI_90",TRANSMOG,A(20805,54619,102248))
    set = SetCollector:AddSetLegacy(70000,nil,col,44,"LG_MELEE_STR_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_MELEE_STR_90",TRANSMOG,A(20805,54620,102249))
    set = SetCollector:AddSetLegacy(70000,nil,col,45,"LG_MELEE_AGI_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_MELEE_AGI_90",TRANSMOG,A(20803,54619,102248))
    set = SetCollector:AddSetLegacy(70000,nil,col,46,"LG_TANK_STR_90",ANY_ARMOR,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_TANK_STR_90",TRANSMOG,A(20805,54620,102249))
end


local function GetCraftedAppearances()
    local col = SetCollector.CRAFTED
    local set = ""
    
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"CR_CLOTH_90",CLOTH,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"CR_CLOTH_90",TRANSMOG,A(22893,63683),A(22895,63686),A(22897,63687),A(22892,63685),A(22894,63684),A(22890,63688))
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

local function GetDeathKnightAppearances()
    local col, set, loc = ""

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"DK_CD_90",PLATE,DEATHKNIGHT,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DK_CD_90",TRANSMOG,A(17954,46754),A(17956,46756),A(17952,46752),A(17957,46757),A(17953,46753),A(17950,46750),A(17955,46755),A(17951,46751))
end


local function GetDruidAppearances()
    local col, set, loc = ""

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,1,"DR_CD_90",LEATHER,DRUID,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_CD_90",TRANSMOG,A(17870,46761,90062),A(17875,46764,90065),A(17877,46763,90064),A(17876,46765,90066),A(17873,46760,90061),A(17869,46758,90059),A(17874,46762,90063),A(17871,46759,90060))
end


local function GetHunterAppearances()
    local col, set, loc = ""

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,1,"HU_CD_90",MAIL,HUNTER,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_CD_90",TRANSMOG,A(17679,46770,90072),A(17681,46772,90074),A(17677,46768,90070),A(17674,46773,90075),A(17678,46769,90071),A(17675,46766,90068),A(17680,46771,90073),A(17676,46767,90069))
end


local function GetMageAppearances()
    local col, set, loc = ""

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,1,"MA_CD_90",CLOTH,MAGE,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_CD_90",TRANSMOG,A(19473,46779,90082),A(19474,46782,90085),A(18544,46781,90084),A(18543,46783,90086),A(18545,46778,90081),A(19472,46776,90079),A(18547,46780,90083),A(18541,46777,90080))
end


local function GetMonkAppearances()
    local col, set, loc = ""

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"MO_CD_90",LEATHER,MONK,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MO_CD_90",TRANSMOG,A(19477,46789),A(19478,46791),A(18141,46787),A(18145,46792),A(18142,46788),A(19476,46785),A(18143,46790),A(18140,46786))
end


local function GetPaladinAppearances()
    local col, set, loc = ""

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"PA_CD_90",PLATE,PALADIN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_CD_90",TRANSMOG,A(17548,46797),A(17550,46799),A(17546,46795),A(17551,46800),A(17547,46796),A(17544,46793),A(17549,46798),A(17545,46794))
end


local function GetPriestAppearances()
    local col, set, loc = ""

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"PR_CD_90",CLOTH,PRIEST,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_CD_90",TRANSMOG,A(19482,46813),A(19481,46810),A(18917,46811),A(18916,46809),A(18918,46812),A(19480,46807),A(18920,46814),A(18914,46808))
end


local function GetRogueAppearances()
    local col, set, loc = ""

    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"RO_CD_90",LEATHER,ROGUE,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RO_CD_90",TRANSMOG,A(17620,46817),A(17625,46822),A(17622,46819),A(17626,46823),A(17623,46820),A(17619,46816),A(17624,46821),A(17621,46818))
end


local function GetShamanAppearances()
    local col, set, loc = ""
    
    
    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"SH_CD_90",MAIL,SHAMAN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_CD_90",TRANSMOG,A(17856,46829,90132),A(17858,46831,90134),A(17854,46827,90130),A(17851,46824,90127),A(17855,46828,90131),A(17852,46825,90128),A(17857,46830,90133),A(17853,46826,90129))
end


local function GetWarlockAppearances()
    local col, set, loc = ""
                
    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"WK_CD_90",CLOTH,WARLOCK,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_CD_90",TRANSMOG,A(19485,46838),A(19484,46834),A(19174,46836),A(19173,46835),A(19175,46837),A(19483,46832),A(19177,46839),A(19171,46833)) 
end


local function GetWarriorAppearances()
    local col, set, loc = ""
    
    col = SetCollector.CHALLENGE
    set = SetCollector:AddSetLegacy(70000,nil,col,90,"WR_CD_90",PLATE,WARRIOR,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_CD_90",TRANSMOG,A(19487,46846,90151),A(19488,46848,90153),A(18627,46844,90149),A(18632,46849,90154),A(18628,46845,90150),A(19486,46842,90147),A(18630,46847,90152),A(18626,46843,90148))
end


--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion05Appearances(expansion)
    if expansion.v05 then
        -- Common
        --GetLegendaries()
        GetCraftedAppearances()
        GetPvPAppearances()
        GetRaidAppearances()
        -- Class-specific
        GetDeathKnightAppearances()
        GetDruidAppearances()
        GetHunterAppearances()
        GetMageAppearances()
        GetMonkAppearances()
        GetPaladinAppearances()
        GetPriestAppearances()
        GetRogueAppearances()
        GetShamanAppearances()
        GetWarlockAppearances()
        GetWarriorAppearances()
    end
end


function SetCollector:GetVersion05Status()
    return SetCollector:GetExpansionStatus("5")
end


function SetCollector:SetVersion05Status()
    SetCollector:SetExpansionStatus("5")
end