--
-- Defaults
--

local defaults = {
	char = {
		minimap = {
			hide = false
		},
		filters = {
			specialization = nil,
			favorites = false,
			obtainable = false,
			transmog = false
		},
		sets = {}
	},
  global = {
    debug = false,
    collections = {}
  }
}

--
--  Local Variables
--

local L = LibStub("AceLocale-3.0"):GetLocale("SetCollector", true)
local WOW_VERSION = select(4,GetBuildInfo())

local ALL					=	{ Code = "A", Description = "All" }
local ANY					=	{ Code = "Z", Description = "Any" }

local CLOTH				= { Code = "C", Description = "CLOTH" }
local LEATHER			= { Code = "L", Description = "LEATHER" }
local MAIL				= { Code = "M", Description = "MAIL" }
local PLATE				= { Code = "P", Description = "PLATE" }

local DEATHKNIGHT = { Code = "DK", Description = "DEATHKNIGHT" }
local DEMONHUNTER = { Code = "DH", Description = "DEMONHUNTER" }
local DRUID 			= { Code = "DR", Description = "DRUID" }
local HUNTER 			= { Code = "HU", Description = "HUNTER" }
local MAGE 				= { Code = "MA", Description = "MAGE" }
local MONK 				= { Code = "MO", Description = "MONK" }
local PALADIN 		= { Code = "PA", Description = "PALADIN" }
local PRIEST 			= { Code = "PR", Description = "PRIEST" }
local ROGUE 			= { Code = "RO", Description = "ROGUE" }
local SHAMAN 			= { Code = "SH", Description = "SHAMAN" }
local WARLOCK 		= { Code = "WK", Description = "WARLOCK" }
local WARRIOR 		= { Code = "WR", Description = "WARRIOR" }

local ALLIANCE 		= { Code = "A", Description = "Alliance" }
local HORDE 			= { Code = "H", Description = "Horde" }

local TANK 				= { Code = "T", Description = "TANK" }
local HEALER 			= { Code = "H", Description = "HEALER" }
local CASTER 			= { Code = "C", Description = "CASTER" }
local RANGED 			= { Code = "R", Description = "RANGED" }
local MELEE 			= { Code = "M", Description = "MELEE" }

-- Collection Types
local OUTFITS 		= { ID = 1, Code = "OU", Description = "OUTFITS" }
local LEGENDARY 	= { ID = 2, Code = "ZZ", Description = "LEGENDARY" }
local RAID 				= { ID = 3, Code = "TR", Description = "RAID" }
local DUNGEON 		= { ID = 4, Code = "DG", Description = "DUNGEON" }
local CHALLENGE 	= { ID = 5, Code = "CD", Description = "CHALLENGE" }
local PVP 				= { ID = 6, Code = "PV", Description = "PVP" }
local GARRISON 		= { ID = 7, Code = "GA", Description = "GARRISON" }
local CRAFTED 		= { ID = 8, Code = "CR", Description = "CRAFTED" }
local OTHER				= { ID = 9, Code = "OT", Description = "OTHER" }
local CUSTOM			= { ID = 10, Code = "CU", Description = "CUSTOM" }
local HOLIDAY			= { ID = 11, Code = "HO", Description = "HOLIDAY" }

local OBTAIN			= true
local NOOBTAIN 		= false

local TRANSMOG 		= true
local NOTRANSMOG 	= false

--
--  Helpers
--

local function GetCount(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

local function CreateCollections()
	local collections = {
		[OUTFITS.ID] 		= { Title = OUTFITS.Description, Sets = { } },
		[LEGENDARY.ID] 	= { Title = LEGENDARY.Description, Sets = { } },
		[RAID.ID] 			= { Title = RAID.Description, Sets = { } },
		[DUNGEON.ID] 		= { Title = DUNGEON.Description, Sets = { } },
		[CHALLENGE.ID] 	= { Title = CHALLENGE.Description, Sets = { } },
		[PVP.ID] 				= { Title = PVP.Description, Sets = { } },
		[GARRISON.ID] 	= { Title = GARRISON.Description, Sets = { } },
		[CRAFTED.ID] 		= { Title = CRAFTED.Description, Sets = { } },
		[OTHER.ID] 			= { Title = OTHER.Description, Sets = { } },
		[CUSTOM.ID] 		= { Title = CUSTOM.Description, Sets = { } },
		[HOLIDAY.ID] 		= { Title = HOLIDAY.Description, Sets = { } },
		Appearances = { }
	}
	return collections
end

local function GetTooltipIdentifier(collection, id, title)
	local identifier
	if collection == RAID then
		identifier = "T"..id
	elseif collection == PVP then
		identifier = "PVP"
	end
	return identifier
end

local function AddSet(minVersion, maxVersion, collection, id, title, armorType, class, role, faction, ...)
	if WOW_VERSION >= minVersion then
		if maxVersion == nil or WOW_VERSION <= maxVersion then
			local tempSet = { }
			tempSet = {
				Title = title,
				TooltipID = GetTooltipIdentifier(collection, id, title),
				ArmorType = armorType,
				Class = class.Description,
				Role = role.Description,
				Faction = faction.Description,
				Name = name,
				Variants = { }
			}
			local ID = collection.Code..string.format("%03d", id)..armorType.Code..class.Code..role.Code..faction.Code
			SetCollector.db.global.collections[collection.ID].Sets[ID] = tempSet
			return ID
		end
	end
end

local function AddVariant(minVersion, maxVersion, collection, set, title, transmog, ...)
	if WOW_VERSION >= minVersion then
		if maxVersion == nil or WOW_VERSION <= maxVersion then
			local a, s, i = 0, 0, 0
			local tempAppearances = { }
			local n = select("#",...)
			for j = 1,n do
				local v = select(j,...)
				if v then
					a = v.a
					s = v.s
					i = v.i
				end
				local t = { ID = a, sourceID = s, itemID = i }
				tinsert(tempAppearances,t)
				SetCollector.db.global.collections.Appearances[a] = { collection = collection.ID, set = set, variant = #SetCollector.db.global.collections[collection.ID].Sets[set].Variants + 1 }
			end
			local tempVariant = {
				Title = title,
				Transmog = transmog,
				Appearances = tempAppearances,
				Count = #tempAppearances
			}
			tinsert(SetCollector.db.global.collections[collection.ID].Sets[set].Variants, tempVariant)	
		end
	end	
end

local function A(a, s, i, ...)
	local t = { 
		a = a or 0,
		s = s or 0,
		i = i or 0
	}
	return t
end


--
--
--

local function GetGeneralAppearances()
	local col = ""
	local set = ""
	
	--  LEGENDARY
	col = LEGENDARY
	set = AddSet(70000,nil,col,41,"LG_CASTER_INT_90",ANY,ANY,CASTER,ANY)
				AddVariant(70000,nil,col,set,"LG_CASTER_INT_90",TRANSMOG,A(20801,54617,102246))
	set = AddSet(70000,nil,col,42,"LG_HEALER_INT_90",ANY,ANY,HEALER,ANY)
				AddVariant(70000,nil,col,set,"LG_HEALER_INT_90",TRANSMOG,A(20825,54618,102247))	
	set = AddSet(70000,nil,col,43,"LG_MELEE_AGI_90",ANY,ANY,MELEE,ANY)
				AddVariant(70000,nil,col,set,"LG_MELEE_AGI_90",TRANSMOG,A(20805,54619,102248))
	set = AddSet(50400,nil,col,44,"LG_MELEE_STR_90",ANY,ANY,MELEE,ANY)
				AddVariant(50400,nil,col,set,"LG_MELEE_STR_90",TRANSMOG,A(20805))
	set = AddSet(70000,nil,col,45,"LG_MELEE_AGI_90",ANY,ANY,RANGED,ANY)
				AddVariant(70000,nil,col,set,"LG_MELEE_AGI_90",TRANSMOG,A(20803))
	set = AddSet(50400,nil,col,46,"LG_TANK_STR_90",ANY,ANY,TANK,ANY)
				AddVariant(50400,nil,col,set,"LG_TANK_STR_90",TRANSMOG,A(20805))
				
	set = AddSet(70000,nil,col,3,"LG_HEALER_80",ANY,ANY,HEALER,ANY)
				AddVariant(70000,nil,col,set,"LG_HEALER_80",TRANSMOG,A(11613,22178,46017))
				
	set = AddSet(70000,nil,col,2,"LG_MELEE_70",ANY,ANY,MELEE,ANY)
				AddVariant(70000,nil,col,set,"LG_MELEE_70",TRANSMOG,A(8460),A(8461))
	
	set = AddSet(70000,nil,col,1,"LG_60",ANY,ANY,TANK,ANY)
				AddVariant(70000,nil,col,set,"LG_60",TRANSMOG,A(5131,7098,17182))
				
	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,180,"TR_CLOTH_18",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25845,73196),A(25847,73166),A(25849,73182),A(25844,73228),A(25846,73200),A(25842,72970))	-- Need belt
	set = AddSet(70000,nil,col,180,"TR_LEATHER_18",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25983,73204),A(25985,73170),A(25981,73184),A(25982,73232),A(25984,73208),A(25979,72978))		-- Need belt
	set = AddSet(70000,nil,col,180,"TR_MAIL_18",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25949,73209),A(25950,73171),A(25947,73185),A(25948,73233),A(25951,73213),A(25946,73079))		-- Need belt
	set = AddSet(70000,nil,col,180,"TR_PLATE_18",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25933,73220),A(25935,73178),A(25931,73192),A(25932,73240),A(25934,73224),A(25930,72890))		-- Need belt
				
	set = AddSet(70000,nil,col,170,"TR_CLOTH_17",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(22599,67988),A(22595,68000),A(22597,67996),A(22598,67992),A(22600,68004),A(22594,68007))		-- Need belt
	set = AddSet(70000,nil,col,170,"TR_LEATHER_17",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(23053,68023),A(23055,68019),A(23051,68013),A(23052,68031),A(23054,68011),A(23050,68027))		-- Need belt
	set = AddSet(70000,nil,col,170,"TR_MAIL_17",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(22684,68052),A(22686,68044),A(22682,68048),A(22683,68036),A(22685,68032),A(22681,68040))		-- Need belt
	set = AddSet(70000,nil,col,170,"TR_PLATE_17",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(22640,68079),A(22642,68075),A(22638,68067),A(22639,68063),A(22641,68059),A(22637,68071))		-- Need belt

	-- DUNGEON
	col = DUNGEON
	set = AddSet(70000,nil,col,31,"DG_CLOTH_03",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"DG_CLOTH_03",TRANSMOG,A(7071,12315),A(6956,12071),A(7069,12313),A(6852,11913),A(7018,12145))
	set = AddSet(70000,nil,col,31,"DG_LEATHER_03",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"DG_LEATHER_03",TRANSMOG,A(7098,12342),A(6957,12072),A(7116,12362),A(6888,11960),A(6980,12096))
	set = AddSet(70000,nil,col,31,"DG_MAIL_03",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"DG_MAIL_03",TRANSMOG,A(7070,12314),A(6920,12009),A(7184,12446),A(6887,11958),A(7030,12162))
	set = AddSet(70000,nil,col,31,"DG_PLATE_03",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"DG_PLATE_03",TRANSMOG,A(7099,12343),A(6941,12055),A(7186,12448),A(6870,11938),A(6996,12116))
	
	-- GARRISON
	col = GARRISON
	set = AddSet(70000,nil,col,602,"GA_BWM_SET_100",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"CLOTH",TRANSMOG,A(23099),A(23096),A(23097),A(23098),A(23807),A(23100),A(23806))
	set = AddSet(70000,nil,col,602,"GA_BWM_SET_100",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"LEATHER",TRANSMOG,A(22857),A(22859),A(22855),A(22856),A(22853),A(22858),A(22854))
	set = AddSet(70000,nil,col,602,"GA_BWM_SET_100",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"MAIL",TRANSMOG,A(22945),A(22944),A(22947),A(22946),A(22949),A(23810),A(22948))
	set = AddSet(70000,nil,col,602,"GA_BWM_SET_100",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"PLATE",TRANSMOG,A(23274),A(23278),A(23265),A(23271),A(23259),A(23277),A(23262))
	
	set = AddSet(70000,nil,col,601,"GA_ALLIANCE_SET",ANY,ANY,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"GA_ALLIANCE_SET",TRANSMOG,A(24474),A(24476),A(24472),A(24473),A(24470),A(24475),A(24471))
	
	set = AddSet(70000,nil,col,601,"GA_HORDE_SET",ANY,ANY,ANY,HORDE)
				AddVariant(70000,nil,col,set,"GA_HORDE_SET",TRANSMOG,A(24054),A(24051),A(24052),A(24817),A(24053),A(24050),A(24854))
				
	set = AddSet(70000,nil,col,600,"OTH_SHIPYARD_100",ANY,ANY,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"CAPTAIN",TRANSMOG,A(26891,73444))
				AddVariant(70000,nil,col,set,"FLEETCOMMANDER",TRANSMOG,A(26888,73447))
	set = AddSet(70000,nil,col,600,"OTH_SHIPYARD_100",ANY,ANY,ANY,HORDE)
				AddVariant(70000,nil,col,set,"CAPTAIN",TRANSMOG,A(26892,73445))
				AddVariant(70000,nil,col,set,"FLEETCOMMANDER",TRANSMOG,A(26889,73446))
				
	--  CRAFTED
	col = CRAFTED
	set = AddSet(70000,nil,col,60,"CR_CLOTH_60",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"CR_CLOTH_60",TRANSMOG,A(22893,63683),A(22895,63686),A(22897,63687),A(22892,63685),A(22894,63684),A(22890,63688))
	
	--  OTHER
	col = OTHER
	set = AddSet(70000,nil,col,1009,"OTH_CLOTH_100",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_CLOTH_100",TRANSMOG,A(31376,79535),A(31379,79537),A(31718,79539),A(31374,79538),A(31380,79532),A(31375,79533),A(31372,79531),A(31377,79536),A(31373,79534))
	set = AddSet(70000,nil,col,1009,"OTH_LEATHER_100",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_LEATHER_100",TRANSMOG,A(31393,79520),A(31396,79521),A(31718,79539),A(31394,79541),A(31397,79516),A(31392,79519),A(31390,79522),A(31395,79518),A(31391,79517))
	set = AddSet(70000,nil,col,1009,"OTH_MAIL_100",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_MAIL_100",TRANSMOG,A(31385,79527),A(31387,79529),A(31718,79539),A(31383,79530),A(31388,79524),A(31384,79525),A(31381,79523),A(31386,79528),A(31382,79526))
	set = AddSet(70000,nil,col,1009,"OTH_PLATE_100",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OTH_PLATE_100",TRANSMOG,A(31310,79511),A(31312,79513),A(31718,79539),A(31308,79508),A(31313,79515),A(31309,79509),A(31306,79510),A(31311,79512),A(31307,79514))
	set = AddSet(70000,nil,col,1008,"OTH_LOCKET_100",ANY,ANY,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"OTH_LOCKET_100",TRANSMOG,A(31906,80788))
	set = AddSet(70000,nil,col,1008,"OTH_SHOES_100",ANY,ANY,ANY,HORDE)
				AddVariant(70000,nil,col,set,"OTH_SHOES_100",TRANSMOG,A(25398,51820,97901))
	set = AddSet(70000,nil,col,1007,"OT_ELR_100",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"OT_ELR_100",TRANSMOG,A(26087,69593),A(26841,69650),A(26842,73423))
				
	--  HOLIDAY
	col = HOLIDAY
	set = AddSet(50400,nil,col,1103271,"HO_FESTIVE_DRESS",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"GREEN",NOTRANSMOG,A(5657,nil,21157))
				AddVariant(50400,nil,col,set,"PINK",NOTRANSMOG,A(5772,nil,21538))
				AddVariant(50400,nil,col,set,"PURPLE",NOTRANSMOG,A(5773,nil,21539))
				AddVariant(50400,nil,col,set,"RED",NOTRANSMOG,A(5656,nil,21154))
				
	set = AddSet(50400,nil,col,1103272,"HO_FESTIVE_SUIT",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"BLACK",NOTRANSMOG,A(5774,nil,21541))
				AddVariant(50400,nil,col,set,"BLUE",NOTRANSMOG,A(5777,nil,21544))
				AddVariant(50400,nil,col,set,"TEAL",NOTRANSMOG,A(5776,nil,21543))
				AddVariant(50400,nil,col,set,"RED",NOTRANSMOG,A(5775,nil,21542))
				
	set = AddSet(50400,nil,col,1203351,"HO_LOVELY_DRESS",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"BLACK",NOTRANSMOG,A(5950,nil,22279))
				AddVariant(50400,nil,col,set,"BLUE",NOTRANSMOG,A(5949,nil,22278))
				AddVariant(50400,nil,col,set,"PURPLE",NOTRANSMOG,A(5951,nil,22280))
				--AddVariant(50400,nil,col,set,"RED",NOTRANSMOG,A(,nil,22276))
				
	set = AddSet(50400,nil,col,1203352,"HO_DINNER_SUIT",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"BLUE",NOTRANSMOG,A(5952,nil,22281))
				AddVariant(50400,nil,col,set,"PURPLE",NOTRANSMOG,A(5953,nil,22282))
				AddVariant(50400,nil,col,set,"RED",NOTRANSMOG,A(5948,nil,22277))
				
	set = AddSet(50400,nil,col,1401811,"HO_ELEGANT_DRESS",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"HO_ELEGANT_DRESS",NOTRANSMOG,A(5354,nil,19028))
				
	set = AddSet(50400,nil,col,1401812,"HO_TUXEDO",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"BLACK",NOTRANSMOG,A(2271,3669,6833),A(2273,nil,6835))
				
	set = AddSet(50400,nil,col,1603411,"HO_MIDSUMMER_REVELER",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"RED",NOTRANSMOG,A(6162,nil,23324),A(9042,nil,34685),A(9041,nil,34683))
				
	set = AddSet(50400,nil,col,1903721,"HO_BREWFEST_DRESS",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"BLUE",NOTRANSMOG,A(8813,nil,33968),A(8789,nil,33863),A(8811,nil,33966))
				AddVariant(50400,nil,col,set,"BROWN",NOTRANSMOG,A(8790,nil,33864),A(8789,nil,33863),A(8811,nil,33966))
				AddVariant(50400,nil,col,set,"GREEN",NOTRANSMOG,A(8812,nil,33967),A(8789,nil,33863),A(8811,nil,33966))
				AddVariant(50400,nil,col,set,"PURPLE",NOTRANSMOG,A(8814,nil,33969),A(8789,nil,33863),A(8811,nil,33966))
				
	set = AddSet(50400,nil,col,1903722,"HO_BREWFEST_REGALIA",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"BLUE",NOTRANSMOG,A(8813,nil,33968),A(8788,nil,33862),A(8791,nil,33868))
				AddVariant(50400,nil,col,set,"BROWN",NOTRANSMOG,A(8790,nil,33864),A(8788,nil,33862),A(8791,nil,33868))
				AddVariant(50400,nil,col,set,"GREEN",NOTRANSMOG,A(8812,nil,33967),A(8788,nil,33862),A(8791,nil,33868))
				AddVariant(50400,nil,col,set,"PURPLE",NOTRANSMOG,A(8814,nil,33969),A(8788,nil,33862),A(8791,nil,33868))
	
	set = AddSet(50400,nil,col,2003241,"HO_HALLOWED_HELM",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"BLACK",NOTRANSMOG,A(8613,15335,33292))
	
	--[[set = AddSet(50400,nil,col,2003242,"HO_HORSEMANS_HOOD",PLATE,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"L90",NOTRANSMOG,87569)
				AddVariant(50400,nil,col,set,"L100",NOTRANSMOG,117355)
	
	set = AddSet(50400,nil,col,2003243,"HO_HORSEMANS_SLICER",ANY,ROGUE,ANY,ANY)
				AddVariant(50400,nil,col,set,"L90",NOTRANSMOG,87570)
				AddVariant(50400,nil,col,set,"L100",NOTRANSMOG,117356)]]--
	
	set = AddSet(50400,nil,col,2104041,"HO_PILGRIMS_ATTIRE",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"BLACK",NOTRANSMOG,A(2838,22458,46723),A(11702,22464,46800),A(11254,21595,44788))
				AddVariant(50400,nil,col,set,"FINE",NOTRANSMOG,A(2838,65283,116401),A(11702,22464,46800),A(11254,21595,44788))
	
	set = AddSet(50400,nil,col,2104042,"HO_PILGRIMS_DRESS",ANY,ANY,ANY,ANY)
				AddVariant(50400,nil,col,set,"BLACK",NOTRANSMOG,A(2838,22458,46723),A(11253,21594,44785),A(11254,21595,44788))
				AddVariant(50400,nil,col,set,"FINE",NOTRANSMOG,A(2838,65283,116401),A(11253,21594,44785),A(11254,21595,44788))
	
	set = AddSet(70000,nil,col,2201411,"HO_WINTER_GARB",ANY,ANY,ANY,ANY)
				AddVariant(70000,nil,col,set,"GREEN",NOTRANSMOG,A(5771,8510,21525),A(8831,15751,34087),A(8830,15750,34086))
				AddVariant(70000,nil,col,set,"RED",NOTRANSMOG,A(5770,8509,21524),A(8829,15749,34085),A(8830,15750,34086))
	
	
end

local function GetDeathKnightAppearances()
	local col = ""
	local set = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = AddSet(70000,nil,col,50,"DK_LG_MELEE_110",PLATE,DEATHKNIGHT,MELEE,ANY)		-- Frost
				AddVariant(70000,nil,col,set,"DK_LG_MELEE_110",TRANSMOG,A(16823,76316),A(18947,76268),A(18047,76315),A(6904,76263),A(13785,76305))
	set = AddSet(70000,nil,col,51,"DK_LG_MELEE_110",PLATE,DEATHKNIGHT,MELEE,ANY)		-- Unholy
				AddVariant(70000,nil,col,set,"DK_LG_MELEE_110",TRANSMOG,A(20431,78760),A(18947,76268),A(11353,76307),A(16827,76303),A(13785,76305))
	set = AddSet(70000,nil,col,52,"DK_LG_TANK_110",PLATE,DEATHKNIGHT,TANK,ANY)			-- Blood
				AddVariant(70000,nil,col,set,"DK_LG_TANK_110",TRANSMOG,A(18947,76268),A(11888,76262),A(20434,76264),A(14758,76310),A(13785,76305))

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"DK_TR_19",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32139,81064),A(32141,81066),A(31975,81068),A(32137,81062),A(32138,81063),A(32140,81065))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(29805,79907),A(29807,79925),A(29974,81550),A(29800,79889),A(29804,79898),A(29806,79916))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(29813,79908),A(29815,79926),A(29961,81551),A(29811,79890),A(29812,79899),A(29814,79917))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29829,79909),A(29831,79927),A(29939,81067),A(29827,79891),A(29828,79900),A(29830,79918))
				
	set = AddSet(70000,nil,col,181,"DK_TR_18",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(26468,70017),A(26470,70059),A(26466,69963),A(26467,70000),A(26464,70072),A(26469,70038),A(26465,69976))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(26460,70018),A(26462,70060),A(26458,69964),A(26459,70001),A(26456,70082),A(26461,70039),A(26457,69978))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(26061,70019),A(26062,70061),A(26051,69965),A(26052,70002),A(26049,70083),A(26063,70040),A(26050,69979))
				
	set = AddSet(70000,nil,col,171,"DK_TR_17",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23890,64429),A(23891,64426),A(23888,64427),A(23889,64428),A(23893,64425))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23898,67192),A(23899,67186),A(23896,67188),A(23897,67190),A(23900,67184))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(24087,67193),A(24089,67187),A(24085,67189),A(24086,67191),A(24088,67185))
				
	set = AddSet(70000,nil,col,161,"DK_TR_MELEE_16",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20921,52338),A(20918,52340),A(20928,52347),A(20920,52348),A(20917,52339))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(21058,52852),A(21063,52920),A(20987,52889),A(20988,52890),A(20986,52853))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20989,52475),A(20985,52468),A(20987,52473),A(20988,52474),A(20986,52472))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21001,52618),A(21003,52620),A(21008,52616),A(21009,52617),A(21002,52619))
				
	set = AddSet(70000,nil,col,151,"DK_TR_MELEE_15",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20476,50327),A(20478,50329),A(20474,50325),A(20475,50326),A(20477,50328))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20311,49974),A(20431,49976),A(20424,49972),A(20480,49973),A(20427,49975))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20126,50951),A(20128,50953),A(20124,50949),A(20125,50950),A(20127,50952))
				
	set = AddSet(70000,nil,col,141,"DK_TR_MELEE_14",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18977,44574),A(18975,44572),A(18979,44576),A(18978,44575),A(18976,44573))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(18581,43694),A(18579,43692),A(18583,43696),A(18582,43695),A(18580,43693))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(19036,44777),A(19038,44779),A(19034,44775),A(19035,44776),A(19037,44778))
				
	set = AddSet(70000,nil,col,131,"DK_TR_MELEE_13",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16839,40119),A(16837,40168),A(16841,40091),A(16840,40102),A(17159,40139))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16823,38807),A(16822,38809),A(16825,38805),A(16824,38806),A(15981,38808))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(16831,40024),A(16829,40073),A(16833,39996),A(16832,40007),A(16830,40044))
				
	set = AddSet(70000,nil,col,121,"DK_TR_MELEE_12",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15635,36428),A(15795,36430),A(15796,36351),A(15529,36427),A(15639,36429))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15801,36705),A(15803,36707),A(15799,36703),A(15800,36704),A(15802,36706))
				
	set = AddSet(70000,nil,col,111,"DK_TR_MELEE_11",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(14106,30068),A(14082,30070),A(13978,30066),A(14105,30067),A(13979,30069))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14749,32742),A(14752,32744),A(14733,32740),A(14772,32741),A(14732,32743))
				
	set = AddSet(70000,nil,col,101,"DK_TR_MELEE_10",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12300,24551),A(12302,24553),A(12298,24549),A(12299,24550),A(12301,24552))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12569,25005),A(12567,25003),A(12571,25007),A(12570,25006),A(12568,25004))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12463,25190),A(12474,25192),A(12444,25188),A(12491,25189),A(12448,25191))
				
	set = AddSet(70000,nil,col,91,"DK_TR_MELEE_A_09",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11905,23576),A(11923,23579),A(11746,23577),A(11791,23580),A(11757,23578))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11905,23588),A(11923,23586),A(11746,23590),A(11791,23589),A(11757,23587))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11905,23583),A(11923,23585),A(11746,23581),A(11791,23582),A(11757,23584))
				
	set = AddSet(70000,nil,col,91,"DK_TR_MELEE_H_09",PLATE,DEATHKNIGHT,ANY,HORDE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11904,23603),A(11921,23605),A(11827,23601),A(11960,23602),A(11838,23604))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11904,23598),A(11921,23596),A(11827,23600),A(11960,23599),A(11838,23597))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11904,23593),A(11921,23595),A(11827,23591),A(11960,23592),A(11838,23594))
				
	set = AddSet(70000,nil,col,81,"DK_TR_MELEE_08",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11400,21810),A(11403,21812),A(11399,21808),A(11401,21809),A(11402,21811))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10325,22239),A(10328,22241),A(10326,22236),A(10329,22238),A(11644,22240))
				
	set = AddSet(70000,nil,col,71,"DK_TR_MELEE_07",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10191,18994),A(10193,18996),A(10189,18992),A(10190,18993),A(10192,18995))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10418,19521),A(10420,19524),A(10415,19518),A(10416,19519),A(10419,19523))
				
	--  CHALLENGE
	col = CHALLENGE
	set = AddSet(70000,nil,col,90,"DK_CD_90",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"DK_CD_90",TRANSMOG,A(17954),A(17956),A(17952),A(17957),A(17953),A(17950),A(17955),A(17951))
				
	-- DUNGEON
	col = DUNGEON
				
	--  PVP
	col = PVP
	set = AddSet(70000,nil,col,18,"DK_PVP_18",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71615),A(25919,71617),A(25915,71613),A(25916,71614),A(25918,71616))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,71497),A(25919,71499),A(25915,71495),A(25916,71496),A(25918,71498))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26452,71336),A(26454,71338),A(26450,71334),A(26451,71335),A(26453,71337))
	set = AddSet(70000,nil,col,18,"DK_PVP_18",PLATE,DEATHKNIGHT,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,71993),A(25927,71995),A(25923,71991),A(25924,71992),A(25926,71994))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,71875),A(25927,71877),A(25923,71873),A(25924,71874),A(225926,71876))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26096,71714),A(26098,71716),A(26094,71712),A(26095,71713),A(26097,71715))
				
	set = AddSet(70000,nil,col,17,"DK_PVP_17",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,70704),A(25927,70706),A(25923,70702),A(25924,70703),A(25926,70705))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,70586),A(25927,70588),A(25923,70584),A(25924,70585),A(25926,70587))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26096,70425),A(26098,70427),A(26094,70423),A(26095,70424),A(26097,70426))
	set = AddSet(70000,nil,col,17,"DK_PVP_17",PLATE,DEATHKNIGHT,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71082),A(25919,71084),A(25915,71080),A(25916,71081),A(25918,71083))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,70964),A(25919,70966),A(25915,70962),A(25916,70963),A(25918,70965))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26452,70803),A(26454,70805),A(26450,70801),A(26451,70802),A(26453,70804))
				
	set = AddSet(70000,nil,col,16,"DK_PVP_16",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23971,64104),A(23973,64106),A(23969,64102),A(23970,64103),A(23972,64105))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23971,63986),A(23973,63988),A(23969,63984),A(23970,63985),A(23972,63987))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24141,64511),A(24143,64513),A(24139,64509),A(24140,64510),A(24142,64512))
	set = AddSet(70000,nil,col,16,"DK_PVP_16",PLATE,DEATHKNIGHT,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23979,67674),A(23981,67676),A(23977,67672),A(23978,67673),A(23980,67675))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23979,67569),A(23981,67571),A(23977,67567),A(23978,67568),A(23980,67570))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24150,60168),A(24152,60170),A(24148,60166),A(24149,60167),A(24151,60169))
				
	set = AddSet(70000,nil,col,15,"DK_PVP_MELEE_15",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20720,54886),A(20722,54835),A(20718,54856),A(20719,54833),A(20721,54834))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20704),A(20706),A(20702),A(20703),A(20700),A(20705),A(20701))
	set = AddSet(70000,nil,col,15,"DK_PVP_MELEE_15",PLATE,DEATHKNIGHT,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20713,55480),A(20711,55478),A(20712,55479),A(20710,55477),A(20714,55481))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20704),A(20706),A(20702),A(20703),A(20700),A(20705),A(20701))
				
	set = AddSet(70000,nil,col,14,"DK_PVP_MELEE_14",PLATE,DEATHKNIGHT,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20712,53374),A(20714,53378),A(20710,53370),A(20711,53372),A(20713,53376))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20704),A(20706),A(20702),A(20703),A(20705))
	set = AddSet(70000,nil,col,14,"DK_PVP_MELEE_14",PLATE,DEATHKNIGHT,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20720,53754),A(20722,53703),A(20718,53724),A(20719,53701),A(20721,53702))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20704),A(20706),A(20702),A(20703),A(20705))
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"DK_OTH_19",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"DK_OTH_19",TRANSMOG,A(32543,80950),A(32545,80952),A(32541,80947),A(32546,80954),A(32542,80949),A(32539,80953),A(32544,80951),A(32540,80948))
	set = AddSet(70000,nil,col,1,"DK_STARTER",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,col,set,"DK_STARTER",TRANSMOG,A(9034,16090),A(9036,16092),A(7003,16094),A(9032,16088),A(9035,16091),A(9031,16087),A(9033,16089),A(9037,16093),A(9030,16086))
	
end

local function GetDemonHunterAppearances()
	local col = ""
	local set = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = AddSet(70000,nil,col,50,"DK_LG_MELEE_110",LEATHER,DEMONHUNTER,MELEE,ANY)
				AddVariant(70000,nil,col,set,"DK_LG_MELEE_110",TRANSMOG,A(8342,78746),A(11154,78718),A(21430,78775),A(19854,78714),A(16625,78726))
	set = AddSet(70000,nil,col,51,"DH_LG_TANK_110",LEATHER,DEMONHUNTER,TANK,ANY)
				AddVariant(70000,nil,col,set,"DH_LG_TANK_110",TRANSMOG,A(11787,78756),A(7741,78751),A(26599,78776),A(19854,78714),A(18100,80337))

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"DH_TR_19",LEATHER,DEMONHUNTER,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32020,81113),A(32022,81115),A(32100,81543),A(32018,81111),A(32019,81112),A(32021,81114))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(32004,80181),A(32006,80187),A(32208,81540),A(32002,80175),A(32003,80178),A(32005,80184))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(32012,80182),A(32014,80188),A(32220,81541),A(32010,80176),A(32011,80179),A(32013,80185))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31913,80183),A(31915,80189),A(32166,81542),A(31911,80177),A(31912,80180),A(31914,80186))
	
	-- DUNGEON
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"DH_OTH_19",LEATHER,DEMONHUNTER,ANY,ANY)
				AddVariant(70000,nil,col,set,"DH_OTH_19",TRANSMOG,A(32573,80990),A(32575,80992),A(32570,80987),A(32576,80994),A(32571,80989),A(32568,80993),A(32574,80991),A(32569,80988))
	
end

local function GetDruidAppearances()
	local col = ""
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"DR_TR_19",LEATHER,DRUID,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32072,81092),A(32074,81094),A(32221,81558),A(32076,81090),A(32071,81091),A(32073,81093))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(30740,79832),A(30742,79850),A(31035,80486),A(30744,79814),A(30739,79823),A(30741,79841))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(30731,79833),A(30733,79851),A(31024,81557),A(30735,79815),A(30730,79824),A(30732,79842))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(30696,79834),A(30698,79852),A(30819,81095),A(30700,79816),A(30695,79825),A(30697,79843))
				
	set = AddSet(70000,nil,col,181,"DR_TR_18",LEATHER,DRUID,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(25588,69761),A(25590,69799),A(25592,69707),A(25587,69740),A(25584,69808),A(25589,69782),A(25585,69716))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(25579,69762),A(25581,69800),A(25583,69708),A(25578,69741),A(25575,69810),A(25580,69783),A(25576,69718))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25619,69763),A(25621,69801),A(25622,69709),A(25618,69742),A(25612,69811),A(25620,69784),A(25613,69719))
				
	set = AddSet(70000,nil,col,171,"DR_TR_17",LEATHER,DRUID,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23649,64432),A(23651,64434),A(23653,67121),A(23648,64431),A(23650,64433))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23668,67124),A(23670,67128),A(23672,67120),A(23667,67122),A(23669,67126))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23658,67970),A(23661,67129),A(23653,67121),A(23657,67123),A(23660,67127))
	
	-- DUNGEON
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"DR_OTH_19",LEATHER,DRUID,ANY,ANY)
				AddVariant(70000,nil,col,set,"DR_OTH_19",TRANSMOG,A(32481,80998),A(32483,81000),A(32479,80995),A(32484,81002),A(32480,80997),A(32477,81001),A(32482,80999),A(32478,80996))
	
end

local function GetHunterAppearances()
	local col = ""
	local set = ""
	
	-- LEGENDARY

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"HU_TR_19",MAIL,HUNTER,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(31867,81076),A(31869,81078),A(32112,81079),A(31865,81074),A(31866,81075),A(31868,81077))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(29758,79868),A(29760,79883),A(30050,81552),A(29755,79859),A(29757,79862),A(29759,79874))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(29766,79869),A(29768,79884),A(30075,81553),A(29764,79860),A(29765,79863),A(29767,79875))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29904,79870),A(29905,79885),A(30129,81554),A(29902,79861),A(29903,79864),A(29906,79876))
	set = AddSet(70000,nil,col,181,"HU_TR_18",MAIL,HUNTER,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(25749,69886),A(25751,69925),A(25747,69843),A(25748,69872),A(25745,69935),A(25750,69904),A(25746,69846))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(25741,69887),A(25743,69926),A(25739,69844),A(25740,69873),A(25737,69937),A(25742,69905),A(25738,69847))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25716,69888),A(25719,69927),A(25714,69845),A(25715,69874),A(25712,69938),A(25718,69906),A(25713,69848))
	
	--[[set = AddSet(60000,nil,RAID,17,"HU_TR_17",MAIL,HUNTER,RANGED,ANY)
				AddVariant(60000,nil,RAID,set,"RAIDFINDER",TRANSMOG,120390,120388,120389,120386,120385,120387)
				AddVariant(60000,nil,RAID,set,"NORMAL",TRANSMOG,115545,115547,115548,115549,115546)
				AddVariant(60000,nil,RAID,set,"HEROIC",TRANSMOG,T17(115545,566),T17(115547,566),T17(115548,566),T17(115549,566),T17(115546,566))
				AddVariant(60000,nil,RAID,set,"MYTHIC",TRANSMOG,T17(115545,567),T17(115547,567),T17(115548,567),T17(115549,567),T17(115546,567))]]--
				
	set = AddSet(50400,nil,RAID,16,"HU_TR_RANGED_16",MAIL,HUNTER,RANGED,ANY)
				AddVariant(50400,nil,RAID,set,"RAIDFINDER",TRANSMOG,A(nil,nil,99080),A(nil,nil,99082),A(nil,nil,99085),A(nil,nil,99086),A(nil,nil,99081))
				AddVariant(60000,nil,RAID,set,"NORMAL",TRANSMOG,A(nil,nil,99660),A(nil,nil,99574),A(nil,nil,99577),A(nil,nil,99578),A(nil,nil,99573))
				AddVariant(60000,nil,RAID,set,"HEROIC",TRANSMOG,A(nil,nil),A(nil,nil,99157),A(nil,nil,99159),A(nil,nil,99167),A(nil,nil,99168),A(nil,nil,99158))
				AddVariant(60000,nil,RAID,set,"MYTHIC",TRANSMOG,A(nil,nil,99402),A(nil,nil,99404),A(nil,nil,99405),A(nil,nil,99406),A(nil,nil,99403))

	set = AddSet(50400,nil,RAID,15,"HU_TR_RANGED_15",MAIL,HUNTER,RANGED,ANY)
				AddVariant(50400,nil,RAID,set,"RAIDFINDER",TRANSMOG,A(nil,nil,95884),A(nil,nil,95886),A(nil,nil,95882),A(nil,nil,95883),A(nil,nil,95885))
				AddVariant(50400,nil,RAID,set,"NORMAL",TRANSMOG,A(nil,nil,95257),A(nil,nil,95259),A(nil,nil,95255),A(nil,nil,95256),A(nil,nil,95258))
				AddVariant(50400,nil,RAID,set,"HEROIC",TRANSMOG,A(nil,nil,96628),A(nil,nil,96630),A(nil,nil,96626),A(nil,nil,96627),A(nil,nil,96629))

	set = AddSet(50400,nil,RAID,14,"HU_TR_RANGED_14",MAIL,HUNTER,RANGED,ANY)
				AddVariant(50400,nil,RAID,set,"RAIDFINDER",TRANSMOG,A(nil,nil,86636),A(nil,nil,86634),A(nil,nil,86638),A(nil,nil,86637),A(nil,nil,86635))
				AddVariant(50400,nil,RAID,set,"NORMAL",TRANSMOG,A(nil,nil,85296),A(nil,nil,85294),A(nil,nil,85298),A(nil,nil,85297),A(nil,nil,85295))
				AddVariant(50400,nil,RAID,set,"HEROIC",TRANSMOG,A(nil,nil,87004),A(nil,nil,87006),A(nil,nil,87002),A(nil,nil,87003),A(nil,nil,87005))

	set = AddSet(50400,nil,RAID,13,"HU_TR_RANGED_13",MAIL,HUNTER,RANGED,ANY)
				AddVariant(50400,nil,RAID,set,"RAIDFINDER",TRANSMOG,A(nil,nil,78793),A(nil,nil,78832),A(nil,nil,78756),A(nil,nil,78769),A(nil,nil,78804))
				AddVariant(50400,nil,RAID,set,"NORMAL",TRANSMOG,A(nil,nil,77030),A(nil,nil,77032),A(nil,nil,77028),A(nil,nil,77029),A(nil,nil,77031))
				AddVariant(50400,nil,RAID,set,"HEROIC",TRANSMOG,A(nil,nil,78698),A(nil,nil,78737),A(nil,nil,78661),A(nil,nil,78674),A(nil,nil,78709))

	set = AddSet(50400,nil,RAID,12,"HU_TR_RANGED_12",MAIL,HUNTER,RANGED,ANY)
				AddVariant(50400,nil,RAID,set,"NORMAL",TRANSMOG,A(nil,nil,71051),A(nil,nil,71053),A(nil,nil,71054),A(nil,nil,71050),A(nil,nil,71052))
				AddVariant(50400,nil,RAID,set,"HEROIC",TRANSMOG,A(nil,nil,71503),A(nil,nil,71505),A(nil,nil,71501),A(nil,nil,71502),A(nil,nil,71504))

	set = AddSet(50400,nil,RAID,11,"HU_TR_RANGED_11",MAIL,HUNTER,RANGED,ANY)
				AddVariant(50400,nil,RAID,set,"NORMAL",TRANSMOG,A(nil,nil,60303),A(nil,nil,60306),A(nil,nil,60304),A(nil,nil,60307),A(nil,nil,60305))
				AddVariant(50400,nil,RAID,set,"HEROIC",TRANSMOG,A(nil,nil,65206),A(nil,nil,65208),A(nil,nil,65204),A(nil,nil,65205),A(nil,nil,65207))

	set = AddSet(50400,nil,RAID,10,"HU_TR_RANGED_10",MAIL,HUNTER,RANGED,ANY)
				AddVariant(50400,nil,RAID,set,"VENDOR",TRANSMOG,A(nil,nil,50115),A(nil,nil,50117),A(nil,nil,50118),A(nil,nil,50114),A(nil,nil,50116))
				AddVariant(50400,nil,RAID,set,"NORMAL",TRANSMOG,A(nil,nil,51153),A(nil,nil,51151),A(nil,nil,51150),A(nil,nil,51154),A(nil,nil,51152))
				AddVariant(50400,nil,RAID,set,"HEROIC",TRANSMOG,A(nil,nil,51286),A(nil,nil,51288),A(nil,nil,51289),A(nil,nil,51285),A(nil,nil,51287))

	set = AddSet(50400,nil,RAID,9,"HU_TR_RANGED_A_09",MAIL,HUNTER,RANGED,ALLIANCE)
				AddVariant(50400,nil,RAID,set,"VENDOR",TRANSMOG,A(nil,nil,48250),A(nil,nil,48253),A(nil,nil,48251),A(nil,nil,48254),A(nil,nil,48252))
				AddVariant(50400,nil,RAID,set,"NORMAL",TRANSMOG,A(nil,nil,48257),A(nil,nil,48259),A(nil,nil,48255),A(nil,nil,48256),A(nil,nil,48258))
				AddVariant(50400,nil,RAID,set,"HEROIC",TRANSMOG,A(nil,nil,48262),A(nil,nil,48260),A(nil,nil,48264),A(nil,nil,48263),A(nil,nil,48261))
				
	set = AddSet(50400,nil,RAID,9,"HU_TR_RANGED_H_09",MAIL,HUNTER,RANGED,HORDE)
				AddVariant(50400,nil,RAID,set,"VENDOR",TRANSMOG,A(nil,nil,48277),A(nil,nil,48279),A(nil,nil,48275),A(nil,nil,48276),A(nil,nil,48278))
				AddVariant(50400,nil,RAID,set,"NORMAL",TRANSMOG,A(nil,nil,48272),A(nil,nil,48270),A(nil,nil,48274),A(nil,nil,48273),A(nil,nil,48271))
				AddVariant(50400,nil,RAID,set,"HEROIC",TRANSMOG,A(nil,nil,48267),A(nil,nil,48269),A(nil,nil,48265),A(nil,nil,48266),A(nil,nil,48268))

	set = AddSet(50400,nil,RAID,8,"HU_TR_RANGED_08",MAIL,HUNTER,RANGED,ANY)
				AddVariant(50400,nil,RAID,set,"PLAYER10",TRANSMOG,A(nil,nil,45361),A(nil,nil,45363),A(nil,nil,45364),A(nil,nil,45360),A(nil,nil,45362))
				AddVariant(50400,nil,RAID,set,"PLAYER25",TRANSMOG,A(nil,nil,46143),A(nil,nil,46145),A(nil,nil,46141),A(nil,nil,46142),A(nil,nil,46144))

	set = AddSet(50400,nil,RAID,7,"HU_TR_RANGED_07",MAIL,HUNTER,RANGED,ANY)
				AddVariant(50400,nil,RAID,set,"PLAYER10",TRANSMOG,A(nil,nil,39578),A(nil,nil,39581),A(nil,nil,39579),A(nil,nil,39582),A(nil,nil,39580))
				AddVariant(50400,nil,RAID,set,"PLAYER25",TRANSMOG,A(nil,nil,40505),A(nil,nil,40507),A(nil,nil,40503),A(nil,nil,40504),A(nil,nil,40506))

	set = AddSet(50400,nil,RAID,6,"HU_TR_RANGED_06",MAIL,HUNTER,RANGED,ANY)
				AddVariant(50400,nil,RAID,set,"HU_TR_RANGED_06",TRANSMOG,A(nil,nil,31003),A(nil,nil,31006),A(nil,nil,31004),A(nil,nil,34443),A(nil,nil,31001),A(nil,nil,34549),A(nil,nil,31005),A(nil,nil,34570))

	set = AddSet(50400,nil,RAID,5,"HU_TR_RANGED_05",MAIL,HUNTER,RANGED,ANY)
				AddVariant(50400,nil,RAID,set,"HU_TR_RANGED_05",TRANSMOG,A(nil,nil,30141),A(nil,nil,30143),A(nil,nil,30139),A(nil,nil,30140),A(nil,nil,30142))

	set = AddSet(50400,nil,RAID,4,"HU_TR_RANGED_04",MAIL,HUNTER,RANGED,ANY)
				AddVariant(50400,nil,RAID,set,"HU_TR_RANGED_04",TRANSMOG,A(nil,nil,29081),A(nil,nil,29084),A(nil,nil,29082),A(nil,nil,29085),A(nil,nil,29083))

	set = AddSet(50400,nil,RAID,3,"HU_TR_03",MAIL,HUNTER,RANGED,ANY)
				AddVariant(50400,nil,RAID,set,"HU_TR_03",TRANSMOG,A(nil,nil,22438),A(nil,nil,22439),A(nil,nil,22436),A(nil,nil,22443),A(nil,nil,22441),A(nil,nil,22442),A(nil,nil,22437),A(nil,nil,22440),A(nil,nil,23067))

	set = AddSet(50400,nil,RAID,2,"HU_TR_02",MAIL,HUNTER,RANGED,ANY)
				AddVariant(50400,nil,RAID,set,"HU_TR_02",TRANSMOG,A(nil,nil,16939),A(nil,nil,16937),A(nil,nil,16942),A(nil,nil,16935),A(nil,nil,16940),A(nil,nil,16936),A(nil,nil,16938),A(nil,nil,16941))

	set = AddSet(50400,nil,RAID,1,"HU_TR_01",MAIL,HUNTER,RANGED,ANY)
				AddVariant(50400,nil,RAID,set,"HU_TR_01",TRANSMOG,A(nil,nil,16846),A(nil,nil,16848),A(nil,nil,16845),A(nil,nil,16850),A(nil,nil,16852),A(nil,nil,16851),A(nil,nil,16847),A(nil,nil,16849))
				
	-- Challenge Dungeon Sets
	set = AddSet(50400,nil,CHALLENGE,1,"HU_CD_90",MAIL,HUNTER,ANY,ANY)
				AddVariant(50400,nil,CHALLENGE,set,"HU_CD_90",TRANSMOG,A(nil,nil,90072),A(nil,nil,90074),A(nil,nil,90070),A(nil,nil,90075),A(nil,nil,90071),A(nil,nil,90068),A(nil,nil,90073),A(nil,nil,90069))
	
	-- Dungeon Sets
	set = AddSet(50400,nil,DUNGEON,30,"HU_DG_03",MAIL,HUNTER,ANY,ANY)
				AddVariant(50400,nil,DUNGEON,set,"HU_DG_03",TRANSMOG,A(nil,nil,28275),A(nil,nil,27801),A(nil,nil,28228),A(nil,nil,27474),A(nil,nil,27874))
				
	set = AddSet(50400,nil,DUNGEON,31,"DG_MAIL_03",MAIL,HUNTER,ANY,ANY)
				AddVariant(50400,nil,DUNGEON,set,"DG_MAIL_03",TRANSMOG,A(nil,nil,28192),A(nil,nil,27713),A(nil,nil,28401),A(nil,nil,27528),A(nil,nil,27936))
				
	set = AddSet(50400,nil,DUNGEON,22,"HU_DG_AQ_2",MAIL,HUNTER,ANY,ANY)
				AddVariant(50400,nil,DUNGEON,set,"HU_DG_AQ_2",TRANSMOG,A(nil,nil,21366),A(nil,nil,21367),A(nil,nil,21370),A(nil,nil,21368),A(nil,nil,21365))
				
	set = AddSet(50400,nil,DUNGEON,21,"HU_DG_AQ_1",MAIL,HUNTER,ANY,ANY)
				AddVariant(50400,nil,DUNGEON,set,"HU_DG_AQ_1",TRANSMOG,A(nil,nil,21401),A(nil,nil,21403),A(nil,nil,21402))
				
	set = AddSet(50400,nil,DUNGEON,20,"HU_DG_02",MAIL,HUNTER,ANY,ANY)
				AddVariant(50400,nil,DUNGEON,set,"REPLICA",TRANSMOG,A(nil,nil,78284),A(nil,nil,78281),A(nil,nil,78282),A(nil,nil,78283),A(nil,nil,78278),A(nil,nil,78285),A(nil,nil,78280),A(nil,nil,78279))
				AddVariant(50400,nil,DUNGEON,set,"ORIGINAL",TRANSMOG,A(nil,nil,22013),A(nil,nil,22016),A(nil,nil,22060),A(nil,nil,22011),A(nil,nil,22015),A(nil,nil,22010),A(nil,nil,22017),A(nil,nil,22061))
				
	set = AddSet(50400,nil,DUNGEON,10,"HU_DG_01",MAIL,HUNTER,ANY,ANY)
				AddVariant(50400,nil,DUNGEON,set,"REPLICA",TRANSMOG,A(nil,nil,78275),A(nil,nil,78273),A(nil,nil,78270),A(nil,nil,78277),A(nil,nil,78271),A(nil,nil,78274),A(nil,nil,78276),A(nil,nil,78272))
				AddVariant(50400,nil,DUNGEON,set,"ORIGINAL",TRANSMOG,A(nil,nil,16677),A(nil,nil,16679),A(nil,nil,16674),A(nil,nil,16681),A(nil,nil,16676),A(nil,nil,16680),A(nil,nil,16678),A(nil,nil,16675))
				
	-- PvP
	set = AddSet(60200,nil,PVP,18,"HU_PVP_18",MAIL,HUNTER,ANY,ALLIANCE)
				AddVariant(60200,nil,PVP,set,"ASPIRANT",TRANSMOG,A(nil,nil,126196),A(nil,nil,126198),A(nil,nil,126194),A(nil,nil,126195),A(nil,nil,126197))
				AddVariant(60200,nil,PVP,set,"COMBATANT",TRANSMOG,A(nil,nil,126039),A(nil,nil,126041),A(nil,nil,126037),A(nil,nil,126038),A(nil,nil,126040))
				AddVariant(60200,nil,PVP,set,"GLADIATOR",TRANSMOG,A(nil,nil,125837),A(nil,nil,125839),A(nil,nil,125835),A(nil,nil,125836),A(nil,nil,125838))
				
	set = AddSet(60200,nil,PVP,18,"HU_PVP_18",MAIL,HUNTER,ANY,HORDE)
				AddVariant(60200,nil,PVP,set,"ASPIRANT",TRANSMOG,A(nil,nil,126673),A(nil,nil,126675),A(nil,nil,126671),A(nil,nil,126672),A(nil,nil,126674))
				AddVariant(60200,nil,PVP,set,"COMBATANT",TRANSMOG,A(nil,nil,126516),A(nil,nil,126518),A(nil,nil,126514),A(nil,nil,126515),A(nil,nil,126517))
				AddVariant(60200,nil,PVP,set,"GLADIATOR",TRANSMOG,A(nil,nil,126316),A(nil,nil,126318),A(nil,nil,126314),A(nil,nil,126315),A(nil,nil,126317))
				
	set = AddSet(60200,nil,PVP,17,"HU_PVP_17",MAIL,MAIL,HUNTER,ANY,ALLIANCE)
				AddVariant(60200,nil,PVP,set,"ASPIRANT",TRANSMOG,A(nil,nil,125082),A(nil,nil,125084),A(nil,nil,125080),A(nil,nil,125081),A(nil,nil,125083))
				AddVariant(60200,nil,PVP,set,"COMBATANT",TRANSMOG,A(nil,nil,124925),A(nil,nil,124927),A(nil,nil,124923),A(nil,nil,124924),A(nil,nil,124926))
				AddVariant(60200,nil,PVP,set,"GLADIATOR",TRANSMOG,A(nil,nil,124723),A(nil,nil,124725),A(nil,nil,124721),A(nil,nil,124722),A(nil,nil,124724))
				
	set = AddSet(60200,nil,PVP,17,"HU_PVP_17",MAIL,HUNTER,ANY,HORDE)
				AddVariant(60200,nil,PVP,set,"ASPIRANT",TRANSMOG,A(nil,nil,125559),A(nil,nil,125561),A(nil,nil,125557),A(nil,nil,125558),A(nil,nil,125560))
				AddVariant(60200,nil,PVP,set,"COMBATANT",TRANSMOG,A(nil,nil,125402),A(nil,nil,125404),A(nil,nil,125400),A(nil,nil,125401),A(nil,nil,125403))
				AddVariant(60200,nil,PVP,set,"GLADIATOR",TRANSMOG,A(nil,nil,125202),A(nil,nil,125204),A(nil,nil,125200),A(nil,nil,125201),A(nil,nil,125203))
				
	set = AddSet(50400,nil,PVP,16,"HU_PVP_16",MAIL,HUNTER,ANY,ALLIANCE)
				AddVariant(50400,nil,PVP,set,"ASPIRANT",TRANSMOG,A(nil,nil,115209),A(nil,nil,115211),A(nil,nil,115207),A(nil,nil,115208),A(nil,nil,115210))
				AddVariant(50400,nil,PVP,set,"COMBATANT",TRANSMOG,A(nil,nil,115061),A(nil,nil,115063),A(nil,nil,115059),A(nil,nil,115060),A(nil,nil,115062))
				AddVariant(50400,nil,PVP,set,"GLADIATOR",TRANSMOG,A(nil,nil,115641),A(nil,nil,115643),A(nil,nil,115639),A(nil,nil,115640),A(nil,nil,115642))
				
	set = AddSet(50400,nil,PVP,16,"HU_PVP_16",MAIL,HUNTER,ANY,HORDE)
				AddVariant(50400,nil,PVP,set,"ASPIRANT",TRANSMOG,A(nil,nil,119986),A(nil,nil,119988),A(nil,nil,119984),A(nil,nil,119985),A(nil,nil,119987))
				AddVariant(50400,nil,PVP,set,"COMBATANT",TRANSMOG,A(nil,nil,119851),A(nil,nil,119853),A(nil,nil,119849),A(nil,nil,119850),A(nil,nil,119852))
				AddVariant(50400,nil,PVP,set,"GLADIATOR",TRANSMOG,A(nil,nil,111114),A(nil,nil,111116),A(nil,nil,111112),A(nil,nil,111113),A(nil,nil,111115))
				
	set = AddSet(50400,nil,PVP,15,"HU_PVP_RANGED_15",MAIL,HUNTER,ANY,ALLIANCE)
				AddVariant(50400,nil,PVP,set,"ALLIANCE",TRANSMOG,A(nil,nil,102670),A(nil,nil,102690),A(nil,nil,102734),A(nil,nil,102737),A(nil,nil,102689))
				AddVariant(50400,nil,PVP,set,"ELITE",TRANSMOG,A(nil,nil,103038),A(nil,nil,103033),A(nil,nil,103035),A(nil,nil,103037),A(nil,nil,103039),A(nil,nil,103040),A(nil,nil,103041))
				
	set = AddSet(50400,nil,PVP,15,"HU_PVP_RANGED_15",MAIL,HUNTER,ANY,HORDE)
				AddVariant(50400,nil,PVP,set,"HORDE",TRANSMOG,A(nil,nil,103416),A(nil,nil,103417),A(nil,nil,103418),A(nil,nil,103419),A(nil,nil,103420))
				AddVariant(50400,nil,PVP,set,"ELITE",TRANSMOG,A(nil,nil,103038),A(nil,nil,103033),A(nil,nil,103035),A(nil,nil,103037),A(nil,nil,103039),A(nil,nil,103040),A(nil,nil,103041))
				
	set = AddSet(50400,nil,PVP,14,"HU_PVP_RANGED_14",MAIL,HUNTER,ANY,ALLIANCE)
				AddVariant(50400,nil,PVP,set,"ALLIANCE",TRANSMOG,A(nil,nil,100322),A(nil,nil,100326),A(nil,nil,100318),A(nil,nil,100320),A(nil,nil,100324))
				AddVariant(50400,nil,PVP,set,"ELITE",TRANSMOG,A(nil,nil,100323),A(nil,nil,100327),A(nil,nil,100319),A(nil,nil,100321),A(nil,nil,100325))
				
	set = AddSet(50400,nil,PVP,14,"HU_PVP_RANGED_14",MAIL,HUNTER,ANY,HORDE)
				AddVariant(50400,nil,PVP,set,"HORDE",TRANSMOG,A(nil,nil,100636),A(nil,nil,100680),A(nil,nil,100635),A(nil,nil,100683),A(nil,nil,100614))
				AddVariant(50400,nil,PVP,set,"ELITE",TRANSMOG,A(nil,nil,100323),A(nil,nil,100327),A(nil,nil,100319),A(nil,nil,100321),A(nil,nil,100325))
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"HU_OTH_19",MAIL,HUNTER,ANY,ANY)
				AddVariant(70000,nil,col,set,"HU_OTH_19",TRANSMOG,A(32491,80982),A(32493,80984),A(32489,80979),A(32494,80986),A(32490,80981),A(32487,80985),A(32492,80983),A(32488,80980))
	
end

local function GetMageAppearances()
	local col = ""
	local set = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = AddSet(70000,nil,col,52,"MA_LG_CASTER_110",CLOTH,MAGE,CASTER,ANY)		-- Arcane
				AddVariant(70000,nil,col,set,"MA_LG_CASTER_110",TRANSMOG,A(12341,78708,133977),A(6358,76281,132413),A(5240,76304,132442),A(12777,76308,132451),A(7318,76312,132455))
	set = AddSet(70000,nil,col,50,"MA_LG_CASTER_110",CLOTH,MAGE,CASTER,ANY)		-- Fire
				AddVariant(70000,nil,col,set,"MA_LG_CASTER_110",TRANSMOG,A(3456,76439,132863),A(12341,78708,133977),A(15880,76275,132406),A(20215,76311,132454),A(7318,76312,132455))
	set = AddSet(70000,nil,col,51,"MA_LG_CASTER_110",CLOTH,MAGE,CASTER,ANY)		-- Frost
				AddVariant(70000,nil,col,set,"MA_LG_CASTER_110",TRANSMOG,A(12341,78708,133977),A(7193,79506,138140),A(11598,76279,132411),A(16439,78710,133970),A(7318,76312,132455))

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,190,"MA_TR_19",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(31938),A(31940),A(32048),A(31942),A(31937),A(31939))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(30785),A(30787),A(31175),A(30789),A(30784),A(30786))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(30776),A(30778),A(31171),A(30780),A(30775),A(30777))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31083),A(31085),A(31115),A(31087),A(31082),A(31084))
	set = AddSet(70000,nil,col,181,"MA_TR_18",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(25451,69597),A(25453,69654),A(25455,69633),A(25450,69578),A(25452,69613),A(25448,69555))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(25423,69598),A(25425,69655),A(25427,69634),A(25422,69579),A(25424,69614),A(25420,69557))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25530,69599),A(25532,69656),A(25534,69635),A(25539,69580),A(25531,69615),A(25531,69615))
	set = AddSet(70000,nil,col,171,"MA_TR_17",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(25451,69597),A(25453,69654),A(25455,69633),A(25450,69578),A(25452,69613),A(25448,69555))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(25423,69598),A(25425,69655),A(25427,69634),A(25422,69579),A(25424,69614),A(25420,69557))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25530,69599),A(25532,69656),A(25534,69635),A(25539,69580),A(25531,69615),A(25531,69615))
	set = AddSet(70000,nil,col,160,"MA_TR_CASTER_16",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20939,52365,99084),A(20934,52360,99079),A(20933,52359,99078),A(20938,52364,99083),A(20932,52358,99077))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20976,52857,99576),A(20971,52940,99659),A(20970,52939,99658),A(20975,52856,99575),A(20977,52938,99657))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20976,52442,99161),A(20971,52434,99153),A(20970,52433,99152),A(20975,52441,99160),A(20977,52443,99162))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21036,52679,99398),A(21039,52682,99401),A(21038,52681,99400),A(21035,52678,99397),A(21037,52680,99399))
	set = AddSet(70000,nil,col,150,"MA_TR_CASTER_15",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20203,50377,95891),A(20199,50380,95894),A(20201,50379,95893),A(20202,50376,95890),A(20204,50378,95892))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20212,50003,95261),A(20208,50006,95264),A(20210,50005,95263),A(20211,50002,95260),A(20213,50004,95262))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20221,51001,96635),A(20217,51004,96638),A(20219,51003,96637),A(20220,51000,96634),A(20222,51002,96636))
	set = AddSet(70000,nil,col,140,"MA_TR_CASTER_14",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18659,44615,86717),A(18657,44612,86714),A(17946,44613,86715),A(17947,44616,86718),A(18660,44614,86716))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(18589,43735,85377),A(18586,43732,85374),A(18587,43733,85375),A(18590,43736,85378),A(18588,43734,85376))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(18668,44861,87008),A(18664,44864,87011),A(18666,44863,87010),A(18667,44860,87007),A(18669,44862,87009))
	set = AddSet(70000,nil,col,130,"MA_TR_CASTER_13",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16649,40133,78796),A(16652,40810,78843),A(16651,40161,78824),A(16648,40103,78766),A(16650,40152,78815))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16667,38463,76213),A(16669,38466,76216),A(16668,38465,76215),A(16666,38462,76212),A(15978,38464,76214))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(16658,40038,78701),A(16661,40085,78748),A(16660,40066,78729),A(16657,40008,78671),A(16659,40057,78720))
	set = AddSet(70000,nil,col,120,"MA_TR_CASTER_12",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15707,36569,71287),A(15710,36572,71290),A(15709,36571,71289),A(15706,36568,71286),A(15708,36570,71288))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15690,36734,71508),A(15693,36737,71511),A(15692,36736,71510),A(15689,36733,71507),A(15691,36735,71509))
	set = AddSet(70000,nil,col,110,"MA_TR_CASTER_11",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(13963,29992,60243),A(13984,29995,60246),A(14025,29993,60244),A(14097,29996,60247),A(13107,29994,60245))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14095,32771,65210),A(14729,32774,65213),A(14709,32773,65212),A(14773,32770,65209),A(14774,32772,65211))
	set = AddSet(70000,nil,col,100,"MA_TR_CASTER_10",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12388,24659,50276),A(12391,24662,50279),A(12390,24661,50278),A(12387,24658,50275),A(12389,24660,50277))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12574,25036,51158),A(12573,25033,51155),A(12426,25034,51156),A(12256,25037,51159),A(12215,25035,51157))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12592,25159,51281),A(12595,25162,51284),A(12594,25161,51283),A(12591,25158,51280),A(12593,25160,51282))
	set = AddSet(70000,nil,col,90,"MA_TR_CASTER_A_09",CLOTH,MAGE,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11918,22963,47748),A(11932,22966,47751),A(11758,22964,47749),A(11792,22967,47752),A(11944,22965,47750))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11918,22969,47754),A(11932,22972,47757),A(11758,22971,47756),A(11792,22968,47753),A(11944,22970,47755))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11918,22976,47761),A(11932,22973,47758),A(11758,22974,47759),A(11792,22977,47762),A(11944,22975,47760))
	set = AddSet(70000,nil,col,90,"MA_TR_CASTER_H_09",CLOTH,MAGE,ANY,HORDE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11945,22989,47774),A(11947,22992,47777),A(11836,22991,47776),A(11854,22988,47773),A(11946,22990,47775))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11945,22986,47771),A(11947,22983,47768),A(11836,22984,47769),A(11854,22987,47772),A(11946,22985,47770))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11945,22979,47764),A(11947,22982,47767),A(11836,22981,47766),A(11854,22978,47763),A(11946,22980,47765))
	set = AddSet(70000,nil,col,80,"MA_TR_CASTER_08",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11415,21833,45365),A(11418,21836,45369),A(11417,21835,45368),A(11652,22254,46131),A(11416,21834,45367))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11650,22252,46129),A(10463,22257,46134),A(11651,22253,46130),A(10461,22255,46132),A(11653,22256,46133))
	set = AddSet(70000,nil,col,70,"MA_TR_CASTER_07",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10146,18914,39491),A(10149,18917,39494),A(10147,18915,39492),A(10150,18918,39495),A(10148,18916,39493))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10358,19406,40416),A(10361,19409,40419),A(10360,19408,40418),A(10357,19405,40415),A(10359,19407,40417))
	set = AddSet(70000,nil,col,60,"MA_TR_CASTER_06",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"MA_TR_CASTER_06",TRANSMOG,A(8098,14124,31056),A(8101,14127,31059),A(8099,14125,31057),A(8963,15975,34447),A(8097,14123,31055),A(9001,16038,34557),A(8100,14126,31058),A(9010,16055,34574))
	set = AddSet(70000,nil,col,50,"MA_TR_CASTER_05",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"MA_TR_CASTER_05",TRANSMOG,A(7848,13624,30206),A(7850,13628,30210),A(7845,13619,30196),A(7847,13623,30205),A(7849,13625,30207))
	set = AddSet(70000,nil,col,40,"MA_TR_CASTER_04",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"MA_TR_CASTER_04",TRANSMOG,A(7457,12952,29076),A(7460,12955,29079),A(7458,12953,29077),A(7461,12956,29080),A(7459,12954,29078))
	set = AddSet(70000,nil,col,30,"MA_TR_03",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"MA_TR_03",TRANSMOG,A(6025,8874,22498),A(6026,8875,22499),A(6023,8872,22496),A(1474,8879,22503),A(6028,8877,22501),A(6029,8878,22502),A(6024,8873,22497),A(6027,8876,22500))
	set = AddSet(70000,nil,col,20,"MA_TR_02",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"MA_TR_02",TRANSMOG,A(5038,6978,16914),A(5041,6981,16917),A(5040,6980,16916),A(5042,6982,16918),A(5037,6977,16913),A(4963,6903,16818),A(5039,6979,16915),A(5036,6976,16912))
	set = AddSet(70000,nil,col,10,"MA_TR_01",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"MA_TR_01",TRANSMOG,A(4941,6880,16795),A(4943,6882,16797),A(4944,6883,16798),A(4945,6884,16799),A(4947,6886,16801),A(4948,6887,16802),A(4942,6881,16796),A(4946,6885,16800))

	-- Challenge Dungeon Sets
	set = AddSet(70000,nil,CHALLENGE,1,"MA_CD_90",CLOTH,MAGE,CASTER,ANY)
				AddVariant(70000,nil,CHALLENGE,set,"MA_CD_90",TRANSMOG,A(19473,46779,90082),A(19474,46782,90085),A(18544,46781,90084),A(18543,46783,90086),A(18545,46778,90081),A(19472,46776,90079),A(18547,46780,90083),A(18541,46777,90080))

	-- Dungeon Sets
	set = AddSet(70000,nil,DUNGEON,30,"MA_DG_03",CLOTH,MAGE,CASTER,ANY)
				AddVariant(70000,nil,DUNGEON,set,"MA_DG_03",TRANSMOG,A(7122,12368,28278),A(6924,12029,27738),A(7102,12346,28229),A(6874,11942,27508),A(6981,12097,27838))
				
	set = AddSet(70000,nil,DUNGEON,22,"MA_DG_AQ_2",CLOTH,MAGE,CASTER,ANY)
				AddVariant(70000,nil,DUNGEON,set,"MA_DG_AQ_2",TRANSMOG,A(5682,8378,21347),A(5681,8376,21345),A(5679,8374,21343),A(1475,8377,21346),A(5680,8375,21344))
				
	set = AddSet(70000,nil,DUNGEON,21,"MA_DG_AQ_1",CLOTH,MAGE,CASTER,ANY)
				AddVariant(70000,nil,DUNGEON,set,"MA_DG_AQ_1",TRANSMOG,A(5713,8423,21413),A(2437,8424,21415))
				
	set = AddSet(70000,nil,DUNGEON,20,"MA_DG_02",CLOTH,MAGE,CASTER,ANY)
				AddVariant(70000,nil,DUNGEON,set,"REPLICA",TRANSMOG,A(5889,39605,78198),A(5892,39608,78201),A(5893,39607,78200),A(5887,39610,78203),A(5890,39604,78197),A(5886,39609,78202),A(5891,39606,78199),A(5888,39603,78196))
				AddVariant(70000,nil,DUNGEON,set,"ORIGINAL",TRANSMOG,A(5889,8683,22065),A(5892,8686,22068),A(5893,8687,22069),A(5887,8681,22063),A(5890,8684,22066),A(5886,8680,22062),A(5891,8685,22067),A(5888,8682,22064))
				
	set = AddSet(70000,nil,DUNGEON,10,"MA_DG_01",CLOTH,MAGE,CASTER,ANY)
				AddVariant(70000,nil,DUNGEON,set,"REPLICA",TRANSMOG,A(4889,39597,78188),A(4891,39600,78191),A(4890,39599,78190),A(4886,39602,78193),A(4887,39596,78187),A(4888,39601,78192),A(4008,39598,78189),A(4885,39595,78186))
				AddVariant(70000,nil,DUNGEON,set,"ORIGINAL",TRANSMOG,A(4889,6817,16686),A(4891,6820,16689),A(4890,6819,16688),A(4886,6814,16683),A(4887,6815,16684),A(4888,6816,16685),A(4008,6818,16687),A(4885,6813,16682))
					
	-- PvP
	set = AddSet(70000,nil,PVP,18,"MA_PVP_18",CLOTH,MAGE,ANY,ALLIANCE)
				AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25854,71634,126211),A(25856,71637,126214),A(25858,71636,126213),A(25853,71633,126210),A(25855,71635,126212))
				AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25854,71537,126078),A(25856,71540,126081),A(25858,71539,126080),A(25853,71536,126077),A(25855,71538,126079))
				AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25442,71384,125884),A(25444,71387,125887),A(25446,71386,125886),A(25441,71383,125883),A(25443,71385,125885))
				
	set = AddSet(70000,nil,PVP,18,"MA_PVP_18",CLOTH,MAGE,ANY,HORDE)
				AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25835,72012,126688),A(25837,72015,126691),A(25839,72014,126690),A(25834,72011,126687),A(25836,72013,126689))
				AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25835,71915,126555),A(25837,71918,126558),A(25839,71917,126557),A(25834,71914,126554),A(25836,71916,126556))
				AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25433,71762,126363),A(25435,71765,126366),A(25437,71764,126365),A(25432,71761,126362),A(25434,71763,126364))
				
	set = AddSet(70000,nil,PVP,17,"MA_PVP_17",CLOTH,MAGE,ANY,ALLIANCE)
				AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25835,70723,125097),A(25837,70726,125100),A(25839,70725,125099),A(25834,70722,125096),A(25836,70724,125098))
				AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25835,70626,124964),A(25837,70629,124967),A(25839,70628,124966),A(25834,70625,124963),A(25836,70627,124965))
				AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25433,70473,124770),A(25435,70476,124773),A(25437,70475,124772),A(25432,70472,124769),A(25434,70474,124771))
				
	set = AddSet(70000,nil,PVP,17,"MA_PVP_17",CLOTH,MAGE,ANY,HORDE)
				AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(25854,71101,125574),A(25856,71104,125577),A(25858,71103,125576),A(25853,71100,125573),A(25855,71102,125575))
				AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(25854,71004,125441),A(25856,71007,125444),A(25858,71006,125443),A(25853,71003,125440),A(25855,71005,125442))
				AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(25442,70851,125249),A(25444,70854,125252),A(25446,70853,125251),A(25441,70850,125248),A(25443,70852,125250))
				
	set = AddSet(70000,nil,PVP,16,"MA_PVP_16",CLOTH,MAGE,ANY,ALLIANCE)
				AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(24392,64121,115221),A(24395,64124,115224),A(24394,64123,115223),A(24391,64120,115220),A(24393,64122,115222))
				AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(24392,64017,115091),A(24395,64020,115094),A(24394,64019,115093),A(24391,64016,115090),A(24393,64018,115092))
				AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(24104,64545,115678),A(24106,64548,115681),A(24108,64547,115680),A(24103,64544,115677),A(24105,64546,115679))
				
	set = AddSet(70000,nil,PVP,16,"MA_PVP_16",CLOTH,MAGE,ANY,HORDE)
				AddVariant(70000,nil,PVP,set,"ASPIRANT",TRANSMOG,A(24401,67691,119998),A(24404,67694,120001),A(24403,67693,120000),A(24400,67690,119997),A(24402,676922,119999))
				AddVariant(70000,nil,PVP,set,"COMBATANT",TRANSMOG,A(24401,67593,119874),A(24404,67596,119877),A(24403,67595,119876),A(24400,67592,119873),A(24402,67594,119875))
				AddVariant(70000,nil,PVP,set,"GLADIATOR",TRANSMOG,A(24113,60206,111151),A(24115,60209,111154),A(24117,60208,111153),A(24112,60205,111150),A(24114,60207,111152))
				
	set = AddSet(70000,nil,PVP,15,"MA_PVP_CASTER_15",CLOTH,MAGE,ANY,ALLIANCE)
				AddVariant(70000,nil,PVP,set,"ALLIANCE",TRANSMOG,A(21130,54849,102667),A(21131,54854,102673),A(21136,54888,102715),A(21140,54908,102735),A(21130,54849,102648))
				AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(21106,55182,103043),A(21112,55185,103046),A(21110,55184,103045),A(21092,55130,102991),A(21104,55181,103042),A(21108,55183,103044),A(21096,55133,102994))
				
	set = AddSet(70000,nil,PVP,15,"MA_PVP_CASTER_15",CLOTH,MAGE,ANY,HORDE)
				AddVariant(70000,nil,PVP,set,"HORDE",TRANSMOG,A(21105,55520,103422),A(21111,55523,103425),A(21109,55522,103424),A(21103,55519,103421),A(21107,55521,103423))
				AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(21106,55182,103043),A(21112,55185,103046),A(21110,55184,103045),A(21092,55130,102991),A(21104,55181,103042),A(21108,55183,103044),A(21096,55133,102994))
				
	set = AddSet(70000,nil,PVP,14,"MA_PVP_CASTER_14",CLOTH,MAGE,ANY,ALLIANCE)
				AddVariant(70000,nil,PVP,set,"ALLIANCE",TRANSMOG,A(21105,53454,100330),A(21111,53460,100336),A(21109,53458,100334),A(21103,53452,100328),A(21107,53456,100332))
				AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(21106,53455,100331),A(21112,53461,100337),A(21110,53459,100335),A(21104,53453,100329),A(21108,53457,100333))
				
	set = AddSet(70000,nil,PVP,14,"MA_PVP_CASTER_14",CLOTH,MAGE,ANY,HORDE)
				AddVariant(70000,nil,PVP,set,"HORDE",TRANSMOG,A(21130,53717,100611),A(21131,53722,100619),A(21136,53756,100661),A(21140,53776,100681),A(21127,53700,100592))
				AddVariant(70000,nil,PVP,set,"ELITE",TRANSMOG,A(21106,53455,100331),A(21112,53461,100337),A(21110,53459,100335),A(21104,53453,100329),A(21108,53457,100333))
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"MA_OTH_19",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,col,set,"MA_OTH_19",TRANSMOG,A(32507,81021),A(32509,81024),A(32512,81023),A(32511,81026),A(32506,81020),A(32504,81025),A(32510,81022),A(32505,81019))
	
end

local function GetMonkAppearances()
	local col = ""
	local set = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = AddSet(70000,nil,col,52,"MO_LG_TANK_110",LEATHER,MONK,TANK,ANY)		-- Brewmaster
				AddVariant(70000,nil,col,set,"MO_LG_TANK_110",TRANSMOG,A(18147,78748),A(23935,78720),A(19854,78714),A(10290,78764),A(20250,78731))
	set = AddSet(70000,nil,col,50,"MO_LG_HEALER_110",LEATHER,MONK,HEALER,ANY)		-- Mistweaver
				AddVariant(70000,nil,col,set,"MO_LG_HEALER_110",TRANSMOG,A(26598,78758),A(12414,78781),A(19027,80336),A(11177,78753),A(17416,78732))
	set = AddSet(70000,nil,col,51,"MO_LG_MELEE_110",LEATHER,MONK,MELEE,ANY)		-- Windwalker
				AddVariant(70000,nil,col,set,"MO_LG_MELEE_110",TRANSMOG,A(17491,78723),A(9805,78782),A(15533,78742),A(19854,78714),A(7107,78733))

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,190,"MO_TR_19",LEATHER,MONK,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(30634),A(30645),A(30535),A(30633),A(30643),A(30644))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(32043,79835),A(32046,79853),A(31917,81109),A(32042,79817),A(32044,79826),A(32045,79844))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(30617),A(30619),A(30510),A(30615),A(30616),A(30618))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(30670),A(30671),A(30491),A(30669),A(30672),A(30673))
	set = AddSet(70000,nil,col,181,"MO_TR_18",LEATHER,MONK,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(26104,69764),A(26105,69802),A(26108,69710),A(26103,69743),A(26100,69812),A(26106,69785),A(26101,69724))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(26113,69755),A(26115,69803),A(26117,69711),A(26112,69744),A(26109,69814),A(26114,69786),A(26110,69726))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(26141,69766),A(26144,69804),A(26146,69712),A(26140,69745),A(26137,69815),A(26143,69787),A(26138,69727))
	set = AddSet(70000,nil,col,171,"MO_TR_17",LEATHER,MONK,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23479,64446),A(23481,64449),A(23477,64448),A(23478,64445),A(23480,64447))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23471,67242),A(23473,67248),A(23469,67246),A(23470,67240),A(23472,67244))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23640,67243),A(23642,67249),A(23638,67247),A(23639,67241),A(23641,67245))
	set = AddSet(70000,nil,col,160,"MO_TR_MELEE_16",LEATHER,MONK,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20931,52364),A(20923,52356),A(20929,52352),A(20930,52353),A(20922,52355))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20967,52934),A(20969,52936),A(20965,52836),A(20966,52837),A(20968,52935))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20967,52437),A(20969,52427),A(20965,52435),A(20966,52436),A(20968,52426))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21033,52674),A(21030,52676),A(21031,52677),A(21032,52673),A(21034,52675))
	set = AddSet(70000,nil,col,150,"MO_TR_MELEE_15",LEATHER,MONK,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20257,50383),A(20262,50385),A(20259,50381),A(20260,50382),A(20261,50384))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20241,50009),A(20246,50011),A(20243,50007),A(20244,50008),A(20245,50010))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20249,51007),A(20254,51009),A(20251,51005),A(20252,51006),A(20253,51008))
	set = AddSet(70000,nil,col,140,"MO_TR_MELEE_14",LEATHER,MONK,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18799,44628),A(18803,44631),A(18801,44630),A(18718,44627),A(18802,44629))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(18593,43748),A(18591,43751),A(18595,43750),A(18594,43747),A(18592,43749))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(18806,44926),A(18811,44929),A(18808,44928),A(18809,44925),A(18810,44927))
				
	--  CHALLENGE
	col = CHALLENGE
	set = AddSet(70000,nil,col,90,"MO_CD_90",LEATHER,MONK,ANY,ANY)
				AddVariant(70000,nil,col,set,"MO_CD_90",TRANSMOG,A(19477,nil,90092),A(19478,nil,90094),A(18141,nil,90090),A(18145,nil,90095),A(18142,nil,90091),A(19476,nil,90088),A(18143,nil,90093),A(18140,nil,90089))
	
	-- DUNGEON
	col = DUNGEON
				
	--  PvP
	col = PVP
	set = AddSet(70000,nil,col,18,"MO_PVP_18",LEATHER,MONK,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25974,71642),A(25976,71644),A(25972,71645),A(25973,71641),A(25975,71643))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25974,71553),A(25976,71555),A(25972,71556),A(25973,71552),A(25975,71554))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26132,71408),A(26133,71410),A(26136,71411),A(26131,71407),A(26134,71409))
	set = AddSet(70000,nil,col,18,"MO_PVP_18",LEATHER,MONK,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25965,72020),A(25967,72022),A(25963,72023),A(25964,72019),A(25966,72021))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25965,71931),A(25967,71933),A(25963,71934),A(25964,71930),A(25966,71932))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26122,71786),A(26123,71788),A(26126,71789),A(26121,71785),A(26124,71787))
				
	set = AddSet(70000,nil,col,17,"MO_PVP_17",LEATHER,MONK,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25965,70731),A(25967,70733),A(25963,70734),A(25964,70730),A(25966,70732))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25965,70642),A(25967,70644),A(25963,70645),A(25964,70641),A(25966,70643))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26122,70497),A(26123,70499),A(26126,70500),A(26121,70496),A(26124,70498))
	set = AddSet(70000,nil,col,17,"MO_PVP_17",LEATHER,MONK,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25974,71109),A(25976,71111),A(25972,71112),A(25973,71108),A(25975,71110))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25974,71020),A(25976,71022),A(25972,71023),A(25973,71019),A(25975,71021))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26132,70875),A(26133,70877),A(26136,70878),A(26131,70874),A(26134,70876))
				
	set = AddSet(70000,nil,col,16,"MO_PVP_16",LEATHER,MONK,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23785,64129),A(23787,64131),A(23783,64132),A(23784,64128),A(23786,64130))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23785,64028),A(23787,64030),A(23787,64030),A(23783,64031),A(23784,64027))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23932,64559),A(23936,64561),A(23935,64562),A(23933,64558),A(23934,64560))
	set = AddSet(70000,nil,col,16,"MO_PVP_16",LEATHER,MONK,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23793,67699),A(23795,67701),A(23791,67702),A(23792,67698),A(23794,67700))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23793,67604),A(23795,67606),A(23791,67607),A(23792,67603),A(23794,67605))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23944,60220),A(23955,60222),A(23940,60223),A(23941,60219),A(23954,60221))
				
	set = AddSet(70000,nil,col,15,"MO_PVP_MELEE_15",LEATHER,MONK,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21065,54885),A(21070,54815),A(21067,54893),A(21068,54855),A(21069,54839))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(21083),A(21088),A(21085),A(21086),A(21082),A(21087),A(21084))
	set = AddSet(70000,nil,col,15,"MO_PVP_MELEE_15",LEATHER,MONK,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(21074,55528),A(21079,55530),A(21076,55531),A(21077,55527),A(21078,55529))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(21083),A(21088),A(21085),A(21086),A(21082),A(21087),A(21084))
				
	set = AddSet(70000,nil,col,14,"MO_PVP_MELEE_14",LEATHER,MONK,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21074,53469),A(21079,53473),A(21076,53475),A(21077,53467),A(21078,53471))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(21083),A(21088),A(21085),A(21086),A(21087))
	set = AddSet(70000,nil,col,14,"MO_PVP_MELEE_14",LEATHER,MONK,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(21065,53753),A(21070,53810),A(21067,53761),A(21077,55527),A(21069,53707))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(21083),A(21088),A(21085),A(21086),A(21087))
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"MO_OTH_19",LEATHER,MONK,ANY,ANY)
				AddVariant(70000,nil,col,set,"MO_OTH_19",TRANSMOG,A(32527,81006),A(32529,81008),A(32525,81003),A(32530,81010),A(32526,81005),A(32523,81009),A(32528,81007),A(32524,81004))
	
end

local function GetPaladinAppearances()
	local set = ""
	local col = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = AddSet(70000,nil,col,50,"PA_LG_HEALER_110",PLATE,PALADIN,HEALER,ANY)		-- Holy
				AddVariant(70000,nil,col,set,"PA_LG_HEALER_110",TRANSMOG,A(23720,78761),A(8370,78790),A(4129,78744),A(8489,78771),A(13785,76305))
	set = AddSet(70000,nil,col,51,"PA_LG_TANK_110",PLATE,PALADIN,TANK,ANY)		-- Protection
				AddVariant(70000,nil,col,set,"PA_LG_TANK_110",TRANSMOG,A(7784,78721),A(8370,78790),A(8489,78771),A(21048,78755),A(13785,76305))
	set = AddSet(70000,nil,col,52,"PA_LG_MELEE_110",PLATE,PALADIN,MELEE,ANY)		-- Retribution
				AddVariant(70000,nil,col,set,"PA_LG_MELEE_110",TRANSMOG,A(10703,78750),A(18877,78724),A(19946,81795),A(8489,78771),A(13785,76305))

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"PA_TR_19",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32147,81058),A(32149,81060),A(32105,81549),A(32151,81056),A(32146,81057),A(32148,81059))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(29644,79910),A(29647,79928),A(29707,81547),A(29646,79892),A(29643,79901),A(29645,79919))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(29653,79911),A(29655,79929),A(29717,81061),A(29657,79893),A(29652,79902),A(29654,79920))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29452,79912),A(29454,79930),A(29676,81548),A(29456,79894),A(29451,79903),A(29453,79921))
	set = AddSet(70000,nil,col,181,"PA_TR_18",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(25700,70020),A(25701,7006),A(25698,69966),A(25699,70003),A(25696,70068),A(25702,70041),A(25697,69980))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(25708,70021),A(25709,70063),A(25706,69967),A(25707,70004),A(25704,70070),A(25710,70042),A(25705,29982))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25778,70022),A(25779,70064),A(25776,69968),A(25777,70005),A(25774,70071),A(25780,70043),A(25775,69983))
	set = AddSet(70000,nil,col,171,"PA_TR_17",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23009,64458),A(23011,64455),A(23007,64456),A(23008,64457),A(23010,64459))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23001,67303),A(23003,67297),A(22999,67299),A(23000,67301),A(23002,67305))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23221,67304),A(23223,67298),A(23219,67300),A(23220,67302),A(23222,67306))
	set = AddSet(70000,nil,col,161,"PA_TR_MELEE_16",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20889,52266),A(20895,52268),A(20901,52333),A(20892,52283),A(20890,52267))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20964,52932),A(20961,52943),A(20962,52847),A(20963,52906),A(20960,52942))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20964,52419),A(20961,52413),A(20962,52417),A(20963,52418),A(20960,52420))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21028,52660),A(21025,52654),A(21026,52668),A(21027,52661),A(21029,52653))
	set = AddSet(70000,nil,col,151,"PA_TR_MELEE_15",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(19952,50398),A(19954,50400),A(19950,50396),A(19951,50397),A(19953,50399))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(19935,50024),A(19937,50026),A(19933,50022),A(19934,50023),A(19936,50025))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(19943,51022),A(19945,51024),A(19941,51020),A(19942,51021),A(19944,51023))
	set = AddSet(70000,nil,col,141,"PA_TR_MELEE_14",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18036,44579),A(18038,44577),A(18034,44581),A(18035,44580),A(18037,44578))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(18021,43699),A(18023,43697),A(18019,43701),A(18020,43700),A(18022,43698))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(18044,44937),A(18046,44939),A(18042,44935),A(18043,44936),A(18045,44938))
	set = AddSet(70000,nil,col,131,"PA_TR_MELEE_13",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16862,40125),A(16864,40174),A(16860,40159),A(16861,40107),A(16863,40144))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16870,38744),A(16871,38746),A(16868,38742),A(16869,38743),A(15980,38745))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(16876,40030),A(16878,40079),A(16874,40064),A(16875,40012),A(16877,40049))
	set = AddSet(70000,nil,col,121,"PA_TR_MELEE_12",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15681,36433),A(15683,36435),A(15685,36431),A(15530,36432),A(15682,36434))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15674,36740),A(15676,36742),A(15678,36738),A(15673,36739),A(15675,36741))
	set = AddSet(70000,nil,col,111,"PA_TR_MELEE_11",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(14049,30073),A(13974,30075),A(13217,30071),A(14001,30072),A(14035,30074))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14755,32777),A(14738,32779),A(14722,32775),A(14715,32776),A(14765,32778))
	set = AddSet(70000,nil,col,101,"PA_TR_MELEE_10",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12411,24693),A(12409,24691),A(12413,24695),A(12412,24694),A(12410,24692))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12280,25040),A(12240,25038),A(12263,25042),A(12248,25041),A(12225,25039))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12498,25155),A(12452,25157),A(12485,25153),A(12469,25154),A(12456,25156))
	set = AddSet(70000,nil,col,91,"PA_TR_MELEE_A_09",PLATE,PALADIN,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11907,23677),A(11925,23679),A(11763,23675),A(12005,23676),A(11738,23678))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11907,23687),A(11925,23685),A(11763,23689),A(12005,23688),A(11738,23686))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11907,23682),A(11925,23684),A(11763,23680),A(12005,23681),A(11738,23683))
	set = AddSet(70000,nil,col,91,"PA_TR_MELEE_H_09",PLATE,PALADIN,ANY,HORDE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11908,23702),A(11924,23700),A(11842,23704),A(12006,23703),A(11819,23701))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11908,23697),A(11924,23695),A(11842,23699),A(12006,23698),A(11819,23696))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11908,23692),A(11924,23694),A(11842,23690),A(12006,23691),A(11819,23693))
	set = AddSet(70000,nil,col,81,"PA_TR_MELEE_08",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11421,21844),A(11422,21847),A(11424,21842),A(11419,21843),A(11420,21846))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11668,22277),A(11664,22273),A(11666,22275),A(11667,22276),A(11665,22274))
	set = AddSet(70000,nil,col,71,"PA_TR_MELEE_07",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10194,19010),A(10197,19012),A(10195,19008),A(10198,19009),A(10196,19001))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10427,19543),A(10429,19545),A(10425,19541),A(10426,19542),A(10428,19544))
	set = AddSet(70000,nil,col,61,"PA_TR_MELEE_06",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"PA_TR_MELEE_06",TRANSMOG,A(8064,14060),A(8067,14068),A(8065,14061),A(8956,15960),A(8063,14053),A(8975,15993),A(8066,14064),A(9003,16042))
	set = AddSet(70000,nil,col,51,"PA_TR_MELEE_05",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"PA_TR_MELEE_05",TRANSMOG,A(7816,13566),A(7818,13568),A(7814,13564),A(7815,13565),A(7817,13567))
	set = AddSet(70000,nil,col,41,"PA_TR_MELEE_04",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"PA_TR_MELEE_04",TRANSMOG,A(7452,12949),A(7455,12951),A(7453,12947),A(7456,12948),A(7454,12950))
	set = AddSet(70000,nil,col,31,"PA_TR_03",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"PA_TR_03",TRANSMOG,A(5987),A(5988),A(5984),A(5983),A(5985),A(5990),A(5986),A(5989))
	set = AddSet(70000,nil,col,21,"PA_TR_02",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"PA_TR_02",TRANSMOG,A(5078,7019),A(5076,7017),A(5081,7022),A(5074,7015),A(5079,7020),A(5075,7016),A(5077,7018),A(5080,7021))
	set = AddSet(70000,nil,col,11,"PA_TR_01",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"PA_TR_01",TRANSMOG,A(4999,6939),A(5001,6941),A(4998,6938),A(5002,6942),A(5005,6945),A(5003,6943),A(5000,6940),A(5004,6944))
				
	--  CHALLENGE
	col = CHALLENGE
	set = AddSet(70000,nil,col,90,"PA_CD_90",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"PA_CD_90",TRANSMOG,A(17548,nil,90100),A(17550,nil,90102),A(17546,nil,90098),A(17551,nil,90103),A(17547,nil,90099),A(17544,nil,90096),A(17549,nil,90101),A(17545,nil,90097))
	
	-- DUNGEON
	col = DUNGEON
	set = AddSet(70000,nil,col,30,"PA_DG_03",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"PA_DG_03",TRANSMOG,A(7123,12369),A(6925,12030),A(7081,12325),A(6890,11963),A(6982,12098))
				
	set = AddSet(70000,nil,col,22,"PA_DG_AQ_2",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"PA_DG_AQ_2",TRANSMOG,A(5707,8404),A(5711,8408),A(5709,8406),A(5710,8407),A(5708,8405))
				
	set = AddSet(70000,nil,col,21,"PA_DG_AQ_1",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"PA_DG_AQ_1",TRANSMOG,A(5713,8411),A(5714,8412))
				
	set = AddSet(70000,nil,col,20,"PA_DG_02",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(5915,39717),A(5917,39721),A(5913,39718),A(5912,39722),A(5914,39719),A(5910,39716),A(5916,39720),A(5911,39715))
				
	set = AddSet(70000,nil,col,10,"PA_DG_01",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(4926,39712),A(4928,39713),A(4925,39711),A(4921,39709),A(4923,39708),A(4922,39707),A(4927,39710),A(4924,39714))
				
	--  PvP
	col = PVP
	set = AddSet(70000,nil,col,18,"PA_PVP_18",PLATE,PALADIN,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71648),A(25919,71650),A(25915,71646),A(25916,71647),A(25918,71649))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,71559),A(25919,71561),A(25915,71557),A(25916,71558),A(25918,71560))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25692,71414),A(25693,71416),A(25690,71412),A(25691,71413),A(25694,71415))
	set = AddSet(70000,nil,col,18,"PA_PVP_18",PLATE,PALADIN,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,72026),A(25927,72028),A(25923,72024),A(25924,72025),A(25926,72027))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,71937),A(25927,71939),A(25923,71935),A(25924,71936),A(25926,71938))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25684,71792),A(25685,71794),A(25682,71790),A(25683,71791),A(25686,71793))
				
	set = AddSet(70000,nil,col,17,"PA_PVP_17",PLATE,PALADIN,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,70737),A(25927,70739),A(25923,70735),A(25924,70736),A(25926,70738))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,70648),A(25927,70650),A(25923,70646),A(25924,70647),A(25926,70649))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25684,70503),A(25685,70505),A(25682,70501),A(25683,70502),A(25686,70504))
	set = AddSet(70000,nil,col,17,"PA_PVP_17",PLATE,PALADIN,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71115),A(25919,71117),A(25915,71113),A(25916,71114),A(25918,71116))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,71026),A(25919,71028),A(25915,71024),A(25916,71025),A(25918,71027))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25692,70881),A(25693,70883),A(25690,70879),A(25691,70880),A(25694,70882))
				
	set = AddSet(70000,nil,col,16,"PA_PVP_16",PLATE,PALADIN,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23971,64135),A(23973,64137),A(23969,64133),A(23970,64134),A(23972,64136))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23971,64034),A(23973,64036),A(23969,64032),A(23970,64033),A(23972,64035))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23710,64565),A(23712,64567),A(23708,64563),A(23709,64564),A(23711,64566))
	set = AddSet(70000,nil,col,16,"PA_PVP_16",PLATE,PALADIN,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23979,67705),A(23981,67707),A(23977,67703),A(23978,67704),A(23980,67706))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23979,67610),A(23981,67612),A(23977,67608),A(23978,67609),A(23980,67611))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23718,60226),A(23720,60228),A(23716,60224),A(23717,60225),A(23719,60227))
				
	set = AddSet(70000,nil,col,15,"PA_PVP_MELEE_15",PLATE,PALADIN,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20676,54944),A(20678,54915),A(20674,54917),A(20675,54819),A(20677,54945))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20684),A(20686),A(20682),A(20683),A(20680),A(20685),A(20681))
	set = AddSet(70000,nil,col,15,"PA_PVP_MELEE_15",PLATE,PALADIN,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20692,55539),A(20694,55541),A(20690,55537),A(20691,55538),A(20693,55540))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20684),A(20686),A(20682),A(20683),A(20680),A(20685),A(20681))
				
	set = AddSet(70000,nil,col,14,"PA_PVP_MELEE_14",PLATE,PALADIN,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20692,53491),A(20694,53495),A(20690,53487),A(20691,53489),A(20693,53493))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20684),A(20686),A(20682),A(20683),A(20685))
	set = AddSet(70000,nil,col,14,"PA_PVP_MELEE_14",PLATE,PALADIN,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20676,53812),A(20678,53783),A(20674,53785),A(20675,53687),A(20677,53813))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20684),A(20686),A(20682),A(20683),A(20685))
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"PA_OTH_19",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,col,set,"PA_OTH_19",TRANSMOG,A(32553,80966),A(32555,80968),A(32551,80963),A(32556,80970),A(32552,80965),A(32549,80969),A(32554,80967),A(32550,80964))
	
end

local function GetPriestAppearances()
	local set = ""
	local col = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = AddSet(70000,nil,col,50,"PR_LG_CASTER_110",CLOTH,PRIEST,CASTER,ANY)		-- Shadow
				AddVariant(70000,nil,col,set,"PR_LG_CASTER_110",TRANSMOG,A(15918,78706),A(8351,78709),A(12788,78717),A(6939,78713),A(7318,76312))
	set = AddSet(70000,nil,col,51,"PR_LG_HEALER_110",CLOTH,PRIEST,HEALER,ANY)		-- Holy
				AddVariant(70000,nil,col,set,"PR_LG_HEALER_110",TRANSMOG,A(3006,78815),A(5230,78716),A(5902,78712),A(19872,78707),A(7318,76312))
	set = AddSet(70000,nil,col,52,"PR_LG_HEALER_110",CLOTH,PRIEST,HEALER,ANY)		-- Discipline
				AddVariant(70000,nil,col,set,"PR_LG_HEALER_110",TRANSMOG,A(6038,76438),A(7245,78715),A(15368,78705),A(8612,78711),A(7318,76312))

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"PR_TR_19",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(31947,81102),A(31949,81105),A(32060,81106),A(31950,81104),A(31946,81101),A(31948,81103))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(30262,79781),A(30264,79808),A(30177,81563),A(30266,79799),A(30261,79772),A(30263,79790))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(30271,79782),A(30273,79809),A(30189,81564),A(30275,79800),A(30270,79773),A(30272,79791))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(30280,79783),A(30282,79810),A(30231,81565),A(30283,79801),A(30279,79774),A(30281,79792))
	set = AddSet(70000,nil,col,181,"PR_TR_18",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(25908,69600),A(25911,69657),A(25909,69636),A(25907,69581),A(25904,69663),A(25910,69616),A(25905,69559))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(25890,69601),A(25893,69658),A(25891,69637),A(25889,69582),A(25886,69665),A(25892,69617),A(25887,69561))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25872,69602),A(25874,69659),A(25876,69638),A(25871,69583),A(25868,69666),A(25873,69618),A(25869,69562))
	set = AddSet(70000,nil,col,171,"PR_TR_17",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23821,64453),A(23819,64451),A(23823,64450),A(23820,64452),A(23822,64454))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23832,67263),A(23835,67259),A(23834,67257),A(23831,67261),A(23833,67265))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(24029,67264),A(24031,67260),A(24033,67258),A(24028,67262),A(24030,67266))
	set = AddSet(70000,nil,col,161,"PR_TR_CASTER_16",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20910,52301),A(20903,52286),A(20902,52285),A(20909,52300),A(20911,52302))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(21060,52868),A(21059,52909),A(20950,52908),A(20959,52867),A(20958,52869))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20957,52403),A(20951,52392),A(20950,52391),A(20959,52402),A(20958,52404))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21023,52641),A(21021,52644),A(21020,52643),A(21022,52640),A(21024,52642))
	set = AddSet(70000,nil,col,151,"PR_TR_CASTER_15",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20049,50417),A(20045,50415),A(20047,50419),A(20048,50416),A(20050,50418))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20058,50043),A(50054,50046),A(20056,50045),A(20057,50042),A(20059,50044))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20040,51041),A(20036,51044),A(20038,51043),A(20039,51040),A(20041,51042))
	set = AddSet(70000,nil,col,141,"PR_TR_CASTER_14",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18981,44603),A(18980,44606),A(17712,44605),A(17713,44602),A(17715,44604))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(18585,43723),A(18584,43726),A(17694,43725),A(17695,43722),A(17697,43724))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(19087,44956),A(19088,44959),A(17703,44958),A(17704,44955),A(17706,44957))
	set = AddSet(70000,nil,col,131,"PR_TR_CASTER_13",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(17037,40135),A(17033,40182),A(17035,40163),A(17036,40114),A(17038,40154))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16918,38568),A(16916,38565),A(16917,38566),A(16919,38569),A(15979,38567))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(17049,40040),A(17045,40087),A(17047,40068),A(17048,40019),A(17050,40059))
	set = AddSet(70000,nil,col,121,"PR_TR_CASTER_12",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15761,36559),A(15764,36562),A(15763,36561),A(15535,36558),A(15762,36560))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15754,36759),A(15757,36762),A(15756,36761),A(15753,36758),A(15755,36760))
	set = AddSet(70000,nil,col,111,"PR_TR_CASTER_11",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(14024,30005),A(13993,30002),A(14037,30003),A(13976,30006),A(14000,30004))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14710,32796),A(14723,32799),A(14763,32798),A(14736,32795),A(14716,32797))
	set = AddSet(70000,nil,col,101,"PR_TR_CASTER_10",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12416,24702),A(12419,24968),A(12418,24704),A(12415,24701),A(12417,24703))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12254,25062),A(12438,25060),A(12341,25058),A(12344,25061),A(12575,25059))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12475,25133),A(12588,25135),A(12507,25137),A(12509,25134),A(12589,25136))
	set = AddSet(70000,nil,col,91,"PR_TR_CASTER_A_09",CLOTH,PRIEST,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11983,23229),A(11934,23232),A(11723,23231),A(11980,23228),A(11733,23230))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11919,23234),A(11934,23237),A(11723,23236),A(11980,23233),A(11733,23235))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11919,23241),A(11934,23238),A(11723,23239),A(11980,23242),A(11733,23240))
	set = AddSet(70000,nil,col,91,"PR_TR_CASTER_H_09",CLOTH,PRIEST,ANY,HORDE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11920,23224),A(11935,23227),A(11807,23226),A(11982,23223),A(11815,23225))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11920,23221),A(11935,23218),A(11807,23219),A(11982,23222),A(11815,23220))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11920,23214),A(11935,23217),A(11807,23216),A(11982,23213),A(11815,23215))
	set = AddSet(70000,nil,col,81,"PR_TR_CASTER_08",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11427,21858),A(11431,21860),A(11430,21862),A(11428,21859),A(11429,21861))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11678,22292),A(11675,22286),A(11676,22289),A(11674,22284),A(11677,22291))
	set = AddSet(70000,nil,col,71,"PR_TR_CASTER_07",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10157,18933),A(10160,18937),A(10158,18935),A(10161,18938),A(10159,18936))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10157,19439),A(10374,19442),A(10373,19441),A(10371,19437),A(10372,19440))
	set = AddSet(70000,nil,col,61,"PR_TR_CASTER_06",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"PR_TR_CASTER_06",TRANSMOG,A(8104,14132),A(8107,14138),A(8105,14133),A(8957,15963),A(8102,14129),A(8989,16018),A(8106,14135),A(9004,16044))
	set = AddSet(70000,nil,col,51,"PR_TR_CASTER_05",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"PR_TR_CASTER_05",TRANSMOG,A(7835,13592),A(7834,13594),A(7830,13590),A(7831,13591),A(7833,13593))
	set = AddSet(70000,nil,col,41,"PR_TR_CASTER_04",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"PR_TR_CASTER_04",TRANSMOG,A(7446,12934),A(7449,12936),A(7447,12932),A(7451,12933),A(7448,12935))
	set = AddSet(70000,nil,col,31,"PR_TR_03",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"PR_TR_03",TRANSMOG,A(6040),A(6041),A(6038),A(6045),A(6043),A(6044),A(6039),A(6042))		-- Get Source ID's from player's who have collected
	set = AddSet(70000,nil,col,21,"PR_TR_02",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"PR_TR_02",TRANSMOG,A(5045,6985),A(5048,6988),A(5047,6987),A(5050,6990),A(5044,6984),A(5049,6989),A(5046,6986),A(5043,6983))
	set = AddSet(70000,nil,col,11,"PR_TR_01",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"PR_TR_01",TRANSMOG,A(4959,6898),A(4961,6901),A(4960,6900),A(4964,6904),A(4958,6897),A(4962,6902),A(3094,6899),A(4957,6896))
				
	--  CHALLENGE
	col = CHALLENGE
	set = AddSet(70000,nil,col,90,"PR_CD_90",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"PR_CD_90",TRANSMOG,A(19482,nil,90116),A(19481,nil,90113),A(18917,nil,90114),A(18916,nil,90112),A(18918,nil,90115),A(19480,nil,90110),A(18920,nil,90117),A(18914,nil,90111))
	
	-- DUNGEON
	col = DUNGEON
	set = AddSet(70000,nil,col,30,"PR_DG_03",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"PR_DG_03",TRANSMOG,A(7195,12457),A(6944,12058),A(7103,12347),A(6891,11964),A(7000,12120))
				
	set = AddSet(70000,nil,col,22,"PR_DG_AQ_2",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"PR_DG_AQ_2",TRANSMOG,A(5683,8379),A(5685,8381),A(5686,8382),A(3512,8383),A(5684,8380))
				
	set = AddSet(70000,nil,col,21,"PR_DG_AQ_1",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"PR_DG_AQ_1",TRANSMOG,A(5715,8421),A(2409,8422))
				
	set = AddSet(70000,nil,col,20,"PR_DG_02",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(5904,39623),A(5906,39620),A(5907,39619),A(5903,39622),A(5905,39624),A(5902,39625),A(5909,39621),A(5908,39626))
				
	set = AddSet(70000,nil,col,10,"PR_DG_01",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(4895,39612),A(4897,39611),A(4892,39616),A(4899,39618),A(4894,39615),A(4898,39614),A(4896,39613),A(4893,39617))
				
	--  PvP
	col = PVP
	set = AddSet(70000,nil,col,18,"PR_PVP_18",CLOTH,PRIEST,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25854,71655),A(25856,71658),A(25858,71657),A(25853,71654),A(25855,71656))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25854,71574),A(25856,71577),A(25858,71576),A(25853,71573),A(25855,71575))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25899,71437),A(25902,71440),A(25900,71439),A(25898,71436),A(25901,71438))
	set = AddSet(70000,nil,col,18,"PR_PVP_18",CLOTH,PRIEST,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25835,72033),A(25837,72036),A(25839,71954),A(25834,72032),A(25836,72034))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25835,71952),A(25837,71955),A(25839,71954),A(25834,71951),A(25836,71953))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25881,71815),A(25884,71818),A(25882,71817),A(25880,71814),A(25883,71816))
				
	set = AddSet(70000,nil,col,17,"PR_PVP_17",CLOTH,PRIEST,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25835,70744),A(25837,70747),A(25839,70746),A(25834,70743),A(25836,70745))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25835,70663),A(25837,70666),A(25839,70665),A(25834,70662),A(25836,70664))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25881,70526),A(25884,70529),A(25882,70528),A(25880,70525),A(25883,70527))
	set = AddSet(70000,nil,col,17,"PR_PVP_17",CLOTH,PRIEST,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25854,71122),A(25856,71125),A(25858,71124),A(25853,71121),A(25855,71123))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25854,71041),A(25856,71044),A(25858,71043),A(25853,71040),A(25855,71042))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25899,70904),A(25902,70907),A(25900,70906),A(25898,70903),A(25901,70905))
				
	set = AddSet(70000,nil,col,16,"PR_PVP_16",CLOTH,PRIEST,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24392,64142),A(24395,64145),A(24394,64144),A(24391,64141),A(24393,64143))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24392,64044),A(24395,64047),A(24394,64046),A(24391,64043),A(24393,64045))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24923,64578),A(24925,64581),A(24927,64580),A(24922,64577),A(24924,64579))
	set = AddSet(70000,nil,col,16,"PR_PVP_16",CLOTH,PRIEST,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24401,67712),A(24404,67715),A(24403,67714),A(24400,67711),A(24402,67713))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24401,67620),A(24404,67623),A(24403,67622),A(24400,67619),A(24402,67621))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24913,60239),A(24916,60242),A(24918,60241),A(24912,60238),A(24915,60240))
				
	set = AddSet(70000,nil,col,15,"PR_PVP_CASTER_15",CLOTH,PRIEST,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20884,54920),A(20880,54853),A(20882,54812),A(20883,54880),A(20885,54811))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20874),A(20870),A(20872),A(20873),A(20868),A(20875),A(20869))
	set = AddSet(70000,nil,col,15,"PR_PVP_CASTER_15",CLOTH,PRIEST,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20864,55561),A(20860,55564),A(20862,55563),A(20863,55560),A(20865,55562))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20874),A(20870),A(20872),A(20873),A(20868),A(20875),A(20869))
				
	set = AddSet(70000,nil,col,14,"PR_PVP_CASTER_14",CLOTH,PRIEST,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20864,52541),A(20860,53547),A(20862,53545),A(20863,53539),A(20865,53543))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20874),A(20870),A(20872),A(20873),A(20875))
	set = AddSet(70000,nil,col,14,"PR_PVP_CASTER_14",CLOTH,PRIEST,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20884,53745),A(20880,53787),A(20882,53726),A(20883,53674),A(20885,53746))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20874),A(20870),A(20872),A(20873),A(20875))
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"PR_OTH_19",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,col,set,"PR_OTH_19",TRANSMOG,A(32472,81029),A(32474,81032),A(32476,81031),A(32475,81034),A(32471,81028),A(32468,81033),A(32473,81030),A(32469,81027))
	
end


--  ROGUE

local function GetRogueAppearances()
	local set = ""
	local col = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = AddSet(70000,nil,col,50,"RO_LG_MELEE_110",LEATHER,ROGUE,CASTER,ANY)		-- Assassination
				AddVariant(70000,nil,col,set,"RO_LG_MELEE_110",TRANSMOG,A(19454,78725),A(26599,78763),A(19854,78714),A(4464,78754),A(15486,78734))
	set = AddSet(70000,nil,col,51,"RO_LG_MELEE_110",LEATHER,ROGUE,HEALER,ANY)		-- Outlaw
				AddVariant(70000,nil,col,set,"RO_LG_MELEE_110",TRANSMOG,A(16717,78784),A(12239,82377),A(19854,78714),A(4464,78754),A(5542,78735))
	set = AddSet(70000,nil,col,52,"RO_LG_MELEE_110",LEATHER,ROGUE,MELEE,ANY)		-- Subtlety
				AddVariant(70000,nil,col,set,"RO_LG_MELEE_110",TRANSMOG,A(19454,78725),A(17341,78785),A(19854,78714),A(4464,78754),A(11721,78736))
	set = AddSet(70000,nil,col,30,"LG_ROGUE_85",ANY,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16977),A(16977))

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,190,"RO_TR_19",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32083,81082),A(32084,81084),A(32298,81555),A(32079,81080),A(32080,81081),A(32081,81083))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(29870,79838),A(29872,79856),A(32292),A(29868,79820),A(29869,79829),A(29871,79847))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(29197,79839),A(29218,79857),A(32282),A(29195,79821),A(29196,79830),A(29217,79848))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(28986,79840),A(28988,79858),A(32317),A(28984,79822),A(28985,81081),A(28987,79849))
				
	set = AddSet(70000,nil,col,181,"RO_TR_18",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(25802,69767),A(25805,69805),A(25800,69713),A(25801,69746),A(25803,69788),A(25799,69728))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(25810,69768),A(25813,69806),A(25808,69714),A(25809,69747),A(25811,69789),A(25807,69730))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25819,69769),A(25821,69807),A(25817,69715),A(25818,69748),A(25820,69790),A(25816,69731))
				
	set = AddSet(70000,nil,col,171,"RO_TR_17",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23127,64462),A(23132,64464),A(23129,64460),A(23130,64461),A(23131,64463))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23140,67317),A(23135,67321),A(23138,67313),A(23137,67315),A(23136,67319))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23489,67318),A(23491,67322),A(23487,67314),A(23488,67316),A(23490,67320))
				
	set = AddSet(70000,nil,col,160,"RO_TR_MELEE_16",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20906,52289),A(20908,52291),A(20904,52287),A(20905,52288),A(20907,52290))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(21061,52912),A(21062,52916),A(20952,52910),A(20953,52911),A(20955,52915))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20954,52395),A(20956,52397),A(20952,52393),A(20953,52394),A(20955,52396))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21015,52629),A(21017,52631),A(21019,52637),A(21018,52636),A(21016,52630))
				
	set = AddSet(70000,nil,col,150,"RO_TR_MELEE_15",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20098,50423),A(20103,50425),A(20100,50421),A(20101,50422),A(20102,50424))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20082,50049),A(20087,50051),A(20084,50047),A(20085,50048),A(20086,50050))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20090,51047),A(20095,51049),A(20092,51045),A(20093,51046),A(20094,51048))
				
	set = AddSet(70000,nil,col,140,"RO_TR_MELEE_14",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18968,44539),A(18966,44537),A(18969,44541),A(18715,44540),A(18967,44538))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(18571,43659),A(18569,43657),A(18573,43661),A(18572,43660),A(18570,43658))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(19085,44962),A(19092,44964),A(19089,44960),A(19090,44961),A(19091,44963))
				
	set = AddSet(70000,nil,col,130,"RO_TR_MELEE_13",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16722,40131),A(16724,40170),A(16720,40096),A(16721,40111),A(16723,40140))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16730,38846),A(16731,38848),A(16728,38844),A(16729,38845),A(15983,38847))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(16714,40036),A(16716,40075),A(16712,40001),A(16713,40016),A(16715,40045))
				
	set = AddSet(70000,nil,col,120,"RO_TR_MELEE_12",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15642,36417),A(15644,36419),A(15641,36415),A(15533,36416),A(15643,36418))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15649,36765),A(15651,36767),A(15647,36763),A(15648,36764),A(15650,36766))
				
	set = AddSet(70000,nil,col,110,"RO_TR_MELEE_11",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(14041,30031),A(13950,30034),A(13611,30033),A(13965,30030),A(13996,30032))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14760,32802),A(14746,32804),A(14731,32800),A(14742,32801),A(14720,32803))
				
	set = AddSet(70000,nil,col,100,"RO_TR_MELEE_10",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12296,24547),A(12303,24554),A(12294,24545),A(12295,24546),A(12297,24548))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12288,25065),A(12244,25063),A(12252,25067),A(12260,25066),A(12222,25064))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12505,25130),A(12467,25132),A(12473,25128),A(12482,25129),A(12495,25131))
				
	set = AddSet(70000,nil,col,90,"RO_TR_MELEE_A_09",LEATHER,ROGUE,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11914,23348),A(11929,23351),A(11730,23349),A(11936,23352),A(11716,23350))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11914,23355),A(11929,23357),A(11730,23353),A(11936,23354),A(11716,23356))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11914,23360),A(11929,23358),A(11730,23362),A(11936,23361),A(11716,23359))
				
	set = AddSet(70000,nil,col,90,"RO_TR_MELEE_H_09",LEATHER,ROGUE,ANY,HORDE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11913,23375),A(11930,23377),A(11813,23373),A(11966,23374),A(11802,23376))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11913,23370),A(11930,23368),A(11813,23372),A(11966,23371),A(11802,23369))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11913,23365),A(11930,23367),A(11813,23363),A(11966,23364),A(11802,23366))
				
	set = AddSet(70000,nil,col,80,"RO_TR_MELEE_08",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11434,21865),A(11436,21867),A(11432,21863),A(11433,21864),A(11435,21866))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11647,22249),A(11649,22251),A(11645,22247),A(11646,22248),A(11648,22250))
				
	set = AddSet(70000,nil,col,70,"RO_TR_MELEE_07",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10170,18959),A(10172,18961),A(10168,18957),A(10169,18958),A(10171,18960))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10392,19472),A(10394,19475),A(10389,19469),A(10390,19470),A(10393,19473))
				
	set = AddSet(70000,nil,col,60,"RO_TR_MELEE_06",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RO_TR_MELEE_06",TRANSMOG,A(8082,14097),A(8085,14100),A(8083,14098),A(8964,15976),A(8081,14096),A(9002,16039),A(8084,14099),A(9011,16056))
				
	set = AddSet(70000,nil,col,50,"RO_TR_MELEE_05",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RO_TR_MELEE_05",TRANSMOG,A(7826,13581),A(7829,13584),A(7824,13579),A(7825,13580),A(7828,13583))
				
	set = AddSet(70000,nil,col,40,"RO_TR_MELEE_04",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RO_TR_MELEE_04",TRANSMOG,A(7441,12922),A(7444,12925),A(7442,12923),A(7445,12926),A(7443,12924))
				
	set = AddSet(70000,nil,col,30,"RO_TR_03",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RO_TR_03",TRANSMOG,A(6009),A(6010),A(6007),A(6014),A(6012),A(6013),A(6008),A(6011))
				
	set = AddSet(70000,nil,col,20,"RO_TR_02",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RO_TR_02",TRANSMOG,A(5032,6972),A(4977,6917),A(5029,6969),A(5035,6975),A(5031,6971),A(5034,6974),A(5033,6973),A(5030,6970))
				
	set = AddSet(70000,nil,col,10,"RO_TR_01",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RO_TR_01",TRANSMOG,A(4966,6906),A(4968,6908),A(4965,6905),A(4970,6910),A(4971,6911),A(4972,6912),A(4967,6907),A(4969,6909))
				
	--  CHALLENGE
	col = CHALLENGE
	set = AddSet(70000,nil,col,90,"RO_CD_90",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RO_CD_90",TRANSMOG,A(17620,nil,90120),A(17625,nil,90125),A(17622,nil,90122),A(17626,nil,90126),A(17623,nil,90123),A(17619,nil,90119),A(17624,nil,90124),A(17621,nil,90121))
				
	-- DUNGEON
	col = DUNGEON
	set = AddSet(70000,nil,col,30,"RO_DG_03",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_DG_03",TRANSMOG,A(7196,12458),A(6945,12059),A(7082,12326),A(6875,11943),A(7019,12146))
				
	set = AddSet(70000,nil,col,22,"RO_DG_AQ_2",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_DG_AQ_2",TRANSMOG,A(5693,8390),A(5694,8391),A(5696,8393),A(5695,8392),A(5692,8389))
				
	set = AddSet(70000,nil,col,21,"RO_DG_AQ_1",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_DG_AQ_1",TRANSMOG,A(5717,8417),A(1832,8418))
				
	set = AddSet(70000,nil,col,20,"RO_DG_02",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(5873,39668),A(5876,39672),A(5877,39674),A(5872,39669),A(5874,39671),A(5870,39670),A(5875,39673),A(5871,39667))
				
	set = AddSet(70000,nil,col,10,"RO_DG_01",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(4909,39665),A(4910,39666),A(4685,6852),A(3879,39660),A(4913,39662),A(567,39664),A(4911,39663),A(4912,39661))	
				
	--  PvP
	col = PVP
	set = AddSet(70000,nil,col,18,"RO_PVP_18",LEATHER,ROGUE,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25974,71661),A(25976,71663),A(25972,71659),A(25973,71660),A(25975,71662))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25974,71580),A(25976,71582),A(25972,71578),A(25973,71579),A(25975,71581))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25794,71443),A(25797,71445),A(25792,71441),A(25793,71442),A(25795,71444))
	set = AddSet(70000,nil,col,18,"RO_PVP_18",LEATHER,ROGUE,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25965,72039),A(25967,72041),A(25963,72037),A(25964,72038),A(25966,72040))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25965,72039),A(25967,71960),A(25963,71956),A(25964,71957),A(25966,71959))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25786,71821),A(25789,71823),A(25784,71819),A(25785,71820),A(25787,71822))
				
	set = AddSet(70000,nil,col,17,"RO_PVP_17",LEATHER,ROGUE,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25965,70750),A(25967,70752),A(25963,70748),A(25964,70749),A(25966,70751))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25965,70669),A(25967,70671),A(25963,70667),A(25964,70668),A(25966,70670))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25786,70532),A(25789,70534),A(25784,70530),A(25785,70531),A(25787,70533))
	set = AddSet(70000,nil,col,17,"RO_PVP_17",LEATHER,ROGUE,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25794,71128),A(25976,71130),A(25972,71126),A(25973,71127),A(25975,71129))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25974,71047),A(25976,71049),A(25972,71045),A(25973,71046),A(25975,71048))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25794,70910),A(25797,70912),A(25792,70908),A(25793,70909),A(25795,70911))
				
	set = AddSet(70000,nil,col,16,"RO_PVP_16",LEATHER,ROGUE,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23785,64148),A(23787,64150),A(23783,64146),A(23784,64147),A(23786,64149))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23785,64050),A(23787,64052),A(23783,64048),A(23784,64049),A(23786,64051))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23732,64584),A(23734,64586),A(23730,64582),A(23731,64583),A(23733,64585))
	set = AddSet(70000,nil,col,16,"RO_PVP_16",LEATHER,ROGUE,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23793,67718),A(23795,67720),A(23791,67716),A(23792,67717),A(23794,67719))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23793,67626),A(23795,67628),A(23791,67624),A(23792,67625),A(23794,67625))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23741,60245),A(23743,60247),A(23739,60243),A(23740,60244),A(23742,60246))
				
	set = AddSet(70000,nil,col,15,"RO_PVP_MELEE_15",LEATHER,ROGUE,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20770,54883),A(20772,54904),A(20768,54900),A(20769,54845),A(20771,54903))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20762),A(20764),A(20760),A(20761),A(20758),A(20763),A(20759))
	set = AddSet(70000,nil,col,15,"RO_PVP_MELEE_15",LEATHER,ROGUE,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20754,55575),A(20756,55577),A(20752,55573),A(20753,55574),A(20755,55576))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20762),A(20764),A(20760),A(20761),A(20758),A(20763),A(20759))
				
	set = AddSet(70000,nil,col,14,"RO_PVP_MELEE_14",LEATHER,ROGUE,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20754,53558),A(20756,53562),A(20752,53554),A(20753,53556),A(20755,53560))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20762),A(20764),A(20760),A(20761),A(20758))
	set = AddSet(70000,nil,col,14,"RO_PVP_MELEE_14",LEATHER,ROGUE,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20770,55054),A(20772,55075),A(20768,55071),A(20769,55016),A(20771,55074))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20762),A(20764),A(20760),A(20761),A(20758))

	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,191,"RO_OTH_19",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,col,set,"RO_OTH_19",TRANSMOG,A(32535,81014),A(32537,81016),A(32533,81011),A(32538,81018),A(32534,81013),A(32531,81017),A(32536,81015),A(32532,81012))		-- Need belt and feet for each variant
	
end


--  SHAMAN

local function GetShamanAppearances()
	local set = ""
	local col = ""
	
	-- LEGENDARY
	col = LEGENDARY	
	set = AddSet(70000,nil,col,50,"SH_LG_CASTER_110",MAIL,SHAMAN,CASTER,ANY)
				AddVariant(70000,nil,col,set,"SH_LG_CASTER_110",TRANSMOG,A(6844,78759),A(10114,78787),A(17407,78768),A(8006,76319),A(16160,78739))
	set = AddSet(70000,nil,col,51,"SH_LG_HEALER_110",MAIL,SHAMAN,HEALER,ANY)
				AddVariant(70000,nil,col,set,"SH_LG_CASTER_110",TRANSMOG,A(8443,78789),A(9923,78743),A(4573,78770),A(8006,76319),A(15925,78740))
	set = AddSet(70000,nil,col,52,"SH_LG_MELEE_110",MAIL,SHAMAN,MELEE,ANY)
				AddVariant(70000,nil,col,set,"SH_LG_CASTER_110",TRANSMOG,A(18562,79374),A(15919,78769),A(13592,78788),A(8006,76319),A(19925,79500))
	
	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,190,"SH_TR_19",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32095,81070),A(32096,81073),A(32086,81539),A(32099,81072),A(32094,81069),A(32097,81071))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(30937,79871),A(30938,79886),A(31364,81536),A(30942,79880),A(30936,79865),A(30939,79877))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(30928,79872),A(30929,79887),A(31363,81537),A(30932,79881),A(30927,79866),A(30930,79878))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31039,79873),A(31041,79888),A(31348,81538),A(31043,79882),A(31038,79867),A(31040,79879))
				
	set = AddSet(70000,nil,col,181,"SH_TR_18",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(26019,69889),A(26021,69928),A(26023,69910),A(26018,69875),A(26016),A(26020,69907),A(26472))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(26036,69890),A(26038,69929),A(26040,69911),A(26035,69876),A(26033),A(26037,69908),A(26474))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(26000,69891),A(26002,69930),A(26004,69912),A(25999,69877),A(25996),A(26001,69909),A(25997))
				
	set = AddSet(70000,nil,col,171,"SH_TR_17",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23360,64469),A(23361,64466),A(23363,64467),A(23368,64468),A(23365,64465))		-- Need Belt and Feet
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23370,67287),A(23371,67281),A(23373,67283),A(23378,67285),A(23375,67279))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23678,67288),A(23679,67282),A(23688,67284),A(23677,67286),A(23689,67280))
				
	set = AddSet(70000,nil,col,160,"SH_TR_16",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20893,52370),A(20887,52372),A(20897,52368),A(20896,52369),A(20894,52371))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20943,52926),A(20945,52928),A(20949,52860),A(20942,52861),A(20944,52927))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20943,52374),A(20945,52376),A(20949,52387),A(20942,52373),A(20944,52375))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21010,52613),A(21012,52615),A(21014,52625),A(21013,52626),A(21011,52614))
				
	set = AddSet(70000,nil,col,150,"SH_TR_CASTER_15",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20359,50438),A(20562,50440),A(20362,50436),A(20358,50437),A(20360,50439))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20313,50064),A(20509,50066),A(20344,50062),A(20341,50063),A(20342,50065))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20350,51062),A(20573,51064),A(20353,51060),A(20349,51061),A(20351,51063))
				
	set = AddSet(70000,nil,col,140,"SH_TR_CASTER_14",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18960,44529),A(18958,44531),A(18717,44527),A(18716,44528),A(18959,44530))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(18560,43649),A(18558,43651),A(18563,43647),A(18561,43648),A(18559,43650))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(19069,44977),A(19095,44979),A(19093,44975),A(19094,44976),A(19076,44978))
				
	set = AddSet(70000,nil,col,130,"SH_TR_CASTER_13",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16736,40117),A(17150,40173),A(16740,40155),A(16735,40098),A(16737,40143))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16752,38856),A(16984,38854),A(16750,38858),A(16753,38857),A(15986,38855))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(16745,40022),A(17149,40078),A(16741,40060),A(16746,40003),A(16744,40048))
				
	set = AddSet(70000,nil,col,120,"SH_TR_CASTER_12",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15892,36575),A(15814,36577),A(15875,36573),A(15532,36574),A(15831,36576))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15933,36780),A(15922,36782),A(15929,36778),A(15921,36779),A(15916,36781))
				
	set = AddSet(70000,nil,col,110,"SH_TR_CASTER_11",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(14036,30047),A(14050,30049),A(14104,30045),A(13983,30046),A(14046,30048))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14764,32817),A(14754,32819),A(14703,32815),A(14730,32816),A(14751,32818))
				
	set = AddSet(70000,nil,col,100,"SH_TR_CASTER_10",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12538,24921),A(12550,24923),A(12547,24919),A(12548,24920),A(12549,24922))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12355,25080),A(12279,25082),A(12345,25078),A(12282,25079),A(12223,25081))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12458,25115),A(26844,25113),A(12510,25117),A(12500,25116),A(12587,25114))
				
	set = AddSet(70000,nil,col,90,"SH_TR_CASTER_A_09",MAIL,SHAMAN,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11911,23440),A(11898,23442),A(11785,23438),A(11943,23439),A(11747,23441))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11911,23450),A(11898,23447),A(11785,23443),A(11943,23444),A(11747,23446))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11911,23450),A(11898,23448),A(11785,23452),A(11943,23451),A(11747,23449))
				
	set = AddSet(70000,nil,col,90,"SH_TR_CASTER_H_09",MAIL,SHAMAN,ANY,HORDE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11912,23465),A(11928,23467),A(11853,23463),A(11970,23464),A(11828,23466))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11912,23460),A(11928,23458),A(11853,23462),A(11970,23434),A(11828,23459))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11912,23455),A(11928,23457),A(11853,23453),A(11970,23429),A(11828,23456))
				
	set = AddSet(70000,nil,col,80,"SH_TR_CASTER_08",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11438,21874),A(11440,21876),A(11441,21877),A(11437,21873),A(11439,21875))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11681,22329),A(11683,22331),A(11679,22326),A(11680,22327),A(11439,22330))
				
	set = AddSet(70000,nil,col,70,"SH_TR_CASTER_07",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10178,18974),A(10181,18976),A(10179,18972),A(10182,18973),A(10180,18975))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10402,19489),A(10404,19491),A(10400,19487),A(10401,19488),A(10403,19490))
				
	set = AddSet(70000,nil,col,60,"SH_TR_CASTER_06",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_TR_CASTER_06",TRANSMOG,A(8076,14085),A(8080,14094),A(8078,14088),A(8959,15966),A(8074,14079),A(8995,16027),A(8079,14091),A(9006,16047))
				
	set = AddSet(70000,nil,col,50,"SH_TR_CASTER_05",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_TR_CASTER_05",TRANSMOG,A(7838,13602),A(7840,13604),A(7836,13600),A(7837,13601),A(7839,13603))
				
	set = AddSet(70000,nil,col,40,"SH_TR_CASTER_04",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_TR_CASTER_04",TRANSMOG,A(7436,12914),A(7439,12916),A(7437,12912),A(7440,12913),A(7438,12915))
				
	set = AddSet(70000,nil,col,30,"SH_TR_03",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_TR_03",TRANSMOG,A(6001,nil,22466),A(6002,nil,22467),A(5999,nil,22464),A(6006,nil,22471),A(6004,nil,22469),A(6005,nil,22470),A(6000,nil,22465),A(6003,nil,22468))	-- Ring 23065
				
	set = AddSet(70000,nil,col,20,"SH_TR_02",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_TR_02",TRANSMOG,A(5070,7011),A(5068,7009),A(5073,7014),A(5066,7007),A(5071,7012),A(5067,7008),A(5069,7010),A(5072,7013))
				
	set = AddSet(70000,nil,col,10,"SH_TR_01",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_TR_01",TRANSMOG,A(4987,6927),A(4989,6929),A(4986,6926),A(4985,6925),A(4984,6924),A(4983,6923),A(4988,6928),A(4982,6922))
				
	--  CHALLENGE
	col = CHALLENGE
	set = AddSet(70000,nil,col,90,"SH_CD_90",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_CD_90",TRANSMOG,A(17856,nil,90132),A(17858,nil,90134),A(17854,nil,90130),A(17851,nil,90127),A(17855,nil,90131),A(17852,nil,90128),A(17857,nil,90133),A(17853,nil,90129))
				
	-- DUNGEON
	col = DUNGEON
	set = AddSet(70000,nil,col,30,"SH_DG_03",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_DG_03",TRANSMOG,A(7163,12417),A(6962,12077),A(7104,12348),A(6876,11944),A(7020,12147))
				
	set = AddSet(70000,nil,col,22,"SH_DG_AQ_2",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_DG_AQ_2",TRANSMOG,A(5702,8399),A(5706,8403),A(5704,8401),A(5705,8402),A(5703,8400))
				
	set = AddSet(70000,nil,col,21,"SH_DG_AQ_1",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_DG_AQ_1",TRANSMOG,A(5715,8413),A(2676,8414))
				
	set = AddSet(70000,nil,col,20,"SH_DG_02",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(5920,39699),A(5924,39704),A(5925,39705),A(5918,39701),A(5922,39700),A(5921,39702),A(5923,39706),A(5919,39703))
				
	set = AddSet(70000,nil,col,10,"SH_DG_01",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(4870,39691),A(4872,39693),A(4869,39695),A(4874,39694),A(4875,39696),A(4876,39698),A(4871,39692),A(4873,39697))	
				
	--  PVP
	col = PVP
	set = AddSet(70000,nil,col,18,"SH_PVP_18",MAIL,SHAMAN,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25957,71666),A(25958,71668),A(25955,71664),A(25956,71665),A(25959,71667))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25957,71585),A(25958,71587),A(25955,71583),A(25956,71584),A(25959,71586))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26027,71448),A(26030,71450),A(26031,71446),A(26026,71447),A(26572,71449))
	set = AddSet(70000,nil,col,18,"SH_PVP_18",MAIL,SHAMAN,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25941,72044),A(25942,72046),A(25939,72042),A(25940,72043),A(25943,72045))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25941,71963),A(25942,71965),A(25939,71961),A(25940,71962),A(25943,71964))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26009,71826),A(26011,71828),A(26015,71824),A(26008,71825),A(26574,71827))
				
	set = AddSet(70000,nil,col,17,"SH_PVP_17",MAIL,SHAMAN,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25941,70755),A(25942,70757),A(25939,70753),A(25940,70754),A(25943,70756))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25941,70674),A(25942,70676),A(25939,70672),A(25940,70673),A(25943,70675))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26009,70537),A(26011,70539),A(26015,70535),A(26008,70536),A(26572,70538))
	set = AddSet(70000,nil,col,17,"SH_PVP_17",MAIL,SHAMAN,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25957,71133),A(25958,71135),A(25955,71131),A(25956,71132),A(25959,71134))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25957,71052),A(25958,71054),A(25955,71050),A(25956,71051),A(25959,71053))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26027,70915),A(26030,70917),A(26031,70913),A(26026,70914),A(26572,70916))
				
	set = AddSet(70000,nil,col,16,"SH_PVP_16",MAIL,SHAMAN,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24281,64153),A(24283,64155),A(24279,64151),A(24280,64152),A(24282,64154))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24281,64055),A(24283,64057),A(24279,64053),A(24280,64054),A(24282,64056))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24756,64589),A(24757,64591),A(24754,64587),A(24755,64588),A(24758,64590))
	set = AddSet(70000,nil,col,16,"SH_PVP_16",MAIL,SHAMAN,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24294,67723),A(24296,67725),A(24292,67721),A(24293,67722),A(24295,67724))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24294,67631),A(24296,67634),A(24292,67629),A(24293,67630),A(24295,67632))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24765,60250),A(24767,60252),A(24763,60248),A(24764,60249),A(24766,60251))
				
	set = AddSet(70000,nil,col,15,"SH_PVP_CASTER_15",MAIL,SHAMAN,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20652,54869),A(20654,54824),A(20650,54914),A(20651,54868),A(20653,54946))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20628),A(20630),A(20626),A(20624),A(20627),A(20629),A(20625))
	set = AddSet(70000,nil,col,15,"SH_PVP_CASTER_15",MAIL,SHAMAN,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20644,55596),A(20646,55598),A(21113,55594),A(20643,55595),A(20645,55597))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20628),A(20630),A(20626),A(20624),A(20627),A(20629),A(20625))
				
	set = AddSet(70000,nil,col,14,"SH_PVP_CASTER_14",MAIL,SHAMAN,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20644,53598),A(20646,53602),A(21113,53594),A(20643,53596),A(20645,53600))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20628),A(20630),A(20626),A(20627),A(20629))
	set = AddSet(70000,nil,col,14,"SH_PVP_CASTER_14",MAIL,SHAMAN,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20652,53737),A(20654,53686),A(20650,53782),A(20651,53807),A(20653,53814))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20628),A(20630),A(20626),A(20627),A(20629))
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"SH_OTH_19",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,col,set,"SH_OTH_19",TRANSMOG,A(32499,80974),A(32501,80976),A(32497,80971),A(32502,80978),A(32498,80973),A(32495,80977),A(32500,80975),A(32496,80972))
	
end

--  WARLOCK

local function GetWarlockAppearances()
	local set = ""
	local col = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = AddSet(70000,nil,col,50,"WK_LG_CASTER_110",CLOTH,WARLOCK,CASTER,ANY)		-- Destruction
				AddVariant(70000,nil,col,set,"WK_LG_CASTER_110",TRANSMOG,A(24713,76267),A(1466,76276),A(21312,76313),A(14774,76251),A(7318,76312))
	set = AddSet(70000,nil,col,51,"WK_LG_CASTER_110",CLOTH,WARLOCK,CASTER,ANY)		-- Demonology
				AddVariant(70000,nil,col,set,"WK_LG_CASTER_110",TRANSMOG,A(18071,76273),A(12774,76270),A(14717,76266),A(14774,76251),A(7318,76312))
	set = AddSet(70000,nil,col,52,"WK_LG_CASTER_110",CLOTH,WARLOCK,CASTER,ANY)		-- Affliction
				AddVariant(70000,nil,col,set,"WK_LG_CASTER_110",TRANSMOG,A(12764,76274),A(26163,76272),A(3131,76314),A(14774,76251),A(7318,76312))

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"WK_TR_19",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(31884,81097),A(31886,81100),A(31871,81562),A(31888,81099),A(31883,81096),A(31885,81098))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(29171,79784),A(29173,79811),A(29040,81559),A(29175,79802),A(29170,79775),A(29172,79793))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(29161,79785),A(29163,79812),A(29028,81560),A(29165,79803),A(29160,79776),A(29162,79794))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(29083,79786),A(29085,79813),A(29049,81561),A(29087,79804),A(29082,79777),A(29084,79795))
	set = AddSet(70000,nil,col,181,"WK_TR_18",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(26169,69603),A(26171,69660),A(26173,69639),A(26168,69584),A(26165,69667),A(26170,69619))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(26160,69604),A(26162,69661),A(26164,69640),A(26159,69585),A(26156,69669),A(26161,69620))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(26214,69605),A(26216,69662),A(26218,69641),A(26213,69586),A(26210,69670),A(26215,69621))
	set = AddSet(70000,nil,col,171,"WK_TR_17",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23850,64476),A(23853,64479),A(23852,64478),A(23849,64475),A(23851,64477))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23841,67225),A(23844,67231),A(23843,67229),A(23840,67223),A(23842,67227))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23866,67226),A(23869,67232),A(23868,67230),A(23865,67224),A(23867,67228))
	set = AddSet(70000,nil,col,161,"WK_TR_CASTER_16",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20925,52335),A(20919,52326),A(20927,52337),A(20924,52334),A(20926,52336))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20947,52378),A(20996,52486),A(20995,52485),A(20946,52377),A(20948,52379))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20947,52849),A(20996,52882),A(20995,52851),A(20946,52848),A(20948,52850))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(51053,52706),A(21051,52698),A(21050,52697),A(21052,52705),A(21054,52707))
	set = AddSet(70000,nil,col,151,"WK_TR_CASTER_15",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(19964,50460),A(19960,50463),A(19962,50462),A(19963,50459),A(19965,50461))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20156,50068),A(20159,50071),A(20158,50070),A(20155,50067),A(20157,50069))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(19972,51084),A(19975,51087),A(19974,51086),A(19971,51083),A(19973,51085))
	set = AddSet(70000,nil,col,141,"WK_TR_CASTER_14",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18084,44608),A(18080,44611),A(18082,44610),A(18083,44607),A(18982,44609))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(18093,43728),A(18089,43731),A(18091,43730),A(18092,43727),A(18094,43729))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(18075,45014),A(18071,45017),A(18073,45016),A(18074,45013),A(19058,45015))
	set = AddSet(70000,nil,col,131,"WK_TR_CASTER_13",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16549,40134),A(16545,40181),A(16547,40162),A(16548,40113),A(16550,40153))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16558,38563),A(16554,38560),A(16556,38561),A(16557,38564),A(16559,38562))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(16540,40039),A(16536,40086),A(16538,40067),A(16539,40018),A(16541,40058))
	set = AddSet(70000,nil,col,121,"WK_TR_CASTER_12",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15821,36564),A(15879,36567),A(15830,36566),A(15536,36563),A(15878,36565))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15918,36804),A(15945,36807),A(15913,36806),A(15943,36803),A(15944,36805))
	set = AddSet(70000,nil,col,111,"WK_TR_CASTER_11",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(14098,29998),A(14099,30001),A(14031,30000),A(14045,29997),A(13992,29999))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14775,32821),A(14776,32824),A(14705,32823),A(14759,32820),A(14724,32822))
	set = AddSet(70000,nil,col,101,"WK_TR_CASTER_10",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12371,24637),A(12374,24640),A(12373,24639),A(12370,24636),A(12372,24638))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12579,25086),A(12576,25083),A(12577,25084),A(12580,25087),A(12578,25085))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12586,25109),A(12465,25112),A(12459,25111),A(12476,25108),A(12493,25110))
	set = AddSet(70000,nil,col,91,"WK_TR_CASTER_A_09",CLOTH,WARLOCK,CASTER,ALLIANCE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11948,22999),A(11949,23002),A(11893,23001),A(11950,22998),A(11778,23000))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11948,23004),A(11949,23007),A(11893,23006),A(11950,23003),A(11778,23005))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11948,22993),A(11949,22996),A(11893,23006),A(11950,23003),A(11778,23005))
	set = AddSet(70000,nil,col,91,"WK_TR_CASTER_H_09",CLOTH,WARLOCK,CASTER,HORDE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11917,23016),A(11933,23013),A(11951,23014),A(11952,23017),A(11847,23015))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11917,23019),A(11933,23022),A(11951,23021),A(11952,23018),A(11847,23020))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11917,23011),A(11933,23008),A(11951,23009),A(23012,23012),A(11847,23010))
	set = AddSet(70000,nil,col,81,"WK_TR_CASTER_08",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11443,21883),A(11447,21887),A(11446,21886),A(11444,21884),A(11445,21885))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11657,22262),A(11655,22259),A(11656,22260),A(11654,22258),A(11566,22261))
	set = AddSet(70000,nil,col,71,"WK_TR_CASTER_07",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10151,18919),A(10154,18922),A(10152,18920),A(10155,18923),A(10153,18921))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10363,19411),A(10366,19414),A(10365,19413),A(10362,19410),A(10364,19412))
	set = AddSet(70000,nil,col,61,"WK_TR_CASTER_06",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"WK_TR_CASTER_06",TRANSMOG,A(8093,14119),A(8096,14122),A(8094,14120),A(8958,15965),A(8092,14118),A(8994,16026),A(8095,14121),A(9005,16045))
	set = AddSet(70000,nil,col,51,"WK_TR_CASTER_05",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"WK_TR_CASTER_05",TRANSMOG,A(7852,13630),A(7855,13633),A(7854,13632),A(7851,13629),A(7853,13631))
	set = AddSet(70000,nil,col,41,"WK_TR_CASTER_04",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"WK_TR_CASTER_04",TRANSMOG,A(7414,12850),A(7418,12854),A(7415,12851),A(7419,12855),A(7417,12853))
	set = AddSet(70000,nil,col,31,"WK_TR_03",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"WK_TR_03",TRANSMOG,A(6032),A(6033),A(6030),A(6037),A(6035),A(6036),A(6031),A(6034))
	set = AddSet(70000,nil,col,21,"WK_TR_02",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"WK_TR_02",TRANSMOG,A(5053,6993),A(5055,6996),A(5054,6995),A(5057,6998),A(5052,6992),A(5056,6997),A(4008,6994),A(5051,6991))
	set = AddSet(70000,nil,col,11,"WK_TR_01",CLOTH,WARLOCK,CASTER,ANY)
				AddVariant(70000,nil,col,set,"WK_TR_01",TRANSMOG,A(4954,6893),A(4953,6892),A(4955,6894),A(4950,6889),A(4951,6890),A(4952,6891),A(4956,6895),A(4949,6888))
				
	--  CHALLENGE
	col = CHALLENGE
	set = AddSet(70000,nil,col,90,"WK_CD_90",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"WK_CD_90",TRANSMOG,A(19485),A(19484),A(19174),A(19173),A(19175),A(19483),A(19177),A(19171))
				
	-- DUNGEON
	col = DUNGEON
	set = AddSet(70000,nil,col,30,"WK_DG_03",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"WK_DG_03",TRANSMOG,A(7197,12459),A(6946,12060),A(7105,12349),A(6892,11965),A(7035,12168))
				
	set = AddSet(70000,nil,col,22,"WK_DG_AQ_2",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"WK_DG_AQ_2",TRANSMOG,A(5676,8371),A(5675,8369),A(5674,8368),A(3128,8370),A(5677,8372))
				
	set = AddSet(70000,nil,col,21,"WK_DG_AQ_1",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"WK_DG_AQ_1",TRANSMOG,A(5717,8425),A(3006,8426))
				
	set = AddSet(70000,nil,col,20,"WK_DG_02",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(5898,39635),A(5897,39639),A(5899,39642),A(5895,39637),A(5901,39641),A(5894,39638),A(5896,39636),A(5900,39640))
				
	set = AddSet(70000,nil,col,10,"WK_DG_01",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(4900,39632),A(4903,39631),A(4902,39630),A(4905,39634),A(4907,39628),A(4904,39627),A(4901,39633),A(4906,39629))	
				
	--  PVP
	col = PVP
	set = AddSet(70000,nil,col,18,"WK_PVP_18",CLOTH,WARLOCK,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25854,71672),A(25856,71675),A(25858,71674),A(25853,71671),A(25855,71673))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25854,71600),A(25856,71603),A(25858,71602),A(25853,71599),A(25855,71601))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26187,71463),A(26189,71466),A(26191,71465),A(26186,71462),A(26188,71464))
	set = AddSet(70000,nil,col,18,"WK_PVP_18",CLOTH,WARLOCK,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25835,72050),A(25837,72053),A(25839,72052),A(25834,72049),A(25836,72051))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25835,71978),A(25837,71981),A(25839,71980),A(25834,71977),A(25836,71979))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26178,71841),A(26180,71844),A(26182,71843),A(26177,71840),A(26179,71842))
				
	set = AddSet(70000,nil,col,17,"WK_PVP_17",CLOTH,WARLOCK,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25835,70761),A(25837,70764),A(25839,70763),A(25834,70760),A(25836,70762))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25835,70689),A(25837,70692),A(25839,70691),A(25834,70688),A(25836,70690))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26178,70552),A(26180,70555),A(26182,70554),A(26177,70551),A(26179,70553))
	set = AddSet(70000,nil,col,17,"WK_PVP_17",CLOTH,WARLOCK,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25854,71139),A(25856,71142),A(25858,71141),A(25853,71138),A(25855,71140))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25854,71067),A(25856,71070),A(25858,71069),A(25853,71066),A(25855,71068))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26187,70930),A(26189,70933),A(26191,70932),A(26186,70929),A(26188,70931))
				
	set = AddSet(70000,nil,col,16,"WK_PVP_16",CLOTH,WARLOCK,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24392,64157),A(24395,64160),A(24394,64159),A(24391,64156),A(24393,64158))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24392,64072),A(24395,64075),A(24394,64074),A(24391,64071),A(24393,64073))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24131,64611),A(24133,64614),A(24135,64613),A(24130,64610),A(24132,64612))
	set = AddSet(70000,nil,col,16,"WK_PVP_16",CLOTH,WARLOCK,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(24401,67727),A(24404,67730),A(24403,67729),A(24400,67726),A(24402,67728))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(24401,67642),A(24404,67645),A(24403,67644),A(24400,67641),A(24402,67643))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(24122,60274),A(24124,60277),A(24126,60276),A(24121,60273),A(24123,60275))
				
	set = AddSet(70000,nil,col,15,"WK_PVP_CASTER_15",CLOTH,WARLOCK,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21138,54899),A(21132,54859),A(21128,54843),A(21137,54898),A(21141,54924))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(21117),A(21123),A(21121),A(21115),A(21094),A(21119),A(21098))
	set = AddSet(70000,nil,col,15,"WK_PVP_CASTER_15",CLOTH,WARLOCK,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(21116,55611),A(21122,55614),A(21120,55613),A(21114,55610),A(21118,55612))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(21117),A(21123),A(21121),A(21115),A(21094),A(21119),A(21098))
				
	set = AddSet(70000,nil,col,14,"WK_PVP_CASTER_14",CLOTH,WARLOCK,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(21116,53628),A(21122,53634),A(21120,53632),A(21114,53626),A(21118,53630))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20628),A(20630),A(20626),A(20627),A(20629))
	set = AddSet(70000,nil,col,14,"WK_PVP_CASTER_14",CLOTH,WARLOCK,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(21138,53767),A(21132,53727),A(21128,53711),A(21137,53766),A(21141,53792))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(21117),A(21123),A(21121),A(21115),A(21119))
	
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"WK_OTH_19",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,col,set,"WK_OTH_19",TRANSMOG,A(32517,81037),A(32519,81040),A(32521,81039),A(32520,81042),A(32516,81036),A(32513,81041),A(32518,81038),A(32514,81035))
	
end


--  WARRIOR

local function GetWarriorAppearances()
	local set = ""
	local col = ""
	
	-- LEGENDARY
	col = LEGENDARY
	set = AddSet(70000,nil,col,50,"WR_LG_MELEE_110",PLATE,WARRIOR,MELEE,ANY)		-- Arms
				AddVariant(70000,nil,col,set,"WR_LG_MELEE_110",TRANSMOG,A(15788,78792),A(20175,78745),A(26953,78772),A(11590,78762),A(13785,76305))
	set = AddSet(70000,nil,col,51,"WR_LG_MELEE_110",PLATE,WARRIOR,MELEE,ANY)		-- Fury
				AddVariant(70000,nil,col,set,"WR_LG_MELEE_110",TRANSMOG,A(7730,78773),A(18867,78812),A(15788,78792),A(26953,78772),A(13785,76305))
	set = AddSet(70000,nil,col,52,"WR_LG_TANK_110",PLATE,WARRIOR,TANK,ANY)		-- Protection
				AddVariant(70000,nil,col,set,"WR_LG_TANK_110",TRANSMOG,A(11157,78722),A(15788,78792),A(6335,78793),A(15910,78774),A(13785,76305))

	-- RAID
	col = RAID
	set = AddSet(70000,nil,col,191,"WR_TR_19",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(32157),A(32160),A(32127),A(32156),A(32158),A(32159))		-- Need belt and feet for each variant
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(31444),A(31447),A(32242),A(31443),A(31445),A(31446))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(31410),A(31413),A(31545),A(31409),A(31411),A(31412))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(31449),A(31455),A(32229),A(31452),A(31453),A(31454))
				
	set = AddSet(70000,nil,col,181,"WR_TR_18",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(25500,70023),A(25501,70065),A(25498,69969),A(25499,70006),A(25496,70076),A(25503,70044),A(25497,69972))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(25492,70024),A(25493,70066),A(25490,69970),A(25491,70007),A(25488,70078),A(25495,70045),A(25489,69974))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25649,70025),A(25650,70067),A(25647,69971),A(25648,70008),A(25645,70079),A(25652,70046),A(25646,69975))
	
	set = AddSet(70000,nil,col,171,"WR_TR_17",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23069,64474),A(23071,64471),A(23067,64472),A(23068,64473),A(23070,64470))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23113,67174),A(23115,67168),A(23111,67170),A(23112,67172),A(23114,67166))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23151,67175),A(23152,67169),A(23156,67171),A(23157,67173),A(23158,67167))
	
	set = AddSet(70000,nil,col,161,"WR_TR_MELEE_16",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20913,52327),A(20912,52317),A(20916,52328),A(20915,52315),A(20914,52316))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20994,52883),A(20991,52842),A(20992,52884),A(20993,52840),A(20990,52841))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20994,52484),A(20991,52477),A(20992,52478),A(20993,52479),A(20990,52476))
				AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(21047,52699),A(21045,52695),A(21049,52692),A(21046,52693),A(21048,52694))
	
	set = AddSet(70000,nil,col,151,"WR_TR_MELEE_15",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(20077,50464),A(20079,50468),A(20075,50465),A(20076,50466),A(20078,50467))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(20168,50072),A(20170,50076),A(20166,50073),A(20167,50074),A(20169,50075))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(20176,51088),A(20178,51092),A(20174,51089),A(20175,51090),A(20177,51091))
	
	set = AddSet(70000,nil,col,141,"WR_TR_MELEE_14",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(18164,44571),A(18166,44567),A(18067,44570),A(18068,44569),A(18165,44568))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(18158,43691),A(18160,43687),A(18156,43690),A(18157,43689),A(18159,43688))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(18172,45018),A(18174,45022),A(18170,45019),A(18171,45020),A(18173,45021))
	
	set = AddSet(70000,nil,col,131,"WR_TR_MELEE_13",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(16699,40120),A(16697,40167),A(16701,40089),A(16700,40100),A(16698,40138))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(16694,38814),A(16695,38818),A(16692,38815),A(16693,38816),A(15982,38817))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(16686,40025),A(16688,40072),A(16684,39994),A(16685,40005),A(16687,40043))
	
	set = AddSet(70000,nil,col,121,"WR_TR_MELEE_12",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(15768,36438),A(15638,36440),A(15769,36436),A(15528,36437),A(15767,36439))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(15783,36808),A(15785,36812),A(15781,36809),A(15782,36810),A(15784,36811))
	
	set = AddSet(70000,nil,col,111,"WR_TR_MELEE_11",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(13997,30057),A(14004,30059),A(13215,30055),A(13966,30058),A(14047,30056))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(14719,32827),A(14712,32829),A(14761,32825),A(14741,32826),A(14758,32828))
	
	set = AddSet(70000,nil,col,101,"WR_TR_MELEE_10",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(12291,24542),A(12293,24544),A(12289,24540),A(12290,24541),A(12292,24543))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(12243,25090),A(12253,25088),A(12233,25092),A(12271,25091),A(12226,25089))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(12582,25105),A(12585,25107),A(12581,25103),A(12583,25104),A(12584,25106))
	
	set = AddSet(70000,nil,col,91,"WR_TR_MELEE_A_09",PLATE,WARRIOR,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11903,23498),A(11922,23501),A(11712,23499),A(11894,23502),A(11734,23500))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11903,23510),A(11922,23508),A(11712,23512),A(11894,23511),A(11734,23509))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11903,23505),A(11922,23507),A(11712,23503),A(11894,23504),A(11734,23506))
	
	set = AddSet(70000,nil,col,91,"WR_TR_MELEE_H_09",PLATE,WARRIOR,ANY,HORDE)
				AddVariant(70000,nil,col,set,"VENDOR",TRANSMOG,A(11906,23515),A(11965,23517),A(11798,23513),A(11856,23514),A(11814,23516))
				AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(11906,23525),A(11965,23527),A(11798,23523),A(11856,23524),A(11814,23526))
				AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(11906,23520),A(11965,23522),A(11798,23518),A(11856,23519),A(11814,23521))
	
	set = AddSet(70000,nil,col,81,"WR_TR_MELEE_08",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(11450,21896),A(11453,21898),A(11449,21894),A(11451,21895),A(11452,21897))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(11663,22272),A(11662,22270),A(11661,22268),A(11560,22269),A(11563,22271))
	
	set = AddSet(70000,nil,col,71,"WR_TR_MELEE_07",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"PLAYER10",TRANSMOG,A(10184,18983),A(10187,18986),A(10185,18984),A(10188,18987),A(10186,18985))
				AddVariant(70000,nil,col,set,"PLAYER25",TRANSMOG,A(10408,19501),A(10410,19503),A(10406,19498),A(10407,19500),A(10409,19502))
	
	set = AddSet(70000,nil,col,61,"WR_TR_MELEE_06",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"WR_TR_MELEE_06",TRANSMOG,A(8059,14045),A(8062,14051),A(8060,14047),A(8960,15969),A(8058,140422),A(8996,16030),A(8061,14049),A(9007,16050))
	
	set = AddSet(70000,nil,col,51,"WR_TR_MELEE_05",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"WR_TR_MELEE_05",TRANSMOG,A(7811,13555),A(7813,13557),A(7809,13553),A(7810,13554),A(7812,13556))
	
	set = AddSet(70000,nil,col,41,"WR_TR_MELEE_04",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"WR_TR_MELEE_04",TRANSMOG,A(7431,12904),A(7434,12906),A(7432,12902),A(7435,12903),A(7433,12905))
	
	set = AddSet(70000,nil,col,31,"WR_TR_03",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"WR_TR_03",TRANSMOG,A(5977),A(5978),A(5975),A(5982),A(5980),A(5981),A(5976),A(5979))
	
	set = AddSet(70000,nil,col,21,"WR_TR_02",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"WR_TR_02",TRANSMOG,A(5086,7027),A(5084,7025),A(5089,7030),A(5082,7023),A(5087,7028),A(5083,7024),A(5085,7026),A(5088,7029))
	
	set = AddSet(70000,nil,col,11,"WR_TR_01",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"WR_TR_01",TRANSMOG,A(5011,6951),A(5013,6953),A(5010,6950),A(5006,6946),A(5008,6948),A(5009,6949),A(5012,6952),A(5007,6947))
				
	--  CHALLENGE
	col = CHALLENGE
	set = AddSet(70000,nil,col,90,"WR_CD_90",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"WR_CD_90",TRANSMOG,A(19487),A(19488),A(18627),A(18632),A(18628),A(19486),A(18630),A(18626))
				
	-- DUNGEON
	col = DUNGEON
	set = AddSet(70000,nil,col,30,"WR_DG_03",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"WR_DG_03",TRANSMOG,A(7164,15418),A(6963,12078),A(7083,12327),A(6857,11923),A(7036,12191))
				
	set = AddSet(70000,nil,col,22,"WR_DG_AQ_2",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"WR_DG_AQ_2",TRANSMOG,A(5669,8363),A(5670,8364),A(5671,8365),A(5672,8366),A(5673,8367))
				
	set = AddSet(70000,nil,col,21,"WR_DG_AQ_1",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"WR_DG_AQ_1",TRANSMOG,A(5712,8409),A(3841,8410))
				
	set = AddSet(70000,nil,col,20,"WR_DG_02",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(5867,39735),A(5869,39737),A(5865,39733),A(5864,39732),A(5866,39734),A(5862,39738),A(2868,39736),A(5863,39731))
				
	set = AddSet(70000,nil,col,10,"WR_DG_01",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"REPLICA",TRANSMOG,A(4930,39727),A(4932,39730),A(4929,39728),A(4934,39726),A(4936,39725),A(4935,39724),A(4931,39729),A(4933,39723))	
				
	--  PVP
	col = PVP
	set = AddSet(70000,nil,col,18,"WR_PVP_18",PLATE,WARRIOR,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71678),A(25919,71680),A(25915,71676),A(25916,71677),A(25918,71679))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,71606),A(25919,71608),A(25915,71604),A(25916,71605),A(25918,71607))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25518,71469),A(25519,71471),A(25516,71467),A(25517,71468),A(25521,71470))
	set = AddSet(70000,nil,col,18,"WR_PVP_18",PLATE,WARRIOR,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,72056),A(25927,72058),A(25923,72054),A(25924,72055),A(25926,72057))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,71984),A(25927,71986),A(25923,71982),A(25924,71983),A(25926,71985))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25508,71847),A(25509,71849),A(25506,71845),A(25507,71846),A(25511,71848))
				
	set = AddSet(70000,nil,col,17,"WR_PVP_17",PLATE,WARRIOR,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,70767),A(25927,70769),A(25923,70765),A(25924,70766),A(25926,70768))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,70695),A(25927,70697),A(25923,70693),A(25924,70694),A(25926,70696))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25508,70558),A(25509,70560),A(25506,70556),A(25507,70557),A(25511,70559))
	set = AddSet(70000,nil,col,17,"WR_PVP_17",PLATE,WARRIOR,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71145),A(25919,71147),A(25915,71143),A(25916,71144),A(25918,71146))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,71073),A(25919,71075),A(25915,71071),A(25916,71072),A(25918,71074))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25518,70936),A(25519,70938),A(25516,70934),A(25517,70935),A(25521,70937))
				
	set = AddSet(70000,nil,col,16,"WR_PVP_16",PLATE,WARRIOR,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23971,64163),A(23973,64165),A(23969,64161),A(23970,64162),A(23972,64164))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23971,64078),A(23973,64080),A(23969,64076),A(23970,64077),A(23972,64079))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23753,64617),A(23755,64619),A(23751,64615),A(23752,64616),A(23754,64618))
	set = AddSet(70000,nil,col,16,"WR_PVP_16",PLATE,WARRIOR,ANY,HORDE)
				AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(23979,67733),A(23981,67735),A(23977,67731),A(23978,67732),A(23980,67734))
				AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(23979,67648),A(23981,67650),A(23977,67646),A(24400,67647),A(24402,67649))
				AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(23761,60280),A(23763,60282),A(23759,60278),A(23760,60279),A(23762,60281))
				
	set = AddSet(70000,nil,col,15,"WR_PVP_MELEE_15",PLATE,WARRIOR,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20660,54809),A(20662,54861),A(20658,54901),A(20659,54808),A(20661,54905))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20635),A(20637),A(20633),A(20634),A(20631),A(20636),A(20632))
	set = AddSet(70000,nil,col,15,"WR_PVP_MELEE_15",PLATE,WARRIOR,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20668,55617),A(20670,55619),A(20666,55615),A(20667,55616),A(20669,55618))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20635),A(20637),A(20633),A(20634),A(20631),A(20636),A(20632))
				
	set = AddSet(70000,nil,col,14,"WR_PVP_MELEE_14",PLATE,WARRIOR,ANY,ALLIANCE)
				AddVariant(70000,nil,col,set,"ALLIANCE",TRANSMOG,A(20668,53640),A(20670,53644),A(20666,53636),A(20667,53638),A(20669,53642))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20635),A(20637),A(20633),A(20634),A(20636))
	set = AddSet(70000,nil,col,14,"WR_PVP_MELEE_14",PLATE,WARRIOR,ANY,HORDE)
				AddVariant(70000,nil,col,set,"HORDE",TRANSMOG,A(20660,53677),A(20662,53729),A(20658,53769),A(20659,53676),A(20661,53773))
				AddVariant(70000,nil,col,set,"ELITE",TRANSMOG,A(20635),A(20637),A(20633),A(20634),A(20636))
	
	
	-- OTHER
	col = OTHER
	set = AddSet(70000,nil,col,190,"WR_OTH_19",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,col,set,"WR_OTH_19",TRANSMOG,A(32561,80958),A(32563,80960),A(32559,80955),A(32564,80962),A(32560,80957),A(32557,80961),A(32562,80959),A(32558,80956))
	
end


--
--  Global Functions
--

function SetCollector:GetCollectionsList()
	local db = SetCollector.db.global.collections
	local collections = {}
	
	for i=1, #db do
		collections[i] = {
			Title = db[i].Title,
			sets = {}
		}
		if db[i].Sets then
			local sortedList = SetCollector:SortList(db[i].Sets, "key", "DESC")
			for j,value in sortedList do
				collections[i].sets[j] = {
					Title = db[i].Sets[j].Title
				}
			end
		end
	end
	
	return collections
end

function SetCollector:GetAppearanceSources(appearanceID)
	-- Taken from WardrobeCollectionFrame_GetSortedAppearanceSources(appearanceID)
	local comparison = function(source1, source2)
		if ( source1.isCollected ~= source2.isCollected ) then
			return source1.isCollected;
		end

		if ( source1.quality and source2.quality ) then
			if ( source1.quality ~= source2.quality ) then
				return source1.quality > source2.quality;
			end
		else
			return source1.quality;
		end

		return source1.sourceID > source2.sourceID;
	end

	if appearanceID then
		local sources = C_TransmogCollection.GetAppearanceSources(appearanceID);
		if sources then table.sort(sources, comparison) end
		return sources;
	end
end

function SetCollector:GetCollectedCount(collection, set, variant)
	local sourcesCount, collectedCount = 0, 0
	if SetCollector.db.global.collections[collection].Sets[set].Variants[variant] then
		local appearances = SetCollector.db.global.collections[collection].Sets[set].Variants[variant].Appearances
		for i=1, #appearances do
			local anyCollected, sources = false, C_TransmogCollection.GetAppearanceSources(appearances[i].ID)
			if sources then
				sourcesCount = sourcesCount + #sources
				for j=1, #sources do
					local _, _, _, _, isCollected, link = C_TransmogCollection.GetAppearanceSourceInfo(sources[j].sourceID)
					if not anyCollected and isCollected then
						anyCollected = true
					end
				end
			end
			if anyCollected then collectedCount = collectedCount + 1 end
		end
	end
	if sourcesCount == 0 and collectedCount == 0 then collectedCount = "*" end
	
	return collectedCount
end

function SetCollector:IsAppearanceCollected(appearanceID)
	local anyCollected = false
	if appearanceID then
		local sources = C_TransmogCollection.GetAppearanceSources(appearanceID)
		if sources then
			for j=1, #sources do
				local isCollected = select(5, C_TransmogCollection.GetAppearanceSourceInfo(sources[j].sourceID))
				if not anyCollected and isCollected then
					anyCollected = true
				end
			end
		end
	end
	return anyCollected
end

function SetCollector:IsSetFullyCollected(collection, set)
	local isCollected = true
	local db = SetCollector.db.global.collections
	for i=1, #db[collection].Sets[set].Variants do
		local collected = SetCollector:GetCollectedCount(collection, set, i)
		if collected == "*" or collected < db[collection].Sets[set].Variants[i].Count then
			isCollected = false
			break
		end
	end
	return isCollected
end

function SetCollector:IsSetPartiallyCollected(collection, set)
	local isCollected = false
	local db = SetCollector.db.global.collections
	for i=1, #db[collection].Sets[set].Variants do
		local collected = SetCollector:GetCollectedCount(collection, set, i)
		if collected ~= "*" and collected == db[collection].Sets[set].Variants[i].Count then
			isCollected = true
			break
		end
	end
	return isCollected
end

function SetCollector:IsSetObtainable(collection, set)
	local isObtainable = false
	local db = SetCollector.db.global.collections
	for i=1, #db[collection].Sets[set].Variants do
		local collected = SetCollector:GetCollectedCount(collection, set, i)
		if collected ~= "*" then
			isObtainable = true
			break
		end
	end
	return isObtainable
end

function SetCollector:GetSetTooltip(self)
	local db = SetCollector.db.global.collections
	local collection = db[self.Collection].Title
	local set = L[db[self.Collection].Sets[self.Set].Title] or L["MISSING_LOCALIZATION"]
	
	local isObtainable = SetCollector:IsSetObtainable(self.Collection, self.Set)
	
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT", -16, 16)
	GameTooltip:SetText(set, 1, 1, 1)
	
	for i=1, #db[self.Collection].Sets[self.Set].Variants do
		local collected = SetCollector:GetCollectedCount(self.Collection, self.Set, i)
		if collected ~= "*" or not SetCollector.db.char.filters.obtainable then
			local line = ""
			if db[self.Collection].Sets[self.Set].Variants[i].Count and L[db[self.Collection].Sets[self.Set].Variants[i].Title] then
				line = "- "..collected.."/"..db[self.Collection].Sets[self.Set].Variants[i].Count.." "..L[db[self.Collection].Sets[self.Set].Variants[i].Title]
			elseif db[self.Collection].Sets[self.Set].Variants[i].Count and not L[db[self.Collection].Sets[self.Set].Variants[i].Title] then
				line = "- "..collected.."/"..db[self.Collection].Sets[self.Set].Variants[i].Count.." "..L["MISSING_LOCALIZATION"]
			elseif not db[self.Collection].Sets[self.Set].Variants[i].Count and L[db[self.Collection].Sets[self.Set].Variants[i].Title] then
				line = "- "..collected.."/? "..L[db[self.Collection].Sets[self.Set].Variants[i].Title]
			else
				line = "- "..collected.."/? "..L["MISSING_LOCALIZATION"]
			end
			GameTooltip:AddLine(line)
		end
	end
	
	if not isObtainable then
		GameTooltip:AddLine(L["NOOBTAIN"], 1, 0, 0)
	end
	
	local rightclick = L["RIGHT_CLICK_FAVORITE"] or L["MISSING_LOCALIZATION"]
	GameTooltip:AddLine(" ")
	GameTooltip:AddLine(rightclick, 1, 1, 1)
	
	GameTooltip:Show()
end

function SetCollector:SetIsFilteredOutByArmorType(collection, set, type)
	local db = SetCollector.db.global.collections
	local setType = db[collection].Sets[set].ArmorType.Description
	if (setType == ANY.Description or setType == type or type == "Any") then
		return false
	else
		return true
	end
end

function SetCollector:SetIsFilteredOutByClass(collection, set, class)
	local db = SetCollector.db.global.collections
	local setClass = db[collection].Sets[set].Class
	if (setClass == ANY.Description or setClass == class or class == "All" or class == "Any") then
		return false
	else
		return true
	end
end

function SetCollector:SetIsFilteredOutByFaction(collection, set, faction)
	local db = SetCollector.db.global.collections
	local setFaction = db[collection].Sets[set].Faction
	if (setFaction == ANY.Description or setFaction == faction or faction == "Any") then
		return false
	else
		return true
	end
end

function SetCollector:SetIsFilteredOutByRole(collection, set, role)
	local db = SetCollector.db.global.collections
	local setRole = db[collection].Sets[set].Role
	if (setRole == ANY.Description or setRole == role or role == "All" or role == "Any") then
		return false
	else
		return true
	end
end

function SetCollector:IsObtainableSet(collection, set)
	local isObtainable = false
	if SetCollector.db.global.collections[collection].Sets[set] then
		isObtainable = SetCollector.db.global.collections[collection].Sets[set].Variants[1].Obtainable
	end
	return isObtainable
end

function SetCollector:IsTransmogSet(collection, set)
	local isTransmog = false
	if SetCollector.db.global.collections[collection].Sets[set] then
		isTransmog = SetCollector.db.global.collections[collection].Sets[set].Variants[1].Transmog
	end
	return isTransmog
end

function SetCollector:IsFavoriteSet(set)
	local isFavorite = false
	if SetCollector.db.char.sets[set] then
		isFavorite = SetCollector.db.char.sets[set].favorite
	end
	return isFavorite
end

function SetCollector:SetFavoriteSet(self)
	local db = SetCollector.db.char
	if not db.sets[self.Set] then
		db.sets[self.Set] = {
			favorite = false
		}
	end
	db.sets[self.Set].favorite = not db.sets[self.Set].favorite
	if not db.sets[self.Set].variants or #db.sets[self.Set].variants == 0 then
		db.sets[self.Set].variants = {}
		local variants = SetCollector.db.global.collections[self.Collection].Sets[self.Set].Variants
		for i=1, #variants do
			SetCollector:SetFavoriteVariant(self.Set, i)
		end
	else
		for i=1, #db.sets[self.Set].variants do
			SetCollector:SetFavoriteVariant(self.Set, i)
		end
	end
	if db.sets[self.Set].favorite then
		self.Favorite:Show()
	else
		self.Favorite:Hide()
	end
end

function SetCollector:SetFavoriteVariant(set, variant)
	local char = SetCollector.db.char
	if char.sets[set] and char.sets[set].variants[variant] then
		char.sets[set].variants[variant].favorite = not char.sets[set].variants[variant].favorite
	else
		char.sets[set].variants[variant] = {
			favorite = true
		}
	end
end



--
-- Setup Database
--

function SetCollector:AddAppearances(debug)
	if debug then	SetCollector:Print("Adding Appearances to database") end
	SetCollector.db.global.collections = CreateCollections()
	if debug then SetCollector:Print("Added "..#SetCollector.db.global.collections.." collections.") end
	
	GetGeneralAppearances()
	
	GetDeathKnightAppearances()
	GetDemonHunterAppearances()
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
	
	if debug then SetCollector:Print("Finished adding appearances to database.") end
end

function SetCollector:SetupDB(debug)
	SetCollector.db = LibStub("AceDB-3.0"):New("SetCollectorDB", defaults, true)
	SetCollector:AddAppearances(debug)
end

function SetCollector:ResetDB(debug)
	SetCollector.db:ResetDB("default")
	SetCollector:AddAppearances(debug)
	if debug then 
		SetCollector:Print(L["DB_RESET"])
		SetCollector:SetDebug(debug)
	end
end