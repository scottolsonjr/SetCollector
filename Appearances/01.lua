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
    
    set = SetCollector:AddSetLegacy(70000,nil,col,1,"LG_60",ANY,ANY,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"LG_60",TRANSMOG,A(5131,7098,17182))
end

local function GetDungeonAppearances()
    local col = SetCollector.DUNGEON
    local set = ""
    
    set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_CLOTH_03",CLOTH,ANY,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_CLOTH_03",TRANSMOG,A(7071,12315),A(6956,12071),A(7069,12313),A(6852,11913),A(7018,12145))
    set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_LEATHER_03",LEATHER,ANY,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_LEATHER_03",TRANSMOG,A(7098,12342),A(6957,12072),A(7116,12362),A(6888,11960),A(6980,12096))
    set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_MAIL_03",MAIL,ANY,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_MAIL_03",TRANSMOG,A(7070,12314),A(6920,12009),A(7184,12446),A(6887,11958),A(7030,12162))
    set = SetCollector:AddSetLegacy(70000,nil,col,31,"DG_PLATE_03",PLATE,ANY,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DG_PLATE_03",TRANSMOG,A(7099,12343),A(6941,12055),A(7186,12448),A(6870,11938),A(6996,12116))
end


local function GetDruidAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0104"
    set = SetCollector:AddSetLegacy(70000,nil,col,10104,"DR_RAID_0104",LEATHER,DRUID,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_RAID_0104",TRANSMOG,A(5687,8384,21353),A(5688,8385,21354),A(5691,8388,21357),A(5690,8387,21356),A(5689,8386,21355))
    loc = "LOC_RAID_0103"
    set = SetCollector:AddSetLegacy(70000,nil,col,10103,"DR_RAID_0103",LEATHER,DRUID,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_RAID_0103",TRANSMOG,A(6017,8866,22490),A(6018,8867,22491),A(6015,8864,22488),A(6022,8871,22495),A(6020,8869,22493),A(6021,8870,22494),A(6016,8865,22489),A(6019,8868,22492),A(nil,nil,23064))
    loc = "LOC_RAID_0102"
    set = SetCollector:AddSetLegacy(70000,nil,col,10102,"DR_RAID_0102",LEATHER,DRUID,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_RAID_0102",TRANSMOG,A(5024,6964,16900),A(5026,6966,16902),A(5021,6961,16897),A(5028,6968,16904),A(5023,6963,16899),A(5027,6967,16903),A(5025,6965,16901),A(5022,6962,16898))
    loc = "LOC_RAID_0101"
    set = SetCollector:AddSetLegacy(70000,nil,col,10101,"DR_RAID_0101",LEATHER,DRUID,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_RAID_0101",TRANSMOG,A(4979,6919,16834),A(4981,6921,16836),A(4978,6918,16833),A(4975,6915,16830),A(4976,6916,16831),A(4973,6913,16828),A(4980,6920,16835),A(4974,6914,16829))

    col = SetCollector.DUNGEON
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"DR_DG_AQ_1",LEATHER,DRUID,ANY,ANY)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"DR_DG_AQ_1",TRANSMOG,A(5715,8419,21407),A(2979,8420,21409)) --,A(nil,nil,21408))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"DR_DG_02",LEATHER,DRUID,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5929,39654,78249),A(5932,39652,78247),A(5933,39657,78252),A(5928,39658,78253),A(5930,39653,78248),A(5926,39651,78246),A(5931,39655,78250),A(5927,39656,78251))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ORIGINAL",TRANSMOG,A(5929,8723,22109),A(5932,8726,22112),A(5933,8727,22113),A(5928,8722,22108),A(5930,8724,22110),A(5926,8720,22106),A(5931,8725,22111),A(5927,8721,22107))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"DR_DG_01",LEATHER,DRUID,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4920,39643,78238),A(4918,39644,78239),A(4908,39647,78242),A(4914,39645,78240),A(4917,39646,78241),A(4916,39649,78244),A(4919,39650,78245),A(4915,39648,78243))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ORIGINAL",TRANSMOG,A(4920,6851,16720),A(4918,6849,16718),A(4908,6837,16706),A(4914,6845,16714),A(4917,6848,16717),A(4916,6847,16716),A(4919,6850,16719),A(4915,6846,16715))
end


local function GetHunterAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0104"
    set = SetCollector:AddSetLegacy(70000,nil,col,10104,"HU_RAID_0104",MAIL,HUNTER,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_RAID_0104",TRANSMOG,A(5698,8395),A(5699,8396),A(5701,8398),A(5736,8541),A(5700,8397),A(5697,8394))
    loc = "LOC_RAID_0103"
    set = SetCollector:AddSetLegacy(70000,nil,col,10103,"HU_RAID_0103",MAIL,HUNTER,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_RAID_0103",TRANSMOG,A(5993,8840),A(5994,8841),A(5991,8838),A(5998,8845),A(5996,8843),A(5997,8844),A(5992,8839),A(5995,8842)) --,A(nil,nil,23067))
    loc = "LOC_RAID_0102"
    set = SetCollector:AddSetLegacy(70000,nil,col,10102,"HU_RAID_0102",MAIL,HUNTER,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_RAID_0102",TRANSMOG,A(5062,7003),A(5060,7001),A(5065,7006),A(5058,6999),A(5063,7004),A(5059,7000),A(5061,7002),A(5064,7005))
    loc = "LOC_RAID_0101"
    set = SetCollector:AddSetLegacy(70000,nil,col,10101,"HU_RAID_0101",MAIL,HUNTER,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_RAID_0101",TRANSMOG,A(4991,6931),A(4993,6933),A(4990,6930),A(4995,6935),A(4997,6937),A(4996,6936),A(4992,6932),A(4994,6934))

    col = SetCollector.DUNGEON
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"HU_DG_AQ_1",MAIL,HUNTER,ANY,ANY)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"HU_DG_AQ_1",TRANSMOG,A(5712,8415,21401),A(5716,8416,21403)) --,A(nil,nil,21402))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"HU_DG_02",MAIL,HUNTER,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5880,39689),A(5882,39686),A(5884,39687),A(5879,39688),A(5881,39683),A(5878,39690),A(5883,39685),A(5885,39684))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ORIGINAL",TRANSMOG,A(5880,8674),A(5882,8676),A(5884,8678),A(5879,8673),A(5881,8675),A(5878,8672),A(5883,8677),A(5885,8679))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"HU_DG_01",MAIL,HUNTER,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4880,39680),A(4882,39678),A(4877,39675),A(4884,39682),A(4879,39676),A(4883,39679),A(4881,39681),A(4878,39677))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ORIGINAL",TRANSMOG,A(4880,6808),A(4882,6810),A(4877,6805),A(4884,6812),A(4879,6807),A(4883,6811),A(4881,6809),A(4878,6806))
end


local function GetMageAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0104"
    set = SetCollector:AddSetLegacy(70000,nil,col,10104,"MA_RAID_0104",CLOTH,MAGE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_RAID_0104",TRANSMOG,A(5682,8378),A(5681,8376),A(5679,8374),A(5780,8531),A(1475,8377),A(5680,8375))
    loc = "LOC_RAID_0103"
    set = SetCollector:AddSetLegacy(70000,nil,col,10103,"MA_RAID_0103",CLOTH,MAGE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_RAID_0103",TRANSMOG,A(6025,8874),A(6026,8875),A(6023,8872),A(1474,8879),A(6028,8877),A(6029,8878),A(6024,8873),A(6027,8876))
    loc = "LOC_RAID_0102"
    set = SetCollector:AddSetLegacy(70000,nil,col,10102,"MA_RAID_0102",CLOTH,MAGE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_RAID_0102",TRANSMOG,A(5038,6978),A(5041,6981),A(5040,6980),A(5042,6982),A(5037,6977),A(4963,6903),A(5039,6979),A(5036,6976))
    loc = "LOC_RAID_0101"
    set = SetCollector:AddSetLegacy(70000,nil,col,10101,"MA_RAID_0101",CLOTH,MAGE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_RAID_0101",TRANSMOG,A(4941,6880),A(4943,6882),A(4944,6883),A(4945,6884),A(4947,6886),A(4948,6887),A(4942,6881),A(4946,6885))

    col = SetCollector.DUNGEON
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"MA_DG_AQ_1",CLOTH,MAGE,ANY,ANY)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"MA_DG_AQ_1",TRANSMOG,A(5713,8423,21413),A(2437,8424,21415))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"MA_DG_02",CLOTH,MAGE,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5889,39605,78198),A(5892,39608,78201),A(5893,39607,78200),A(5887,39610,78203),A(5890,39604,78197),A(5886,39609,78202),A(5891,39606,78199),A(5888,39603,78196))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ORIGINAL",TRANSMOG,A(5889,8683,22065),A(5892,8686,22068),A(5893,8687,22069),A(5887,8681,22063),A(5890,8684,22066),A(5886,8680,22062),A(5891,8685,22067),A(5888,8682,22064))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"MA_DG_01",CLOTH,MAGE,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4889,39597,78188),A(4891,39600,78191),A(4890,39599,78190),A(4886,39602,78193),A(4887,39596,78187),A(4888,39601,78192),A(4008,39598,78189),A(4885,39595,78186))
                SetCollector:AddVariantLegacy(70000,nil,col,set,"ORIGINAL",TRANSMOG,A(4889,6817,16686),A(4891,6820,16689),A(4890,6819,16688),A(4886,6814,16683),A(4887,6815,16684),A(4888,6816,16685),A(4008,6818,16687),A(4885,6813,16682))
end


local function GetPaladinAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0104"
    set = SetCollector:AddSetLegacy(70000,nil,col,10104,"PA_RAID_0104",PLATE,PALADIN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_RAID_0104",TRANSMOG,A(5707,8404),A(5711,8408),A(5709,8406),A(5734,8562),A(5733,5847),A(5710,8407),A(5708,8405))
    loc = "LOC_RAID_0103"
    set = SetCollector:AddSetLegacy(70000,nil,col,10103,"PA_RAID_0103",PLATE,PALADIN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_RAID_0103",TRANSMOG,A(5987,8834),A(5988,8835),A(5984,8831),A(5983,8830),A(5985,8832),A(5990,8837),A(5986,8833),A(5989,8836))
    loc = "LOC_RAID_0102"
    set = SetCollector:AddSetLegacy(70000,nil,col,10102,"PA_RAID_0102",PLATE,PALADIN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_RAID_0102",TRANSMOG,A(5078,7019),A(5076,7017),A(5081,7022),A(5074,7015),A(5079,7020),A(5075,7016),A(5077,7018),A(5080,7021))
    loc = "LOC_RAID_0101"
    set = SetCollector:AddSetLegacy(70000,nil,col,10101,"PA_RAID_0101",PLATE,PALADIN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_RAID_0101",TRANSMOG,A(4999,6939),A(5001,6941),A(4998,6938),A(5002,6942),A(5005,6945),A(5003,6943),A(5000,6940),A(5004,6944))

    col = SetCollector.DUNGEON
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"PA_DG_AQ_1",PLATE,PALADIN,ANY,ANY)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"PA_DG_AQ_1",TRANSMOG,A(5713,8411),A(5714,8412))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"PA_DG_02",PLATE,PALADIN,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5915,39717),A(5917,39721),A(5913,39718),A(5912,39722),A(5914,39719),A(5910,39716),A(5916,39720),A(5911,39715))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"PA_DG_01",PLATE,PALADIN,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4926,39712),A(4928,39713),A(4925,39711),A(4921,39709),A(4923,39708),A(4922,39707),A(4927,39710),A(4924,39714))
end


local function GetPriestAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0104"
    set = SetCollector:AddSetLegacy(70000,nil,col,10104,"PR_RAID_0104",CLOTH,PRIEST,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_RAID_0104",TRANSMOG,A(5683,8379),A(5685,8381),A(5686,8382),A(5791,8545),A(5684,8380))  --,A(3512,8383)
    loc = "LOC_RAID_0103"
    set = SetCollector:AddSetLegacy(70000,nil,col,10103,"PR_RAID_0103",CLOTH,PRIEST,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_RAID_0103",TRANSMOG,A(6040,8890),A(6041,8891),A(6038,8888),A(6045,8895),A(6043,8893),A(6044,8894),A(6039,8889),A(6042,8892))        -- Get Source ID's from player's who have collected
    loc = "LOC_RAID_0102"
    set = SetCollector:AddSetLegacy(70000,nil,col,10102,"PR_RAID_0102",CLOTH,PRIEST,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_RAID_0102",TRANSMOG,A(5045,6985),A(5048,6988),A(5047,6987),A(5050,6990),A(5044,6984),A(5049,6989),A(5046,6986),A(5043,6983))
    loc = "LOC_RAID_0101"
    set = SetCollector:AddSetLegacy(70000,nil,col,10101,"PR_RAID_0101",CLOTH,PRIEST,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_RAID_0101",TRANSMOG,A(4959,6898),A(4961,6901),A(4960,6900),A(4964,6904),A(4958,6897),A(4962,6902),A(4957,6896)) --,A(3094,6899)

    col = SetCollector.DUNGEON
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"PR_DG_AQ_1",CLOTH,PRIEST,ANY,ANY)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"PR_DG_AQ_1",TRANSMOG,A(5715,8421),A(2409,8422))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"PR_DG_02",CLOTH,PRIEST,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5904,39623),A(5906,39620),A(5907,39619),A(5903,39622),A(5905,39624),A(5902,39625),A(5909,39621),A(5908,39626))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"PR_DG_01",CLOTH,PRIEST,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4895,39612),A(4897,39611),A(4892,39616),A(4899,39618),A(4894,39615),A(4898,39614),A(4896,39613),A(4893,39617))
end


local function GetRogueAppearances()
    local col, set, loc = ""

    col = SetCollector.RAID
    loc = "LOC_RAID_0104"
    set = SetCollector:AddSetLegacy(70000,nil,col,10104,"RO_RAID_0104",LEATHER,ROGUE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_RAID_0104",TRANSMOG,A(5693,8390),A(5694,8391),A(5696,8393),A(5695,8392),A(5692,8389))
    loc = "LOC_RAID_0103"
    set = SetCollector:AddSetLegacy(70000,nil,col,10103,"RO_RAID_0103",LEATHER,ROGUE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RO_RAID_0103",TRANSMOG,A(6009,8858),A(6010,8859),A(6007,8856),A(6014,8863),A(6012,8861),A(6013,8862),A(6008,8857),A(6011,8860))
    loc = "LOC_RAID_0102"
    set = SetCollector:AddSetLegacy(70000,nil,col,10102,"RO_RAID_0102",LEATHER,ROGUE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RO_RAID_0102",TRANSMOG,A(5032,6972),A(4977,6917),A(5029,6969),A(5035,6975),A(5031,6971),A(5034,6974),A(5033,6973),A(5030,6970))
    loc = "LOC_RAID_0101"
    set = SetCollector:AddSetLegacy(70000,nil,col,10101,"RO_RAID_0101",LEATHER,ROGUE,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"RO_RAID_0101",TRANSMOG,A(4966,6906),A(4968,6908),A(4965,6905),A(4970,6910),A(4971,6911),A(4972,6912),A(4967,6907),A(4969,6909))

    col = SetCollector.DUNGEON
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"RO_DG_AQ_1",LEATHER,ROGUE,ANY,ANY)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_DG_AQ_1",TRANSMOG,A(5717,8417),A(1832,8418))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"RO_DG_02",LEATHER,ROGUE,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5873,39668),A(5876,39672),A(5877,39674),A(5872,39669),A(5874,39671),A(5870,39670),A(5875,39673),A(5871,39667))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"RO_DG_01",LEATHER,ROGUE,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4909,39665),A(4910,39666),A(4685,6852),A(3879,39660),A(4913,39662),A(567,39664),A(4911,39663),A(4912,39661))    
end


local function GetShamanAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0104"
    set = SetCollector:AddSetLegacy(70000,nil,col,10104,"SH_RAID_0104",MAIL,SHAMAN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_RAID_0104",TRANSMOG,A(5702,8399),A(5706,8403),A(5704,8401),A(5805,8563),A(5793,8548),A(5705,8402),A(5703,8400))
    loc = "LOC_RAID_0103"
    set = SetCollector:AddSetLegacy(70000,nil,col,10103,"SH_RAID_0103",MAIL,SHAMAN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_RAID_0103",TRANSMOG,A(6001,8849),A(6002,8850),A(5999,8847),A(6006,8854),A(6004,8852),A(6005,8853),A(6000,8848),A(6003,8851))
    loc = "LOC_RAID_0102"
    set = SetCollector:AddSetLegacy(70000,nil,col,10102,"SH_RAID_0102",MAIL,SHAMAN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_RAID_0102",TRANSMOG,A(5070,7011),A(5068,7009),A(5073,7014),A(5066,7007),A(5071,7012),A(5067,7008),A(5069,7010),A(5072,7013))
    loc = "LOC_RAID_0101"
    set = SetCollector:AddSetLegacy(70000,nil,col,10101,"SH_RAID_0101",MAIL,SHAMAN,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_RAID_0101",TRANSMOG,A(4987,6927),A(4989,6929),A(4986,6926),A(4985,6925),A(4984,6924),A(4983,6923),A(4988,6928),A(4982,6922))

    col = SetCollector.DUNGEON                
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"SH_DG_AQ_1",MAIL,SHAMAN,ANY,ANY)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"SH_DG_AQ_1",TRANSMOG,A(5715,8413),A(2676,8414))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"SH_DG_02",MAIL,SHAMAN,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5920,39699),A(5924,39704),A(5925,39705),A(5918,39701),A(5922,39700),A(5921,39702),A(5923,39706),A(5919,39703))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"SH_DG_01",MAIL,SHAMAN,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4870,39691),A(4872,39693),A(4869,39695),A(4874,39694),A(4875,39696),A(4876,39698),A(4871,39692),A(4873,39697))    
end


local function GetWarlockAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0104"
    set = SetCollector:AddSetLegacy(70000,nil,col,10104,"WK_RAID_0104",CLOTH,WARLOCK,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_RAID_0104",TRANSMOG,A(5676,8371),A(5675,8369),A(5674,8368),A(5783,8534),A(3128,8370),A(5677,8372))
    loc = "LOC_RAID_0103"
    set = SetCollector:AddSetLegacy(70000,nil,col,10103,"WK_RAID_0103",CLOTH,WARLOCK,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_RAID_0103",TRANSMOG,A(6032,8882),A(6033,8883),A(6030,8880),A(6037,8887),A(6035,8885),A(6036,8886),A(6031,8881),A(6034,8884))
    loc = "LOC_RAID_0102"
    set = SetCollector:AddSetLegacy(70000,nil,col,10102,"WK_RAID_0102",CLOTH,WARLOCK,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_RAID_0102",TRANSMOG,A(5053,6993),A(5055,6996),A(5054,6995),A(5057,6998),A(5052,6992),A(5056,6997),A(4008,6994),A(5051,6991))
    loc = "LOC_RAID_0101"
    set = SetCollector:AddSetLegacy(70000,nil,col,10101,"WK_RAID_0101",CLOTH,WARLOCK,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_RAID_0101",TRANSMOG,A(4954,6893),A(4953,6892),A(4955,6894),A(4950,6889),A(4951,6890),A(4952,6891),A(4956,6895),A(4949,6888))

    col = SetCollector.DUNGEON                
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"WK_DG_AQ_1",CLOTH,WARLOCK,ANY,ANY)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"WK_DG_AQ_1",TRANSMOG,A(5717,8425),A(3006,8426))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"WK_DG_02",CLOTH,WARLOCK,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5898,39635),A(5897,39639),A(5899,39642),A(5895,39637),A(5901,39641),A(5894,39638),A(5896,39636),A(5900,39640))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"WK_DG_01",CLOTH,WARLOCK,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(4900,39632),A(4903,39631),A(4902,39630),A(4905,39634),A(4907,39628),A(4904,39627),A(4901,39633),A(4906,39629))
end


local function GetWarriorAppearances()
    local col, set, loc = ""
    
    col = SetCollector.RAID
    loc = "LOC_RAID_0104"
    set = SetCollector:AddSetLegacy(70000,nil,col,10104,"WR_RAID_0104",PLATE,WARRIOR,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_RAID_0104",TRANSMOG,A(5669,8363),A(5670,8364),A(5671,8365),A(5801,8558),A(5788,8540),A(5672,8366),A(5673,8367))
    loc = "LOC_RAID_0103"
    set = SetCollector:AddSetLegacy(70000,nil,col,10103,"WR_RAID_0103",PLATE,WARRIOR,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_RAID_0103",TRANSMOG,A(5977,8824),A(5978,8825),A(5975,8822),A(5982,8829),A(5980,8827),A(5981,8828),A(5976,8823),A(5979,8826))
    loc = "LOC_RAID_0102"
    set = SetCollector:AddSetLegacy(70000,nil,col,10102,"WR_RAID_0102",PLATE,WARRIOR,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_RAID_0102",TRANSMOG,A(5086,7027),A(5084,7025),A(5089,7030),A(5082,7023),A(5087,7028),A(5083,7024),A(5085,7026),A(5088,7029))
    loc = "LOC_RAID_0101"
    set = SetCollector:AddSetLegacy(70000,nil,col,10101,"WR_RAID_0101",PLATE,WARRIOR,ANY,ANY,loc)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_RAID_0101",TRANSMOG,A(5011,6951),A(5013,6953),A(5010,6950),A(5006,6946),A(5008,6948),A(5009,6949),A(5012,6952),A(5007,6947))

    col = SetCollector.DUNGEON
    --set = SetCollector:AddSetLegacy(70000,nil,col,21,"WR_DG_AQ_1",PLATE,WARRIOR,ANY,ANY)
    --            SetCollector:AddVariantLegacy(70000,nil,col,set,"WR_DG_AQ_1",TRANSMOG,A(5712,8409),A(3841,8410))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,20,"WR_DG_02",PLATE,WARRIOR,ANY,ANY)
                SetCollector:AddVariantLegacy(70000,nil,col,set,"REPLICA",TRANSMOG,A(5867,39735),A(5869,39737),A(5865,39733),A(5864,39732),A(5866,39734),A(5862,39738),A(2868,39736),A(5863,39731))
                
    set = SetCollector:AddSetLegacy(70000,nil,col,10,"WR_DG_01",PLATE,WARRIOR,ANY,ANY)
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