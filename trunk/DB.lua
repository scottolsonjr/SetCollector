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
	--
	GetShamanAppearances()
	GetWarlockAppearances()
	--
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