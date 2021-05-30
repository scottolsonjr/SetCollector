-- Appearances from World of Warcraft (v.1.x)

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
    
    set = SetCollector:AddSetLegacy(70000,nil,col,1,"LG_60",ANY_ARMOR,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_60",TRANSMOG,A(5131,7098,17182))
end

local function GetRaidAppearances()
    local COLLECTION, VERSION = SetCollector.RAID, 70000

    local sets = {
        -- Molten Core
        IncludeSet(COLLECTION,10101,928,LEATHER,DRUID,ANY_FACTION),
        IncludeSet(COLLECTION,10101,917,MAIL,HUNTER,ANY_FACTION),
        IncludeSet(COLLECTION,10101,910,CLOTH,MAGE,ANY_FACTION),
        IncludeSet(COLLECTION,10101,902,PLATE,PALADIN,ANY_FACTION),
        IncludeSet(COLLECTION,10101,357,CLOTH,PRIEST,ANY_FACTION),
        IncludeSet(COLLECTION,10101,894,LEATHER,ROGUE,ANY_FACTION),
        IncludeSet(COLLECTION,10101,876,MAIL,SHAMAN,ANY_FACTION),
        IncludeSet(COLLECTION,10101,868,CLOTH,WARLOCK,ANY_FACTION),
        IncludeSet(COLLECTION,10101,853,PLATE,WARRIOR,ANY_FACTION),
        -- Blackwing Lair
        IncludeSet(COLLECTION,10102,927,LEATHER,DRUID,ANY_FACTION),
        IncludeSet(COLLECTION,10102,916,MAIL,HUNTER,ANY_FACTION),
        IncludeSet(COLLECTION,10102,909,CLOTH,MAGE,ANY_FACTION),
        IncludeSet(COLLECTION,10102,901,PLATE,PALADIN,ANY_FACTION),
        -- Recolor variant: SetCollector:AddVariantLegacy(70000,nil,col,set,"RECOLOR",TRANSMOG,A(6951,12066),A(6894,11967),A(7010,12137),A(6865,11932),A(6847,11907),A(6901,11974),A(6930,12037),A(7096,12340))
        IncludeSet(COLLECTION,10102,356,CLOTH,PRIEST,ANY_FACTION),
        IncludeSet(COLLECTION,10102,893,LEATHER,ROGUE,ANY_FACTION),
        IncludeSet(COLLECTION,10102,875,MAIL,SHAMAN,ANY_FACTION),
        IncludeSet(COLLECTION,10102,867,CLOTH,WARLOCK,ANY_FACTION),
        IncludeSet(COLLECTION,10102,852,PLATE,WARRIOR,ANY_FACTION),
        -- Naxxramas
        IncludeSet(COLLECTION,10103,924,LEATHER,DRUID,ANY_FACTION),
        IncludeSet(COLLECTION,10103,914,MAIL,HUNTER,ANY_FACTION),
        IncludeSet(COLLECTION,10103,907,CLOTH,MAGE,ANY_FACTION),
        IncludeSet(COLLECTION,10103,899,PLATE,PALADIN,ANY_FACTION),
        IncludeSet(COLLECTION,10103,355,CLOTH,PRIEST,ANY_FACTION),
        IncludeSet(COLLECTION,10103,891,LEATHER,ROGUE,ANY_FACTION),
        IncludeSet(COLLECTION,10103,873,MAIL,SHAMAN,ANY_FACTION),
        IncludeSet(COLLECTION,10103,865,CLOTH,WARLOCK,ANY_FACTION),
        IncludeSet(COLLECTION,10103,850,PLATE,WARRIOR,ANY_FACTION),
        -- Temple of Ahn'Qiraj
        IncludeSet(COLLECTION,10104,926,LEATHER,DRUID,ANY_FACTION),
        IncludeSet(COLLECTION,10104,915,MAIL,HUNTER,ANY_FACTION),
        IncludeSet(COLLECTION,10104,908,CLOTH,MAGE,ANY_FACTION),
        IncludeSet(COLLECTION,10104,900,PLATE,PALADIN,ANY_FACTION),
        IncludeSet(COLLECTION,10104,358,CLOTH,PRIEST,ANY_FACTION),
        IncludeSet(COLLECTION,10104,892,LEATHER,ROGUE,ANY_FACTION),
        IncludeSet(COLLECTION,10104,874,MAIL,SHAMAN,ANY_FACTION),
        IncludeSet(COLLECTION,10104,866,CLOTH,WARLOCK,ANY_FACTION),
        IncludeSet(COLLECTION,10104,851,PLATE,WARRIOR,ANY_FACTION),
    }
    AddSetsToDatabase(VERSION, COLLECTION, sets)
end

local function GetDungeonAppearances()
    local col = SetCollector.DUNGEON
    local set = ""
    
    set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_CLOTH_03",CLOTH,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_CLOTH_03",TRANSMOG,A(7071,12315),A(6956,12071),A(7069,12313),A(6852,11913),A(7018,12145))
    set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_LEATHER_03",LEATHER,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_LEATHER_03",TRANSMOG,A(7098,12342),A(6957,12072),A(7116,12362),A(6888,11960),A(6980,12096))
    set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_MAIL_03",MAIL,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_MAIL_03",TRANSMOG,A(7070,12314),A(6920,12009),A(7184,12446),A(6887,11958),A(7030,12162))
    set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_PLATE_03",PLATE,ANY_CLASS,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_PLATE_03",TRANSMOG,A(7099,12343),A(6941,12055),A(7186,12448),A(6870,11938),A(6996,12116))
end


local function GetDruidAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"DR_DG_AQ_1",LEATHER,DRUID,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_DG_AQ_1",TRANSMOG,A(5715,8419,21407),A(2979,8420,21409)) --,A(nil,nil,21408))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"DR_DG_02",LEATHER,DRUID,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5929,39654,78249),A(5932,39652,78247),A(5933,39657,78252),A(5928,39658,78253),A(5930,39653,78248),A(5926,39651,78246),A(5931,39655,78250),A(5927,39656,78251))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ORIGINAL",TRANSMOG,A(5929,8723,22109),A(5932,8726,22112),A(5933,8727,22113),A(5928,8722,22108),A(5930,8724,22110),A(5926,8720,22106),A(5931,8725,22111),A(5927,8721,22107))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"DR_DG_01",LEATHER,DRUID,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4920,39643,78238),A(4918,39644,78239),A(4908,39647,78242),A(4914,39645,78240),A(4917,39646,78241),A(4916,39649,78244),A(4919,39650,78245),A(4915,39648,78243))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ORIGINAL",TRANSMOG,A(4920,6851,16720),A(4918,6849,16718),A(4908,6837,16706),A(4914,6845,16714),A(4917,6848,16717),A(4916,6847,16716),A(4919,6850,16719),A(4915,6846,16715))
end


local function GetHunterAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"HU_DG_AQ_1",MAIL,HUNTER,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_DG_AQ_1",TRANSMOG,A(5712,8415,21401),A(5716,8416,21403)) --,A(nil,nil,21402))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"HU_DG_02",MAIL,HUNTER,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5880,39689),A(5882,39686),A(5884,39687),A(5879,39688),A(5881,39683),A(5878,39690),A(5883,39685),A(5885,39684))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ORIGINAL",TRANSMOG,A(5880,8674),A(5882,8676),A(5884,8678),A(5879,8673),A(5881,8675),A(5878,8672),A(5883,8677),A(5885,8679))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"HU_DG_01",MAIL,HUNTER,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4880,39680),A(4882,39678),A(4877,39675),A(4884,39682),A(4879,39676),A(4883,39679),A(4881,39681),A(4878,39677))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ORIGINAL",TRANSMOG,A(4880,6808),A(4882,6810),A(4877,6805),A(4884,6812),A(4879,6807),A(4883,6811),A(4881,6809),A(4878,6806))
end


local function GetMageAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"MA_DG_AQ_1",CLOTH,MAGE,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_DG_AQ_1",TRANSMOG,A(5713,8423,21413),A(2437,8424,21415))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"MA_DG_02",CLOTH,MAGE,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5889,39605,78198),A(5892,39608,78201),A(5893,39607,78200),A(5887,39610,78203),A(5890,39604,78197),A(5886,39609,78202),A(5891,39606,78199),A(5888,39603,78196))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ORIGINAL",TRANSMOG,A(5889,8683,22065),A(5892,8686,22068),A(5893,8687,22069),A(5887,8681,22063),A(5890,8684,22066),A(5886,8680,22062),A(5891,8685,22067),A(5888,8682,22064))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"MA_DG_01",CLOTH,MAGE,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4889,39597,78188),A(4891,39600,78191),A(4890,39599,78190),A(4886,39602,78193),A(4887,39596,78187),A(4888,39601,78192),A(4008,39598,78189),A(4885,39595,78186))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ORIGINAL",TRANSMOG,A(4889,6817,16686),A(4891,6820,16689),A(4890,6819,16688),A(4886,6814,16683),A(4887,6815,16684),A(4888,6816,16685),A(4008,6818,16687),A(4885,6813,16682))
end


local function GetPaladinAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"PA_DG_AQ_1",PLATE,PALADIN,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_DG_AQ_1",TRANSMOG,A(5713,8411),A(5714,8412))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"PA_DG_02",PLATE,PALADIN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5915,39717),A(5917,39721),A(5913,39718),A(5912,39722),A(5914,39719),A(5910,39716),A(5916,39720),A(5911,39715))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"PA_DG_01",PLATE,PALADIN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4926,39712),A(4928,39713),A(4925,39711),A(4921,39709),A(4923,39708),A(4922,39707),A(4927,39710),A(4924,39714))
end


local function GetPriestAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"PR_DG_AQ_1",CLOTH,PRIEST,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_DG_AQ_1",TRANSMOG,A(5715,8421),A(2409,8422))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"PR_DG_02",CLOTH,PRIEST,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5904,39623),A(5906,39620),A(5907,39619),A(5903,39622),A(5905,39624),A(5902,39625),A(5909,39621),A(5908,39626))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"PR_DG_01",CLOTH,PRIEST,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4895,39612),A(4897,39611),A(4892,39616),A(4899,39618),A(4894,39615),A(4898,39614),A(4896,39613),A(4893,39617))
end


local function GetRogueAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"RO_DG_AQ_1",LEATHER,ROGUE,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_DG_AQ_1",TRANSMOG,A(5717,8417),A(1832,8418))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"RO_DG_02",LEATHER,ROGUE,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5873,39668),A(5876,39672),A(5877,39674),A(5872,39669),A(5874,39671),A(5870,39670),A(5875,39673),A(5871,39667))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"RO_DG_01",LEATHER,ROGUE,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4909,39665),A(4910,39666),A(4685,6852),A(3879,39660),A(4913,39662),A(567,39664),A(4911,39663),A(4912,39661))    
end


local function GetShamanAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON                
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"SH_DG_AQ_1",MAIL,SHAMAN,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_DG_AQ_1",TRANSMOG,A(5715,8413),A(2676,8414))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"SH_DG_02",MAIL,SHAMAN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5920,39699),A(5924,39704),A(5925,39705),A(5918,39701),A(5922,39700),A(5921,39702),A(5923,39706),A(5919,39703))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"SH_DG_01",MAIL,SHAMAN,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4870,39691),A(4872,39693),A(4869,39695),A(4874,39694),A(4875,39696),A(4876,39698),A(4871,39692),A(4873,39697))    
end


local function GetWarlockAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON                
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"WK_DG_AQ_1",CLOTH,WARLOCK,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_DG_AQ_1",TRANSMOG,A(5717,8425),A(3006,8426))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"WK_DG_02",CLOTH,WARLOCK,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5898,39635),A(5897,39639),A(5899,39642),A(5895,39637),A(5901,39641),A(5894,39638),A(5896,39636),A(5900,39640))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"WK_DG_01",CLOTH,WARLOCK,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4900,39632),A(4903,39631),A(4902,39630),A(4905,39634),A(4907,39628),A(4904,39627),A(4901,39633),A(4906,39629))
end


local function GetWarriorAppearances()
    local col, set, loc = ""

    col = SetCollector.DUNGEON
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"WR_DG_AQ_1",PLATE,WARRIOR,ANY_FACTION)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_DG_AQ_1",TRANSMOG,A(5712,8409),A(3841,8410))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"WR_DG_02",PLATE,WARRIOR,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5867,39735),A(5869,39737),A(5865,39733),A(5864,39732),A(5866,39734),A(5862,39738),A(2868,39736),A(5863,39731))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"WR_DG_01",PLATE,WARRIOR,ANY_FACTION)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4930,39727),A(4932,39730),A(4929,39728),A(4934,39726),A(4936,39725),A(4935,39724),A(4931,39729),A(4933,39723))
end

--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion01Appearances(expansion)
    if expansion.v01 then
        -- Common
        --GetLegendaries()
        GetDungeonAppearances()
        GetRaidAppearances()
        -- Class-specific
        GetDruidAppearances()
        GetHunterAppearances()
        GetMageAppearances()
        GetPaladinAppearances()
        GetPriestAppearances()
        GetRogueAppearances()
        GetShamanAppearances()
        GetWarlockAppearances()
        GetWarriorAppearances()
    end
end


function SetCollector:GetVersion01Status()
    return SetCollector:GetExpansionStatus("1")
end


function SetCollector:SetVersion01Status()
    SetCollector:SetExpansionStatus("1")
end