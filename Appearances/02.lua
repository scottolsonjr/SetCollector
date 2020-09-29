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

local function A(...) return SetCollector:CreateAppearance(...) end

local function GetLegendaries()
    local col = SetCollector.LEGENDARY
    local set = ""
                
    set = SetCollector:AddSetLegacy(70000,nil,col,2,"LG_MELEE_70",ANY,ANY,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_MELEE_70",TRANSMOG,A(8460,15136,32837),A(8461,15137,32838))
end


local function GetDruidAppearances()
    local col, set, loc = ""
                
    col = SetCollector.RAID
    loc = "LOC_RAID_0204"
    set = SetCollector:AddSetLegacy(70000,nil,col,10204,"DR_TR_CASTER_06B",LEATHER,DRUID,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_TR_CASTER_06",TRANSMOG,A(8882,15815),A(8864,15795),A(8952,15941),A(8962,15974),A(8941,15950),A(9000,16036),A(8838,15769),A(9009,16053))
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSetLegacy(70000,nil,col,10203,"DR_TR_CASTER_06",LEATHER,DRUID,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_TR_CASTER_06",TRANSMOG,A(8087,14108),A(8091,14117),A(8088,14111),A(8388,15974),A(8086,14103),A(8027,14918),A(8089,14114),A(8389,14930))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSetLegacy(70000,nil,col,10202,"DR_TR_CASTER_05",LEATHER,DRUID,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_TR_CASTER_05",TRANSMOG,A(7858,13651),A(7860,13653),A(7856,13649),A(7857,13650),A(7731,13439),A(7859,13652),A(7766,13531))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSetLegacy(70000,nil,col,10201,"DR_TR_CASTER_04",LEATHER,DRUID,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_TR_CASTER_04",TRANSMOG,A(7467,12969),A(7470,12971),A(7468,12967),A(7226,12491),A(7471,12968),A(7313,12621),A(7469,12970),A(7350,12703))

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"DR_DG_03",LEATHER,DRUID,ANY,ANY)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_DG_03",TRANSMOG,A(7162,12416),A(6923,12028),A(7080,12324),A(6855,11916),A(6998,12118))
end


local function GetHunterAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0204"
    set = SetCollector:AddSetLegacy(70000,nil,col,10204,"HU_TR_RANGED_06B",MAIL,HUNTER,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_TR_RANGED_06B",TRANSMOG,A(8924,15885),A(8853,15784),A(8871,15804),A(8961,15971),A(8933,15894),A(8997,16032),A(8837,15768),A(9008,16051))
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSetLegacy(70000,nil,col,10203,"HU_TR_RANGED_06",MAIL,HUNTER,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_TR_RANGED_06",TRANSMOG,A(8070,14074),A(8073,14077),A(8071,14075),A(8069,14072),A(8072,14076))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSetLegacy(70000,nil,col,10202,"HU_TR_RANGED_05",MAIL,HUNTER,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_TR_RANGED_05",TRANSMOG,A(7821,13576),A(7823,13578),A(7819,13574),A(7756,13472),A(7820,13575),A(7771,13491),A(7822,13577),A(7715,13414))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSetLegacy(70000,nil,col,10201,"HU_TR_RANGED_04",MAIL,HUNTER,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_TR_RANGED_04",TRANSMOG,A(7462,12957),A(7465,12960),A(7463,12958),A(7227,12492),A(7466,12961),A(7314,12622),A(7464,12959),A(7345,12697))

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"HU_DG_03",MAIL,HUNTER,ANY,ANY)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_DG_03",TRANSMOG,A(7121,12367),A(6961,12076),A(7101,12345),A(6856,11922),A(6999,12119))
end


local function GetMageAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0204"
    set = SetCollector:AddSetLegacy(70000,nil,col,10204,"MA_TR_CASTER_06B",CLOTH,MAGE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_TR_CASTER_06B",TRANSMOG,A(8953,15948),A(8951,15936),A(8942,15942),A(8963,15975),A(8954,15949),A(9001,16038),A(8949,15930),A(9010,16055))
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSetLegacy(70000,nil,col,10203,"MA_TR_CASTER_06",CLOTH,MAGE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_TR_CASTER_06",TRANSMOG,A(8098,14124),A(8101,14127),A(8099,14125),A(8365,14894),A(8097,14123),A(),A(8100,14126),A(8345,14870))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSetLegacy(70000,nil,col,10202,"MA_TR_CASTER_05",CLOTH,MAGE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_TR_CASTER_05",TRANSMOG,A(7848,13624),A(7850,13628),A(7845,13619),A(7697,13383),A(7847,13623),A(7849,13625),A(7785,13507))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSetLegacy(70000,nil,col,10201,"MA_TR_CASTER_04",CLOTH,MAGE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_TR_CASTER_04",TRANSMOG,A(7457,12952),A(7460,12955),A(7458,12953),A(7228,12495),A(7461,12956),A(7271,12549),A(7459,12954),A(7249,16194))    

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"MA_DG_03",CLOTH,MAGE,ANY,ANY)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_DG_03",TRANSMOG,A(7122,12368),A(6924,12029),A(7102,12346),A(6874,11942),A(6981,12097))
end


local function GetPaladinAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0204"
    set = SetCollector:AddSetLegacy(70000,nil,col,10204,"PA_TR_MELEE_06B",PLATE,PALADIN,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_TR_MELEE_06B",TRANSMOG,A(8880,15813),A(8852,15783),A(8869,15801),A(8956,15960),A(8877,15810),A(8975,15993),A(8836,15767),A(9003,16042))
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSetLegacy(70000,nil,col,10203,"PA_TR_MELEE_06",PLATE,PALADIN,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_TR_MELEE_06",TRANSMOG,A(8064,14060),A(8067,14068),A(8065,14061),A(8370,14901),A(8063,14053),A(8010,13970),A(8066,14064),A(8349,14875))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSetLegacy(70000,nil,col,10202,"PA_TR_MELEE_05",PLATE,PALADIN,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_TR_MELEE_05",TRANSMOG,A(7816,13566),A(7818,13568),A(7814,13564),A(7815,13565),A(7718,13420),A(7817,13567),A(7757,13473))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSetLegacy(70000,nil,col,10201,"PA_TR_MELEE_04",PLATE,PALADIN,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_TR_MELEE_04",TRANSMOG,A(7452,12949),A(7455,12951),A(7453,12947),A(7246,12518),A(7456,12948),A(7339,12685),A(7454,12950),A(7274,12552))

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"PA_DG_03",PLATE,PALADIN,ANY,ANY)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_DG_03",TRANSMOG,A(7123,12369),A(6925,12030),A(7081,12325),A(6890,11963),A(6982,12098))
end


local function GetPriestAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0204"
    set = SetCollector:AddSetLegacy(70000,nil,col,10204,"PR_TR_CASTER_06B",CLOTH,PRIEST,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_TR_CASTER_06B",TRANSMOG,A(8929,15890),A(8859,15790),A(8875,15808),A(8957,15963),A(8944,15912),A(8989,16018),A(8839,15770),A(9004,16044))
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSetLegacy(70000,nil,col,10203,"PR_TR_CASTER_06",CLOTH,PRIEST,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_TR_CASTER_06",TRANSMOG,A(8104,14132),A(8107,14138),A(8105,14133),A(8424,15004),A(8102,14129),A(8427,15009),A(8106,14135),A(7999,13959))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSetLegacy(70000,nil,col,10202,"PR_TR_CASTER_05",CLOTH,PRIEST,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_TR_CASTER_05",TRANSMOG,A(7835,13592),A(7834,13594),A(7830,13590),A(7366,12735),A(7831,13591),A(7762,13537),A(7833,13593))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSetLegacy(70000,nil,col,10201,"PR_TR_CASTER_04",CLOTH,PRIEST,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_TR_CASTER_04",TRANSMOG,A(7446,12934),A(7449,12936),A(7447,12932),A(7245,12517),A(7451,12933),A(7312,12618),A(7448,12935),A(7318,12628))

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"PR_DG_03",CLOTH,PRIEST,ANY,ANY)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_DG_03",TRANSMOG,A(7195,12457),A(6944,12058),A(7103,12347),A(6891,11964),A(7000,12120))
end


local function GetRogueAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0204"
    set = SetCollector:AddSetLegacy(70000,nil,col,10204,"RO_TR_MELEE_06B",LEATHER,ROGUE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RO_TR_MELEE_06B",TRANSMOG,A(8881,15814),A(8854,15785),A(8945,15913),A(8964,15976),A(8876,15914),A(9002,16039),A(8849,15780),A(9011,16056))
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSetLegacy(70000,nil,col,10203,"RO_TR_MELEE_06",LEATHER,ROGUE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RO_TR_MELEE_06",TRANSMOG,A(8082,14097),A(8085,14100),A(8083,14098),A(8081,14096),A(8084,14099),A(8004,13964))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSetLegacy(70000,nil,col,10202,"RO_TR_MELEE_05",LEATHER,ROGUE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RO_TR_MELEE_05",TRANSMOG,A(7826,13581),A(7829,13584),A(7824,13579),A(7719,13421),A(7825,13580),A(7804,13543),A(7828,13583),A(7764,13502))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSetLegacy(70000,nil,col,10201,"RO_TR_MELEE_04",LEATHER,ROGUE,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"RO_TR_MELEE_04",TRANSMOG,A(7441,12922),A(7444,12925),A(7442,12923),A(7247,12519),A(7445,12926),A(7348,12701),A(7443,12924),A(7319,12630))

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"RO_DG_03",LEATHER,ROGUE,ANY,ANY)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_DG_03",TRANSMOG,A(7196,12458),A(6945,12059),A(7082,12326),A(6875,11943),A(7019,12146))
end


local function GetShamanAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0204"
    set = SetCollector:AddSetLegacy(70000,nil,col,10204,"SH_TR_CASTER_06B",MAIL,SHAMAN,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_TR_CASTER_06B",TRANSMOG,A(8923,15884),A(8863,15794),A(8872,15805),A(8959,15966),A(8940,15952),A(8995,16027),A(8948,15927),A(9006,16047))
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSetLegacy(70000,nil,col,10203,"SH_TR_CASTER_06",MAIL,SHAMAN,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_TR_CASTER_06",TRANSMOG,A(8076,14085),A(8080,14094),A(8078,14088),A(7986,13946),A(8074,14079),A(8358,14885),A(8079,14091))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSetLegacy(70000,nil,col,10202,"SH_TR_CASTER_05",MAIL,SHAMAN,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_TR_CASTER_05",TRANSMOG,A(7838,13602),A(7840,13604),A(7836,13600),A(7837,13601),A(7759,15497),A(7839,13603),A(7768,13506))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSetLegacy(70000,nil,col,10201,"SH_TR_CASTER_04",MAIL,SHAMAN,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_TR_CASTER_04",TRANSMOG,A(7436,12914),A(7439,12916),A(7437,12912),A(7241,12511),A(7440,12913),A(7273,12551),A(7438,12915),A(7290,13849))

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"SH_DG_03",MAIL,SHAMAN,ANY,ANY)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_DG_03",TRANSMOG,A(7163,12417),A(6962,12077),A(7104,12348),A(6876,11944),A(7020,12147))
end


local function GetWarlockAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    --loc = "LOC_RAID_0204"
    --set = SetCollector:AddSetLegacy(70000,nil,col,10204,"WK_TR_CASTER_06B",CLOTH,WARLOCK,ANY,ANY,loc)
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_TR_CASTER_06B",TRANSMOG,A(8093,14119),A(8096,14122),A(8094,14120),A(8958,15965),A(8092,14118),A(8994,16026),A(8095,14121),A(9005,16045))
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSetLegacy(70000,nil,col,10203,"WK_TR_CASTER_06",CLOTH,WARLOCK,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_TR_CASTER_06",TRANSMOG,A(8093,14119),A(8096,14122),A(8094,14120),A(8958,15965),A(8092,14118),A(8994,16026),A(8095,14121),A(9005,16045))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSetLegacy(70000,nil,col,10202,"WK_TR_CASTER_05",CLOTH,WARLOCK,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_TR_CASTER_05",TRANSMOG,A(7852,13630),A(7855,13633),A(7854,13632),A(7851,13629),A(7853,13631))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSetLegacy(70000,nil,col,10201,"WK_TR_CASTER_04",CLOTH,WARLOCK,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_TR_CASTER_04",TRANSMOG,A(7414,12850),A(7418,12854),A(7415,12851),A(7419,12855),A(7417,12853))

    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"WK_DG_03",CLOTH,WARLOCK,ANY,ANY)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_DG_03",TRANSMOG,A(7197,12459),A(6946,12060),A(7105,12349),A(6892,11965),A(7035,12168))
end


local function GetWarriorAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    --loc = "LOC_RAID_0204"
    --set = SetCollector:AddSetLegacy(70000,nil,col,10204,"WR_TR_TANK_06B",PLATE,WARRIOR,ANY,ANY,loc)
    --    SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_TR_TANK_06B",TRANSMOG,A(8059),A(8062),A(8060),A(8960),A(8058),A(8996),A(8061),A(9007))
    loc = "LOC_RAID_0203"
    set = SetCollector:AddSetLegacy(70000,nil,col,10203,"WR_TR_TANK_06",PLATE,WARRIOR,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_TR_TANK_06",TRANSMOG,A(8059),A(8062),A(8060),A(8960),A(8058),A(8996),A(8061),A(9007))
    loc = "LOC_RAID_0202"
    set = SetCollector:AddSetLegacy(70000,nil,col,10202,"WR_TR_TANK_05",PLATE,WARRIOR,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_TR_TANK_05",TRANSMOG,A(7811),A(7813),A(7809),A(7810),A(7812))
    loc = "LOC_RAID_0201"
    set = SetCollector:AddSetLegacy(70000,nil,col,10201,"WR_TR_TANK_04",PLATE,WARRIOR,ANY,ANY,loc)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_TR_TANK_04",TRANSMOG,A(7431),A(7434),A(7432),A(7435),A(7433))

                
    col = SetCollector.DUNGEON
    set = SetCollector:AddSetLegacy(70000,nil,col,30,"WR_DG_03",PLATE,WARRIOR,ANY,ANY)
        SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_DG_03",TRANSMOG,A(7164,15418),A(6963,12078),A(7083,12327),A(6857,11923),A(7036,12191))
end


--
--    GLOBAL FUNCTIONS
--

function SetCollector:GetVersion02Appearances(expansion)
    if expansion.v02 then
        -- Common
        --GetLegendaries()
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