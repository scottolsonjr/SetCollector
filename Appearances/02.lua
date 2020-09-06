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

-- Factions
local ALLIANCE         = SetCollector.ALLIANCE
local HORDE         = SetCollector.HORDE

-- Roles
local TANK             = SetCollector.TANK
local HEALER         = SetCollector.HEALER
local CASTER         = SetCollector.CASTER
local RANGED         = SetCollector.RANGED
local MELEE         = SetCollector.MELEE

-- Obtainable
local OBTAIN        = SetCollector.OBTAIN
local NOOBTAIN         = SetCollector.NOOBTAIN

-- Useable as Transmog
local TRANSMOG         = SetCollector.TRANSMOG
local NOTRANSMOG     = SetCollector.NOTRANSMOG


--
-- LOCAL FUNCTIONS
--

local function A(a, s, i, ...)
    return SetCollector:A(a, s, i, ...)
end


local function GetLegendaries()
    local col = SetCollector.LEGENDARY
    local set = ""
                
    set = SetCollector:AddSet(70000,nil,col,2,"LG_MELEE_70",ANY,ANY,MELEE,ANY)
                SetCollector:AddVariant(70000,nil,col,set,"LG_MELEE_70",TRANSMOG,A(8460,15136,32837),A(8461,15137,32838))
end


local function GetDruidAppearances()
    local col, set, loc = ""
                
    col = SetCollector.RAID
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSet(70000,nil,col,10203,"DR_TR_CASTER_06",LEATHER,DRUID,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"DR_TR_CASTER_06",TRANSMOG,A(8087,14108,31040),A(8091,14117,31049),A(8088,14111,31043),A(8962,15974,34446),A(8086,14103,31035),A(9000,16036,34555),A(8089,14114,31046),A(9009,16053,34572))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSet(70000,nil,col,10202,"DR_TR_CASTER_05",LEATHER,DRUID,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"DR_TR_CASTER_05",TRANSMOG,A(7858,13651,30233),A(7860,13653,30235),A(7856,13649,30231),A(7857,13650,30232),A(7859,13652,30234))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSet(70000,nil,col,10201,"DR_TR_CASTER_04",LEATHER,DRUID,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"DR_TR_CASTER_04",TRANSMOG,A(7467,12969,29093),A(7470,12971,29095),A(7468,12967,29091),A(7471,12968,29092),A(7469,12970,29094))
end


local function GetHunterAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSet(70000,nil,col,10203,"HU_TR_RANGED_06",MAIL,HUNTER,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"HU_TR_RANGED_06",TRANSMOG,A(8070,14074,31003),A(8073,14077,31006),A(8071,14075,31004),A(8961,15971,34443),A(8069,14072,31001),A(8997,16032,34549),A(8072,14076,31005),A(9008,16051,34570))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSet(70000,nil,col,10202,"HU_TR_RANGED_05",MAIL,HUNTER,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"HU_TR_RANGED_05",TRANSMOG,A(7821,13576,30141),A(7823,13578,30143),A(7819,13574,30139),A(7820,13575,30140),A(7822,13577,30142))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSet(70000,nil,col,10201,"HU_TR_RANGED_04",MAIL,HUNTER,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"HU_TR_RANGED_04",TRANSMOG,A(7462,12957,29081),A(7465,12960,29084),A(7463,12958,29082),A(7466,12961,29085),A(7464,12959,29083))
end


local function GetMageAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSet(70000,nil,col,10203,"MA_TR_CASTER_06",CLOTH,MAGE,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"MA_TR_CASTER_06",TRANSMOG,A(8098,14124,31056),A(8101,14127,31059),A(8099,14125,31057),A(8963,15975,34447),A(8097,14123,31055),A(9001,16038,34557),A(8100,14126,31058),A(9010,16055,34574))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSet(70000,nil,col,10202,"MA_TR_CASTER_05",CLOTH,MAGE,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"MA_TR_CASTER_05",TRANSMOG,A(7848,13624,30206),A(7850,13628,30210),A(7845,13619,30196),A(7847,13623,30205),A(7849,13625,30207))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSet(70000,nil,col,10201,"MA_TR_CASTER_04",CLOTH,MAGE,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"MA_TR_CASTER_04",TRANSMOG,A(7457,12952,29076),A(7460,12955,29079),A(7458,12953,29077),A(7461,12956,29080),A(7459,12954,29078))    
end


local function GetPaladinAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSet(70000,nil,col,10203,"PA_TR_MELEE_06",PLATE,PALADIN,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"PA_TR_MELEE_06",TRANSMOG,A(8064,14060),A(8067,14068),A(8065,14061),A(8956,15960),A(8063,14053),A(8975,15993),A(8066,14064),A(9003,16042))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSet(70000,nil,col,10202,"PA_TR_MELEE_05",PLATE,PALADIN,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"PA_TR_MELEE_05",TRANSMOG,A(7816,13566),A(7818,13568),A(7814,13564),A(7815,13565),A(7817,13567))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSet(70000,nil,col,10201,"PA_TR_MELEE_04",PLATE,PALADIN,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"PA_TR_MELEE_04",TRANSMOG,A(7452,12949),A(7455,12951),A(7453,12947),A(7456,12948),A(7454,12950))
end


local function GetPriestAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSet(70000,nil,col,10203,"PR_TR_CASTER_06",CLOTH,PRIEST,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"PR_TR_CASTER_06",TRANSMOG,A(8104,14132),A(8107,14138),A(8105,14133),A(8957,15963),A(8102,14129),A(8989,16018),A(8106,14135),A(9004,16044))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSet(70000,nil,col,10202,"PR_TR_CASTER_05",CLOTH,PRIEST,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"PR_TR_CASTER_05",TRANSMOG,A(7835,13592),A(7834,13594),A(7830,13590),A(7831,13591),A(7833,13593))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSet(70000,nil,col,10201,"PR_TR_CASTER_04",CLOTH,PRIEST,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"PR_TR_CASTER_04",TRANSMOG,A(7446,12934),A(7449,12936),A(7447,12932),A(7451,12933),A(7448,12935))
end


local function GetRogueAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSet(70000,nil,col,10203,"RO_TR_MELEE_06",LEATHER,ROGUE,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"RO_TR_MELEE_06",TRANSMOG,A(8082,14097),A(8085,14100),A(8083,14098),A(8964,15976),A(8081,14096),A(9002,16039),A(8084,14099),A(9011,16056))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSet(70000,nil,col,10202,"RO_TR_MELEE_05",LEATHER,ROGUE,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"RO_TR_MELEE_05",TRANSMOG,A(7826,13581),A(7829,13584),A(7824,13579),A(7825,13580),A(7828,13583))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSet(70000,nil,col,10201,"RO_TR_MELEE_04",LEATHER,ROGUE,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"RO_TR_MELEE_04",TRANSMOG,A(7441,12922),A(7444,12925),A(7442,12923),A(7445,12926),A(7443,12924))
end


local function GetShamanAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSet(70000,nil,col,10204,"SH_TR_CASTER_06B",MAIL,SHAMAN,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"SH_TR_CASTER_06B",TRANSMOG,A(8923,15884),A(8863,15794),A(8872,15805),A(8959,15966),A(8940,15952),A(8995,16027),A(8948,15927),A(9006,16047))
                
    set = SetCollector:AddSet(70000,nil,col,10203,"SH_TR_CASTER_06",MAIL,SHAMAN,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"SH_TR_CASTER_06",TRANSMOG,A(8076,14085),A(8080,14094),A(8078,14088),A(8959,15966),A(8074,14079),A(8995,16027),A(8079,14091),A(9006,16047))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSet(70000,nil,col,10202,"SH_TR_CASTER_05",MAIL,SHAMAN,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"SH_TR_CASTER_05",TRANSMOG,A(7838,13602),A(7840,13604),A(7836,13600),A(7837,13601),A(7759,15497),A(7839,13603),A(7768,13506))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSet(70000,nil,col,10201,"SH_TR_CASTER_04",MAIL,SHAMAN,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"SH_TR_CASTER_04",TRANSMOG,A(7436,12914),A(7439,12916),A(7437,12912),A(7241,12511),A(7440,12913),A(7273,12551),A(7438,12915),A(7290,13849))
end


local function GetWarlockAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSet(70000,nil,col,10203,"WK_TR_CASTER_06",CLOTH,WARLOCK,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"WK_TR_CASTER_06",TRANSMOG,A(8093,14119),A(8096,14122),A(8094,14120),A(8958,15965),A(8092,14118),A(8994,16026),A(8095,14121),A(9005,16045))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSet(70000,nil,col,10202,"WK_TR_CASTER_05",CLOTH,WARLOCK,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"WK_TR_CASTER_05",TRANSMOG,A(7852,13630),A(7855,13633),A(7854,13632),A(7851,13629),A(7853,13631))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSet(70000,nil,col,10201,"WK_TR_CASTER_04",CLOTH,WARLOCK,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"WK_TR_CASTER_04",TRANSMOG,A(7414,12850),A(7418,12854),A(7415,12851),A(7419,12855),A(7417,12853))
end


local function GetWarriorAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSet(70000,nil,col,10203,"WR_TR_TANK_06",PLATE,WARRIOR,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"WR_TR_TANK_06",TRANSMOG,A(8059),A(8062),A(8060),A(8960),A(8058),A(8996),A(8061),A(9007))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSet(70000,nil,col,10202,"WR_TR_TANK_05",PLATE,WARRIOR,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"WR_TR_TANK_05",TRANSMOG,A(7811),A(7813),A(7809),A(7810),A(7812))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSet(70000,nil,col,10201,"WR_TR_TANK_04",PLATE,WARRIOR,ANY,ANY,loc)
                SetCollector:AddVariant(70000,nil,col,set,"WR_TR_TANK_04",TRANSMOG,A(7431),A(7434),A(7432),A(7435),A(7433))
end


--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion02Appearances(expansion)
    if expansion.v02 then
        -- Common
        GetLegendaries()
        -- Class-specific
        GetDruidAppearances()
        GetHunterAppearances()
        GetMageAppearances()
        GetPaladinAppearances()
        GetPriestAppearances()
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