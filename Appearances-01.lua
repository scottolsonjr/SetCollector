-- Appearances from World of Warcraft (v.1.x)

--
-- LOCAL VARIABLES
--

local ALL			= SetCollector.ALL
local ANY			= SetCollector.ANY

-- Armor Type
local CLOTH			= SetCollector.CLOTH
local LEATHER		= SetCollector.LEATHER
local MAIL			= SetCollector.MAIL
local PLATE			= SetCollector.PLATE

-- Classes
local DEATHKNIGHT	= SetCollector.DEATHKNIGHT
local DEMONHUNTER	= SetCollector.DEMONHUNTER
local DRUID 		= SetCollector.DRUID
local HUNTER 		= SetCollector.HUNTER
local MAGE 			= SetCollector.MAGE
local MONK 			= SetCollector.MONK
local PALADIN 		= SetCollector.PALADIN
local PRIEST 		= SetCollector.PRIEST
local ROGUE 		= SetCollector.ROGUE
local SHAMAN 		= SetCollector.SHAMAN
local WARLOCK 		= SetCollector.WARLOCK
local WARRIOR 		= SetCollector.WARRIOR

-- Factions
local ALLIANCE 		= SetCollector.ALLIANCE
local HORDE 		= SetCollector.HORDE

-- Roles
local TANK 			= SetCollector.TANK
local HEALER 		= SetCollector.HEALER
local CASTER 		= SetCollector.CASTER
local RANGED 		= SetCollector.RANGED
local MELEE 		= SetCollector.MELEE

-- Obtainable
local OBTAIN		= SetCollector.OBTAIN
local NOOBTAIN 		= SetCollector.NOOBTAIN

-- Useable as Transmog
local TRANSMOG 		= SetCollector.TRANSMOG
local NOTRANSMOG 	= SetCollector.NOTRANSMOG


--
-- LOCAL FUNCTIONS
--

local function A(a, s, i, ...)
	return SetCollector:A(a, s, i, ...)
end


local function GetLegendaries()
	local col = SetCollector.LEGENDARY
	local set = ""
	
	set = SetCollector:AddSet(70000,nil,col,1,"LG_60",ANY,ANY,TANK,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"LG_60",TRANSMOG,A(5131,7098,17182))
end

local function GetDungeonAppearances()
	local col = SetCollector.DUNGEON
	local set = ""
	
	set = SetCollector:AddSet(70000,nil,col,31,"DG_CLOTH_03",CLOTH,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DG_CLOTH_03",TRANSMOG,A(7071,12315),A(6956,12071),A(7069,12313),A(6852,11913),A(7018,12145))
	set = SetCollector:AddSet(70000,nil,col,31,"DG_LEATHER_03",LEATHER,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DG_LEATHER_03",TRANSMOG,A(7098,12342),A(6957,12072),A(7116,12362),A(6888,11960),A(6980,12096))
	set = SetCollector:AddSet(70000,nil,col,31,"DG_MAIL_03",MAIL,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DG_MAIL_03",TRANSMOG,A(7070,12314),A(6920,12009),A(7184,12446),A(6887,11958),A(7030,12162))
	set = SetCollector:AddSet(70000,nil,col,31,"DG_PLATE_03",PLATE,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"DG_PLATE_03",TRANSMOG,A(7099,12343),A(6941,12055),A(7186,12448),A(6870,11938),A(6996,12116))
end


local function GetShamanAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,30,"SH_TR_03",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_TR_03",TRANSMOG,A(6001,8849),A(6002,8850,22466),A(5999,8847,22464),A(6006,8854,22471),A(6004,8852,22469),A(6005,8853,22470),A(6000,8848,22465),A(6003,8851,22468))	-- Ring 23065
				
	set = SetCollector:AddSet(70000,nil,col,20,"SH_TR_02",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_TR_02",TRANSMOG,A(5070,7011),A(5068,7009),A(5073,7014),A(5066,7007),A(5071,7012),A(5067,7008),A(5069,7010),A(5072,7013))
				
	set = SetCollector:AddSet(70000,nil,col,10,"SH_TR_01",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_TR_01",TRANSMOG,A(4987,6927),A(4989,6929),A(4986,6926),A(4985,6925),A(4984,6924),A(4983,6923),A(4988,6928),A(4982,6922))

	col = SetCollector.DUNGEON
	set = SetCollector:AddSet(70000,nil,col,30,"SH_DG_03",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_DG_03",TRANSMOG,A(7163,12417),A(6962,12077),A(7104,12348),A(6876,11944),A(7020,12147))
				
	set = SetCollector:AddSet(70000,nil,col,22,"SH_DG_AQ_2",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_DG_AQ_2",TRANSMOG,A(5702,8399),A(5706,8403),A(5704,8401),A(5705,8402),A(5703,8400))
				
	set = SetCollector:AddSet(70000,nil,col,21,"SH_DG_AQ_1",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_DG_AQ_1",TRANSMOG,A(5715,8413),A(2676,8414))
				
	set = SetCollector:AddSet(70000,nil,col,20,"SH_DG_02",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(5920,39699),A(5924,39704),A(5925,39705),A(5918,39701),A(5922,39700),A(5921,39702),A(5923,39706),A(5919,39703))
				
	set = SetCollector:AddSet(70000,nil,col,10,"SH_DG_01",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(4870,39691),A(4872,39693),A(4869,39695),A(4874,39694),A(4875,39696),A(4876,39698),A(4871,39692),A(4873,39697))	
end


local function GetWarriorAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,31,"WR_TR_03",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WR_TR_03",TRANSMOG,A(5977,8824,22418),A(5978,8825,22419),A(5975,8822,22416),A(5982,8829,22423),A(5980,8827,22421),A(5981,8828,22422),A(5976,8823,22417),A(5979,8826,22420))
	
	set = SetCollector:AddSet(70000,nil,col,21,"WR_TR_02",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WR_TR_02",TRANSMOG,A(5086,7027),A(5084,7025),A(5089,7030),A(5082,7023),A(5087,7028),A(5083,7024),A(5085,7026),A(5088,7029))
	
	set = SetCollector:AddSet(70000,nil,col,11,"WR_TR_01",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WR_TR_01",TRANSMOG,A(5011,6951),A(5013,6953),A(5010,6950),A(5006,6946),A(5008,6948),A(5009,6949),A(5012,6952),A(5007,6947))

	col = SetCollector.DUNGEON
	set = SetCollector:AddSet(70000,nil,col,30,"WR_DG_03",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WR_DG_03",TRANSMOG,A(7164,15418),A(6963,12078),A(7083,12327),A(6857,11923),A(7036,12191))
				
	set = SetCollector:AddSet(70000,nil,col,22,"WR_DG_AQ_2",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WR_DG_AQ_2",TRANSMOG,A(5669,8363),A(5670,8364),A(5671,8365),A(5672,8366),A(5673,8367))
				
	set = SetCollector:AddSet(70000,nil,col,21,"WR_DG_AQ_1",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WR_DG_AQ_1",TRANSMOG,A(5712,8409),A(3841,8410))
				
	set = SetCollector:AddSet(70000,nil,col,20,"WR_DG_02",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(5867,39735),A(5869,39737),A(5865,39733),A(5864,39732),A(5866,39734),A(5862,39738),A(2868,39736),A(5863,39731))
				
	set = SetCollector:AddSet(70000,nil,col,10,"WR_DG_01",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(4930,39727),A(4932,39730),A(4929,39728),A(4934,39726),A(4936,39725),A(4935,39724),A(4931,39729),A(4933,39723))
end


--
--	GLOBAL FUNCTIONS
--

function SetCollector:GetVersion02Appearances()
	GetLegendaries()
	GetDungeonAppearances()

	GetShamanAppearances()
	GetWarriorAppearances()
end