-- Appearances from The Burning Crusade (v.2.x)

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
				
	set = SetCollector:AddSet(70000,nil,col,2,"LG_MELEE_70",ANY,ANY,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"LG_MELEE_70",TRANSMOG,A(8460,15136,32837),A(8461,15137,32838))
end


local function GetShamanAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,61,"SH_TR_CASTER_06B",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_TR_CASTER_06B",TRANSMOG,A(8923,15884),A(8863,15794),A(8872,15805),A(8959,15966),A(8940,15952),A(8995,16027),A(8948,15927),A(9006,16047))
				
	set = SetCollector:AddSet(70000,nil,col,60,"SH_TR_CASTER_06",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_TR_CASTER_06",TRANSMOG,A(8076,14085),A(8080,14094),A(8078,14088),A(8959,15966),A(8074,14079),A(8995,16027),A(8079,14091),A(9006,16047))
				
	set = SetCollector:AddSet(70000,nil,col,50,"SH_TR_CASTER_05",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_TR_CASTER_05",TRANSMOG,A(7838,13602),A(7840,13604),A(7836,13600),A(7837,13601),A(7759,15497),A(7839,13603),A(7768,13506))
				
	set = SetCollector:AddSet(70000,nil,col,40,"SH_TR_CASTER_04",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"SH_TR_CASTER_04",TRANSMOG,A(7436,12914),A(7439,12916),A(7437,12912),A(7241,12511),A(7440,12913),A(7273,12551),A(7438,12915),A(7290,13849))
end


local function GetWarlockAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,61,"WK_TR_CASTER_06",CLOTH,WARLOCK,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WK_TR_CASTER_06",TRANSMOG,A(8093,14119),A(8096,14122),A(8094,14120),A(8958,15965),A(8092,14118),A(8994,16026),A(8095,14121),A(9005,16045))
	set = SetCollector:AddSet(70000,nil,col,51,"WK_TR_CASTER_05",CLOTH,WARLOCK,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WK_TR_CASTER_05",TRANSMOG,A(7852,13630),A(7855,13633),A(7854,13632),A(7851,13629),A(7853,13631))
	set = SetCollector:AddSet(70000,nil,col,41,"WK_TR_CASTER_04",CLOTH,WARLOCK,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WK_TR_CASTER_04",TRANSMOG,A(7414,12850),A(7418,12854),A(7415,12851),A(7419,12855),A(7417,12853))
end


local function GetWarriorAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,61,"WR_TR_TANK_06",PLATE,WARRIOR,TANK,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WR_TR_TANK_06",TRANSMOG,A(8059,14046,30974),A(8062,14052,30980),A(8060,14048,30976),A(8960,15970,34442),A(8058,14043,30970),A(8996,16031,34547),A(8061,14050,30978),A(9007,16049,34568))

	set = SetCollector:AddSet(70000,nil,col,61,"WR_TR_MELEE_06",PLATE,WARRIOR,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WR_TR_MELEE_06",TRANSMOG,A(8059,14045,30972),A(8062,14051,30979),A(8060,14047,30975),A(8960,15969),A(8058,14042,30969),A(8996,16030),A(8061,14049,30977),A(9007,16050))

	set = SetCollector:AddSet(70000,nil,col,51,"WR_TR_TANK_05",PLATE,WARRIOR,TANK,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WR_TR_TANK_05",TRANSMOG,A(7811,13550,30115),A(7813,13552,30117),A(7809,13548,30113),A(7810,13549,30114),A(7812,13551,30116))

	set = SetCollector:AddSet(70000,nil,col,51,"WR_TR_MELEE_05",PLATE,WARRIOR,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WR_TR_MELEE_05",TRANSMOG,A(7811,13555,30120),A(7813,13557,30122),A(7809,13553,30118),A(7810,13554,30119),A(7812,13556,30121))
	
	set = SetCollector:AddSet(70000,nil,col,41,"WR_TR_TANK_04",PLATE,WARRIOR,TANK,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WR_TR_TANK_04",TRANSMOG,A(7431,12895,29011),A(7434,12900,29016),A(7432,12896,29012),A(7435,12901,29017),A(7433,12899,29015))
	
	set = SetCollector:AddSet(70000,nil,col,41,"WR_TR_MELEE_04",PLATE,WARRIOR,MELEE,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"WR_TR_MELEE_04",TRANSMOG,A(7431,12904,29021),A(7434,12906,29023),A(7432,12902,29019),A(7435,12903,29020),A(7433,12905,29022))
end


--
--	GLOBAL FUNCTIONS
--

function SetCollector:GetVersion02Appearances()
	GetLegendaries()

	GetShamanAppearances()
	GetWarlockAppearances()
	GetWarriorAppearances()
end