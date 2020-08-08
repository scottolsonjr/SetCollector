-- Appearances from Cataclysm (v.4.x)

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
				
	set = SetCollector:AddSet(70000,nil,LEGENDARY,4,"LG_85",ANY,ANY,CASTER,ANY)
			SetCollector:AddVariant(70000,nil,LEGENDARY,set,"LG_85",TRANSMOG,A(15522,36447,71086))
end


local function GetShamanAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,130,"SH_TR_CASTER_13",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16736,40117),A(17150,40173),A(16740,40155),A(16735,40098),A(16737,40143))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16752,38856),A(16984,38854),A(16750,38858),A(15995,38971),A(16753,38857),A(16756,38951),A(15986,38855),A(16755,38966))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(16745,40022),A(17149,40078),A(16741,40060),A(16742,39776),A(16746,40003),A(16749,39840),A(16744,40048),A(16748,39788))
				
	set = SetCollector:AddSet(70000,nil,col,120,"SH_TR_CASTER_12",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15892,36575),A(15814,36577),A(15875,36573),A(15819,36390),A(15532,36574),A(15831,36576),A(15541,36402))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15933,36780),A(15922,36782),A(15929,36778),A(15919,36656),A(15921,36779),A(15916,36781),A(15925,36679))
				
	set = SetCollector:AddSet(70000,nil,col,110,"SH_TR_CASTER_11",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(14036,30047),A(14050,30049),A(14104,30045),A(13973,29562),A(13983,30046),A(13990,29582),A(14046,30048),A(13907,29595))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14764,32817),A(14754,32819),A(14703,32815),A(14739,32658),A(14730,32816),A(14726,32639),A(14751,32818),A(14093,32626))
end


local function GetWarriorAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,131,"WR_TR_MELEE_13",PLATE,WARRIOR,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16699,40120,78783),A(16697,40167,78830),A(16701,40089,78752),A(16700,40100,78763),A(16698,40138,78801))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16694,38814,76983),A(16695,38818,76987),A(16692,38815,76984),A(16693,38816,76985),A(15982,38817,76986))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(16686,40025,78688),A(16688,40072,78735),A(16684,39994,78657),A(16685,40005,78668),A(16687,40043,78706))
	
	set = SetCollector:AddSet(70000,nil,col,131,"WR_TR_TANK_13",PLATE,WARRIOR,TANK,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16699,40121,78784),A(16697,40166,78829),A(16701,40090,78753),A(16700,40101,78764),A(16698,40137,78800))
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16694,38821,76990),A(16695,38823,76992),A(16692,38819,76988),A(16693,38820,76989),A(15982,38822,76991))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(16686,40026,78689),A(16688,40071,78734),A(16684,39995,78658),A(16685,40006,78669),A(16687,40042,78705))
	
	set = SetCollector:AddSet(70000,nil,col,121,"WR_TR_MELEE_12",PLATE,WARRIOR,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15768,36438,71070),A(15638,36440,71072),A(15769,36436,71068),A(15528,36437,71069),A(15767,36439,71071))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15783,36808,71599),A(15785,36812,71603),A(15781,36809,71600),A(15782,36810,71601),A(15784,36811,71602))
	
	set = SetCollector:AddSet(70000,nil,col,121,"WR_TR_TANK_12",PLATE,WARRIOR,TANK,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15768,36340,70944),A(15638,36337,70941),A(15769,36341,70945),A(15528,36339,70943),A(15767,36338,70942))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15783,36815,71606),A(15785,36817,71608),A(15781,36813,71604),A(15782,36814,71605),A(15784,36816,71607))
	
	set = SetCollector:AddSet(70000,nil,col,111,"WR_TR_MELEE_11",PLATE,WARRIOR,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(13997,30057,60325),A(14004,30059,60327),A(13215,30055,60323),A(13966,30058,60326),A(14047,30056,60324))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14719,32827,65266),A(14712,32829,65268),A(14761,32825,65264),A(14741,32826,35265),A(14758,32828,65267))

	set = SetCollector:AddSet(70000,nil,col,111,"WR_TR_TANK_11",PLATE,WARRIOR,TANK,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(13997,30060,60328),A(14004,30063,60331),A(13215,30061,60329),A(13966,30064,60332),A(14047,30062,60330))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14719,32832,65271),A(14712,32834,65273),A(14761,32830,65269),A(14741,32831,65270),A(14758,32833,65272))
end


--
--	GLOBAL FUNCTIONS
--

function SetCollector:GetVersion04Appearances()
	GetLegendaries()

	GetShamanAppearances()
	GetWarriorAppearance()
end