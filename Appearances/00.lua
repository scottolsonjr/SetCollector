-- Appearances not necessarily associated with a specific expansion (e.g., Starter and Holiday sets)

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


local function GetHolidayAppearances()
	local col = SetCollector.HOLIDAY
	local set = ""
	
	set = SetCollector:AddSet(70000,nil,col,1103271,"HO_FESTIVE_DRESS",ANY,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"GREEN",NOTRANSMOG,A(5657,8336,21157))
				SetCollector:AddVariant(70000,nil,col,set,"PINK",NOTRANSMOG,A(5772,8514,21538))
				SetCollector:AddVariant(70000,nil,col,set,"PURPLE",NOTRANSMOG,A(5773,8515,21539))
				SetCollector:AddVariant(70000,nil,col,set,"RED",NOTRANSMOG,A(5656,8335,21154))
				
	set = SetCollector:AddSet(70000,nil,col,1103272,"HO_FESTIVE_SUIT",ANY,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"BLACK",NOTRANSMOG,A(5774,8516,21541))
				SetCollector:AddVariant(70000,nil,col,set,"BLUE",NOTRANSMOG,A(5777,8519,21544))
				SetCollector:AddVariant(70000,nil,col,set,"TEAL",NOTRANSMOG,A(5776,8518,21543))
				SetCollector:AddVariant(70000,nil,col,set,"RED",NOTRANSMOG,A(5775,8517,21542))
				
	set = SetCollector:AddSet(70000,nil,col,1203351,"HO_LOVELY_DRESS",ANY,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"BLACK",NOTRANSMOG,A(5950,8771,22279))
				SetCollector:AddVariant(70000,nil,col,set,"BLUE",NOTRANSMOG,A(5949,8770,22278))
				SetCollector:AddVariant(70000,nil,col,set,"PURPLE",NOTRANSMOG,A(5951,8772,22280))
				--SetCollector:AddVariant(70000,nil,col,set,"RED",NOTRANSMOG,A(nil,nil,22276))
				
	set = SetCollector:AddSet(70000,nil,col,1203352,"HO_DINNER_SUIT",ANY,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"BLUE",NOTRANSMOG,A(5952,8773,22281))
				SetCollector:AddVariant(70000,nil,col,set,"PURPLE",NOTRANSMOG,A(5953,8774,22282))
				SetCollector:AddVariant(70000,nil,col,set,"RED",NOTRANSMOG,A(5948,8769,22277))
				
	set = SetCollector:AddSet(70000,nil,col,1401811,"HO_ELEGANT_DRESS",ANY,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"HO_ELEGANT_DRESS",NOTRANSMOG,A(5354,7547,19028))
				
	set = SetCollector:AddSet(70000,nil,col,1401812,"HO_TUXEDO",ANY,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"BLACK",NOTRANSMOG,A(2271,3669,6833),A(2273,2635,6835))
				
	set = SetCollector:AddSet(70000,nil,col,1603411,"HO_MIDSUMMER_REVELER",ANY,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"RED",NOTRANSMOG,A(6162,9207,23324),A(9042,16111,34685),A(9041,16110,34683))
				
	set = SetCollector:AddSet(70000,nil,col,1903721,"HO_BREWFEST_DRESS",ANY,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"BLUE",NOTRANSMOG,A(8813,15713,33968),A(8789,15663,33863),A(8811,15711,33966))
				SetCollector:AddVariant(70000,nil,col,set,"BROWN",NOTRANSMOG,A(8790,15664,33864),A(8789,15663,33863),A(8811,15711,33966))
				SetCollector:AddVariant(70000,nil,col,set,"GREEN",NOTRANSMOG,A(8812,15712,33967),A(8789,15663,33863),A(8811,15711,33966))
				SetCollector:AddVariant(70000,nil,col,set,"PURPLE",NOTRANSMOG,A(8814,15714,33969),A(8789,15663,33863),A(8811,15711,33966))
				
	set = SetCollector:AddSet(70000,nil,col,1903722,"HO_BREWFEST_REGALIA",ANY,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"BLUE",NOTRANSMOG,A(8813,15713,33968),A(8788,15662,33862),A(8791,15665,33868))
				SetCollector:AddVariant(70000,nil,col,set,"BROWN",NOTRANSMOG,A(8790,15664,33864),A(8788,15662,33862),A(8791,15665,33868))
				SetCollector:AddVariant(70000,nil,col,set,"GREEN",NOTRANSMOG,A(8812,15712,33967),A(8788,15662,33862),A(8791,15665,33868))
				SetCollector:AddVariant(70000,nil,col,set,"PURPLE",NOTRANSMOG,A(8814,15714,33969),A(8788,15662,33862),A(8791,15665,33868))
	
	set = SetCollector:AddSet(70000,nil,col,2003241,"HO_HALLOWED_HELM",ANY,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"BLACK",NOTRANSMOG,A(8613,15335,33292))
	
	--[[set = SetCollector:AddSet(70000,nil,col,2003242,"HO_HORSEMANS_HOOD",PLATE,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"L90",NOTRANSMOG,87569)
				SetCollector:AddVariant(70000,nil,col,set,"L100",NOTRANSMOG,117355)
	
	set = SetCollector:AddSet(70000,nil,col,2003243,"HO_HORSEMANS_SLICER",ANY,ROGUE,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"L90",NOTRANSMOG,87570)
				SetCollector:AddVariant(70000,nil,col,set,"L100",NOTRANSMOG,117356)]]--
	
	set = SetCollector:AddSet(70000,nil,col,2104041,"HO_PILGRIMS_ATTIRE",ANY,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"BLACK",NOTRANSMOG,A(2838,22458,46723),A(11702,22464,46800),A(11254,21595,44788))
				SetCollector:AddVariant(70000,nil,col,set,"FINE",NOTRANSMOG,A(2838,65283,116401),A(11702,22464,46800),A(11254,21595,44788))
	
	set = SetCollector:AddSet(70000,nil,col,2104042,"HO_PILGRIMS_DRESS",ANY,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"BLACK",NOTRANSMOG,A(2838,22458,46723),A(11253,21594,44785),A(11254,21595,44788))
				SetCollector:AddVariant(70000,nil,col,set,"FINE",NOTRANSMOG,A(2838,65283,116401),A(11253,21594,44785),A(11254,21595,44788))
	
	set = SetCollector:AddSet(70000,nil,col,2201411,"HO_WINTER_GARB",ANY,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"GREEN",NOTRANSMOG,A(5771,8510,21525),A(8831,15751,34087),A(8830,15750,34086))
				SetCollector:AddVariant(70000,nil,col,set,"RED",NOTRANSMOG,A(5770,8509,21524),A(8829,15749,34085),A(8830,15750,34086))
end


local function GetStarterAppearances()
	col = SetCollector.OTHER
	set = ""
	
	set = SetCollector:AddSet(80300,nil,col,000001,"STARTER",ANY,DEATHKNIGHT,ANY,ALLIANCE)
			SetCollector:AddVariant(80300,nil,col,set,"STARTER",TRANSMOG,A(9034,16090),A(9036,16092),A(7003,16094),A(9032,16088),A(9035,16091),A(9031,16087),A(9033,16089),A(9037,16093),A(9030,16086))
	
	set = SetCollector:AddSet(80300,nil,col,000001,"STARTER",ANY,DEMONHUNTER,ANY,ALLIANCE)
			SetCollector:AddVariant(80300,nil,col,set,"STARTER",TRANSMOG,A(28231,76664),A(2352,60968),A(28233,76668),A(28232,76669),A(28228,76667),A(28225,76671),A(28230,76665),A(28226,76670),A(28700,60967))

	set = SetCollector:AddSet(80300,nil,col,000001,"STARTER",ANY,DRUID,ANY,ALLIANCE)
			SetCollector:AddVariant(80300,nil,col,set,"STARTER",NOTRANSMOG,A(1977,2258),A(1978,2259),A(1312,1372))
	
	set = SetCollector:AddSet(80300,nil,col,000001,"STARTER",ANY,HUNTER,ANY,ALLIANCE)
			SetCollector:AddVariant(80300,nil,col,set,"STARTER",NOTRANSMOG,A(28522,28823),A(186,47),A(182,43),A(889,9213))

	set = SetCollector:AddSet(80300,nil,col,000001,"STARTER",ANY,MAGE,ANY,ALLIANCE)
			SetCollector:AddVariant(80300,nil,col,set,"STARTER",NOTRANSMOG,A(6201,9299),A(6197,9298),A(1312,1372))
	
	set = SetCollector:AddSet(80300,nil,col,000001,"STARTER",ANY,MONK,ANY,ALLIANCE)
			SetCollector:AddVariant(80300,nil,col,set,"STARTER",NOTRANSMOG,A(15996,36894),A(17120,39119),A(17123,39104),A(15997,36895),A(16274,37506))
	
	set = SetCollector:AddSet(80300,nil,col,000001,"STARTER",ANY,PALADIN,ANY,ALLIANCE)
			SetCollector:AddVariant(80300,nil,col,set,"STARTER",NOTRANSMOG,A(28520,28830),A(6200,9297),A(12832,25751),A(156,17),A(802,746))
	
	set = SetCollector:AddSet(80300,nil,col,000001,"STARTER",ANY,PRIEST,ANY,ALLIANCE)
			SetCollector:AddVariant(80300,nil,col,set,"STARTER",NOTRANSMOG,A(1970,2250),A(168,29),A(167,28),A(155,16))

	set = SetCollector:AddSet(80300,nil,col,000001,"STARTER",ANY,ROGUE,ANY,ALLIANCE)
			SetCollector:AddVariant(80300,nil,col,set,"STARTER",NOTRANSMOG,A(28776,28825),A(165,26),A(164,25),A(665,590))
			-- SetCollector:AddVariant(80300,nil,col,set,"STARTER",NOTRANSMOG,A(12107,24270),A(12078,24263),A(12125,24269),A(12124,24268),A(12126,24271),A(665,590))	-- Worgen

	set = SetCollector:AddSet(80300,nil,col,000001,"STARTER",ANY,SHAMAN,ANY,ALLIANCE)
			SetCollector:AddVariant(80300,nil,col,set,"STARTER",NOTRANSMOG,A(12833,25752),A(6197,25753),A(156,17),A(802,746))

	set = SetCollector:AddSet(80300,nil,col,000001,"STARTER",ANY,WARLOCK,ANY,ALLIANCE)
			SetCollector:AddVariant(80300,nil,col,set,"STARTER",NOTRANSMOG,A(172,33),A(396,264),A(173,34),A(155,16))

	set = SetCollector:AddSet(80300,nil,col,000001,"STARTER",ANY,WARRIOR,ANY,ALLIANCE)
			SetCollector:AddVariant(80300,nil,col,set,"STARTER",NOTRANSMOG,A(28524,28822),A(159,20),A(160,21),A(154,15),A(802,746))
	set = SetCollector:AddSet(80300,nil,col,000001,"STARTER",ANY,WARRIOR,ANY,HORDE)
			SetCollector:AddVariant(80300,nil,col,set,"STARTER",NOTRANSMOG,A(23206,28833),A(183,44),A(184,45),A(154,15),A(802,746))
end


--
--	GLOBAL FUNCTIONS
--

function SetCollector:GetVersion00Appearances(expansion)
	if expansion.v00 then
		GetHolidayAppearances()
		GetStarterAppearances()
	end
end


function SetCollector:GetVersion00Status()
	return SetCollector:GetExpansionStatus("0")
end


function SetCollector:SetVersion00Status()
	SetCollector:SetExpansionStatus("0")
end