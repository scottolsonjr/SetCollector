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
			favorites = false
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
local LEGENDARY 	= { ID = 1, Code = "ZZ", Description = "LEGENDARY" }
local RAID 				= { ID = 2, Code = "TR", Description = "RAID" }
local DUNGEON 		= { ID = 3, Code = "DG", Description = "DUNGEON" }
local CHALLENGE 	= { ID = 4, Code = "CD", Description = "CHALLENGE" }
local PVP 				= { ID = 5, Code = "PV", Description = "PVP" }
local GARRISON 		= { ID = 6, Code = "GA", Description = "GARRISON" }
local HOLIDAY			= { ID = 7, Code = "HO", Description = "HOLIDAY" }
local OTHER				= { ID = 8, Code = "OT", Description = "OTHER" }

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
		[LEGENDARY.ID] 	= { Title = LEGENDARY.Description, Sets = { } },
		[RAID.ID] 			= { Title = RAID.Description, Sets = { } },
		[DUNGEON.ID] 		= { Title = DUNGEON.Description, Sets = { } },
		[CHALLENGE.ID] 	= { Title = CHALLENGE.Description, Sets = { } },
		[PVP.ID] 				= { Title = PVP.Description, Sets = { } },
		[GARRISON.ID] 	= { Title = GARRISON.Description, Sets = { } },
		[HOLIDAY.ID] 		= { Title = HOLIDAY.Description, Sets = { } },
		[OTHER.ID] 			= { Title = OTHER.Description, Sets = { } },
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

local function AddVariant(minVersion, maxVersion, collection, set, title, ...)
	if WOW_VERSION >= minVersion then
		if maxVersion == nil or WOW_VERSION <= maxVersion then
			local tempAppearances = { }
			local n = select("#",...)
			for i = 1,n do
				local v = select(i,...)
				tinsert(tempAppearances,v)
				SetCollector.db.global.collections.Appearances[v] = { collection = collection.ID, set = set, variant = #SetCollector.db.global.collections[collection.ID].Sets[set].Variants + 1 }
			end
			local tempVariant = {
				Title = title,
				Appearances = tempAppearances,
				Count = #tempAppearances
			}
			tinsert(SetCollector.db.global.collections[collection.ID].Sets[set].Variants, tempVariant)	
		end
	end	
end


--
--
--

local function GetGeneralAppearances()
	local set = ""
	
	-- RAID
	set = AddSet(70000,nil,RAID,180,"TR_CLOTH_18",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",25845,25847,25849,25844,25846,25842)		-- Need belt
	set = AddSet(70000,nil,RAID,180,"TR_LEATHER_18",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",25983,25985,25981,25982,25984,25979)		-- Need belt
	set = AddSet(70000,nil,RAID,180,"TR_MAIL_18",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",25949,25950,25947,25948,25951,25946)		-- Need belt
	set = AddSet(70000,nil,RAID,180,"TR_PLATE_18",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",25933,25935,25931,25932,25934,25930)		-- Need belt
				
	set = AddSet(70000,nil,RAID,170,"TR_CLOTH_17",CLOTH,ANY,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",22599,22595,22597,22598,22600,22594)		-- Need belt
	set = AddSet(70000,nil,RAID,170,"TR_LEATHER_17",LEATHER,ANY,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",23053,23055,23051,23052,23054,23050)		-- Need belt
	set = AddSet(70000,nil,RAID,170,"TR_MAIL_17",MAIL,ANY,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",22684,22686,22682,22683,22685,22681)		-- Need belt
	set = AddSet(70000,nil,RAID,170,"TR_PLATE_17",PLATE,ANY,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",22640,22642,22638,22639,22641,22637)		-- Need belt

	-- DUNGEON
	
	-- GARRISON
	set = AddSet(60000,nil,GARRISON,602,"GA_BWM_SET_100",CLOTH,ANY,ANY,ANY)
				AddVariant(60000,nil,GARRISON,set,"CLOTH",23099,23096,23097,23098,23807,23100,23806)
	set = AddSet(60000,nil,GARRISON,602,"GA_BWM_SET_100",LEATHER,ANY,ANY,ANY)
				AddVariant(60000,nil,GARRISON,set,"LEATHER",22857,22859,22855,22856,22853,22858,22854)
	set = AddSet(60000,nil,GARRISON,602,"GA_BWM_SET_100",MAIL,ANY,ANY,ANY)
				AddVariant(60000,nil,GARRISON,set,"MAIL",22945,22944,22947,22946,22949,23810,22948)
	set = AddSet(60000,nil,GARRISON,602,"GA_BWM_SET_100",PLATE,ANY,ANY,ANY)
				AddVariant(60000,nil,GARRISON,set,"PLATE",23274,23278,23265,23271,23259,23277,23262)
	
	set = AddSet(60000,nil,GARRISON,601,"GA_ALLIANCE_SET",ANY,ANY,ANY,ALLIANCE)
				AddVariant(60000,nil,GARRISON,set,"GA_ALLIANCE_SET",24474,24476,24472,24473,24470,24475,24471)
	
	set = AddSet(60000,nil,GARRISON,601,"GA_HORDE_SET",ANY,ANY,ANY,HORDE)
				AddVariant(60000,nil,GARRISON,set,"GA_HORDE_SET",24054,24051,24052,24817,24053,24050,24854)
	
end

local function GetDeathKnightAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	set = AddSet(70000,nil,RAID,191,"DK_TR_19",PLATE,DEATHKNIGHT,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",32139,32141,31975,32137,32138,32140)		-- Need belt and feet for each variant
				AddVariant(70000,nil,RAID,set,"NORMAL",29805,29807,29974,29800,29804,29806)
				AddVariant(70000,nil,RAID,set,"HEROIC",29813,29815,29961,29811,29812,29814)
				AddVariant(70000,nil,RAID,set,"MYTHIC",29829,29831,29939,29827,29828,29830)
	
	-- DUNGEON
	
end

local function GetDemonHunterAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	set = AddSet(70000,nil,RAID,191,"DH_TR_19",LEATHER,DEMONHUNTER,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",32020,32022,32100,32018,32019,32021)		-- Need belt and feet for each variant
				AddVariant(70000,nil,RAID,set,"NORMAL",32004,32006,32208,32002,32003,32005)
				AddVariant(70000,nil,RAID,set,"HEROIC",32012,32014,32220,32010,32011,32013)
				AddVariant(70000,nil,RAID,set,"MYTHIC",31913,31915,32166,31911,31912,31914)
	
	-- DUNGEON
	
end

local function GetDruidAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	set = AddSet(70000,nil,RAID,191,"DR_TR_19",LEATHER,DRUID,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",32072,32074,32221,32076,32071,32073)		-- Need belt and feet for each variant
				AddVariant(70000,nil,RAID,set,"NORMAL",30740,30742,31035,30744,30739,30741)
				AddVariant(70000,nil,RAID,set,"HEROIC",30731,30733,31024,30735,30730,30732)
				AddVariant(70000,nil,RAID,set,"MYTHIC",30696,30698,30819,30700,30695,30697)
	
	-- DUNGEON
	
end

local function GetHunterAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	set = AddSet(70000,nil,RAID,191,"HU_TR_19",MAIL,HUNTER,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",31867,31869,32112,31865,31866,31868)		-- Need belt and feet for each variant
				AddVariant(70000,nil,RAID,set,"NORMAL",29758,29760,30050,29755,29757,29759)
				AddVariant(70000,nil,RAID,set,"HEROIC",29766,29768,30075,29764,29765,29767)
				AddVariant(70000,nil,RAID,set,"MYTHIC",29904,29905,30129,29902,29903,29906)
	
	-- DUNGEON
	
end

local function GetMageAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	set = AddSet(70000,nil,RAID,191,"MA_TR_19",CLOTH,MAGE,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",31938,31940,32048,31942,31937,31939)		-- Need belt and feet for each variant
				AddVariant(70000,nil,RAID,set,"NORMAL",30785,30787,31175,30789,30784,30786)
				AddVariant(70000,nil,RAID,set,"HEROIC",30776,30778,31171,30780,30775,30777)
				AddVariant(70000,nil,RAID,set,"MYTHIC",31083,31085,31115,31087,31082,31084)
	
	-- DUNGEON
	
end

local function GetMonkAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	set = AddSet(70000,nil,RAID,191,"MO_TR_19",LEATHER,MONK,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",30634,30645,30535,30633,30643,30644)		-- Need belt and feet for each variant
				AddVariant(70000,nil,RAID,set,"NORMAL",32043,32046,31917,32042,32044,32045)
				AddVariant(70000,nil,RAID,set,"HEROIC",30617,30619,30510,30615,30616,30618)
				AddVariant(70000,nil,RAID,set,"MYTHIC",30670,30671,30491,30669,30672,30673)
	
	-- DUNGEON
	
end

local function GetPaladinAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	set = AddSet(70000,nil,RAID,191,"PA_TR_19",PLATE,PALADIN,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",32147,32149,32105,32151,32146,32148)		-- Need belt and feet for each variant
				AddVariant(70000,nil,RAID,set,"NORMAL",29644,29647,29707,29646,29643,29645)
				AddVariant(70000,nil,RAID,set,"HEROIC",29653,29655,29717,29657,29652,29654)
				AddVariant(70000,nil,RAID,set,"MYTHIC",29452,29454,29676,29456,29451,29453)
	
	-- DUNGEON
	
end

local function GetPriestAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	set = AddSet(70000,nil,RAID,191,"PR_TR_19",CLOTH,PRIEST,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",31947,31949,32060,31950,31946,31948)		-- Need belt and feet for each variant
				AddVariant(70000,nil,RAID,set,"NORMAL",30262,30264,30177,30266,30261,30263)
				AddVariant(70000,nil,RAID,set,"HEROIC",30271,30273,30189,30275,30270,30272)
				AddVariant(70000,nil,RAID,set,"MYTHIC",30280,30282,30231,30283,30279,30281)
	
	-- DUNGEON
	
end

local function GetRogueAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	set = AddSet(70000,nil,RAID,191,"RO_TR_19",LEATHER,ROGUE,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",32083,32084,32298,32079,32080,32081)		-- Need belt and feet for each variant
				AddVariant(70000,nil,RAID,set,"NORMAL",29870,29872,32292,29868,29869,29871)
				AddVariant(70000,nil,RAID,set,"HEROIC",29197,29218,32282,29195,29196,29217)
				AddVariant(70000,nil,RAID,set,"MYTHIC",28986,28988,32317,28984,28985,28987)
	
	-- DUNGEON
	
end

local function GetShamanAppearances()
	local set = ""
	
	-- LEGENDARY
	
	set = AddSet(50400,nil,LEGENDARY,90,"LG_CASTER_INT_90",ANY,SHAMAN,CASTER,ANY)
				AddVariant(50400,nil,LEGENDARY,set,"LG_CASTER_INT_90",20801)
	
	set = AddSet(50400,nil,LEGENDARY,90,"LG_MELEE_AGI_90",ANY,SHAMAN,MELEE,ANY)
				AddVariant(50400,nil,LEGENDARY,set,"LG_MELEE_AGI_90",20805)
	
	set = AddSet(50400,nil,LEGENDARY,90,"LG_HEALER_INT_90",ANY,SHAMAN,HEALER,ANY)
				AddVariant(50400,nil,LEGENDARY,set,"LG_HEALER_INT_90",20825)
	
	set = AddSet(50400,nil,LEGENDARY,80,"LG_HEALER_80",ANY,SHAMAN,ANY,ANY)
				AddVariant(50400,nil,LEGENDARY,set,"LG_HEALER_80",11613)
	
	set = AddSet(70000,nil,LEGENDARY,60,"LG_60",ANY,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,LEGENDARY,set,"LG_60",5131)
	
	-- RAID
	
	set = AddSet(70000,nil,RAID,191,"SH_TR_19",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",32095,32096,32086,32099,32094,32097)		-- Need belt and feet for each variant
				AddVariant(70000,nil,RAID,set,"NORMAL",30937,30938,31364,30942,30936,30939)
				AddVariant(70000,nil,RAID,set,"HEROIC",30928,30929,31363,30932,30927,30930)
				AddVariant(70000,nil,RAID,set,"MYTHIC",31039,31041,31348,31043,31038,31040)
	set = AddSet(70000,nil,RAID,181,"SH_TR_18",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"NORMAL",26019,26021,26023,26018,26016,26020,26472)
				AddVariant(70000,nil,RAID,set,"HEROIC",26036,26038,26040,26035,26033,26037,26474)
				AddVariant(70000,nil,RAID,set,"MYTHIC",26000,26002,26004,25999,25996,26001,25997)
	set = AddSet(70000,nil,RAID,171,"SH_TR_17",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"NORMAL",23360,23361,23363,23368,23365)		-- Need Belt and Feet
				AddVariant(70000,nil,RAID,set,"HEROIC",23370,23371,23373,23378,23375)
				AddVariant(70000,nil,RAID,set,"MYTHIC",23678,23679,23688,23677,23689)
				
	-- DUNGEON
	set = AddSet(70000,nil,DUNGEON,30,"SH_DG_03",MAIL,SHAMAN,ANY,ANY)
				AddVariant(70000,nil,DUNGEON,set,"SH_DG_03",7163,6962,7104,6876,7020)
	
	
end

local function GetWarlockAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	set = AddSet(70000,nil,RAID,191,"WK_TR_19",CLOTH,WARLOCK,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",31884,31886,31871,31888,31883,31885)		-- Need belt and feet for each variant
				AddVariant(70000,nil,RAID,set,"NORMAL",29171,29173,29040,29175,29170,29172)
				AddVariant(70000,nil,RAID,set,"HEROIC",29161,29163,29028,29165,29160,29162)
				AddVariant(70000,nil,RAID,set,"MYTHIC",29083,29085,29049,29087,29082,29084)
	
	-- DUNGEON
	
end

local function GetWarriorAppearances()
	local set = ""
	
	-- LEGENDARY

	-- RAID
	set = AddSet(70000,nil,RAID,191,"WR_TR_19",PLATE,WARRIOR,ANY,ANY)
				AddVariant(70000,nil,RAID,set,"RAIDFINDER",32157,32160,32127,32156,32158,32159)		-- Need belt and feet for each variant
				AddVariant(70000,nil,RAID,set,"NORMAL",31444,31447,32242,31443,31445,31446)
				AddVariant(70000,nil,RAID,set,"HEROIC",31410,31413,31545,31409,31411,31412)
				AddVariant(70000,nil,RAID,set,"MYTHIC",31449,31455,32229,31452,31453,31454)
	
	-- DUNGEON
	
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
	
	local appearances = SetCollector.db.global.collections[collection].Sets[set].Variants[variant].Appearances
	for i=1, #appearances do
		local anyCollected, sources = false, C_TransmogCollection.GetAppearanceSources(appearances[i])
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

function SetCollector:GetSetTooltip(self)
	local db = SetCollector.db.global.collections
	local collection = db[self.Collection].Title
	local set = L[db[self.Collection].Sets[self.Set].Title] or L["MISSING_LOCALIZATION"]
	
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT", -16, 16)
	GameTooltip:SetText(set, 1, 1, 1)
	
	for i=1, #db[self.Collection].Sets[self.Set].Variants do
		local collected = SetCollector:GetCollectedCount(self.Collection, self.Set, i)
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
	local rightclick = L["RIGHT_CLICK_FAVORITE"] or L["MISSING_LOCALIZATION"]
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
	if (setClass == ANY.Description or setClass == class or class == "Any") then
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
	if (setRole == ANY.Description or setRole == role or role == "Any") then
		return false
	else
		return true
	end
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
	if not db.sets[self.Set].variants then
		db.sets[self.Set].variants = {}
		local variants = SetCollector.db.global.collections[self.Collection].Sets[self.Set].Variants
		for i=1, #variants do
			db.sets[self.Set].variants[i] = {
				favorite = db.sets[self.Set].favorite
			}
		end
	else
		for i=1, #db.sets[self.Set].variants do
			db.sets[self.Set].variants[i].favorite = not db.sets[self.Set].favorite
		end
	end
	if db.sets[self.Set].favorite then
		self.Favorite:Show()
	else
		self.Favorite:Hide()
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