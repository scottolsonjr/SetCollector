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
			transmog = false,
			hidden = false
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
local ARTIFACT 		= { ID = 2, Code = "AR", Description = "ARTIFACT" }
local LEGENDARY 	= { ID = 3, Code = "ZZ", Description = "LEGENDARY" }
local RAID 				= { ID = 4, Code = "TR", Description = "RAID" }
local DUNGEON 		= { ID = 5, Code = "DG", Description = "DUNGEON" }
local CHALLENGE 	= { ID = 6, Code = "CD", Description = "CHALLENGE" }
local PVP 				= { ID = 7, Code = "PV", Description = "PVP" }
local GARRISON 		= { ID = 8, Code = "GA", Description = "GARRISON" }
local CRAFTED 		= { ID = 9, Code = "CR", Description = "CRAFTED" }
local OTHER				= { ID = 10, Code = "OT", Description = "OTHER" }
local CUSTOM			= { ID = 11, Code = "CU", Description = "CUSTOM" }
local HOLIDAY			= { ID = 12, Code = "HO", Description = "HOLIDAY" }

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
		[ARTIFACT.ID] 	= { Title = ARTIFACT.Description, Sets = { } },
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

function SetCollector:AddSet(minVersion, maxVersion, collection, id, title, armorType, class, role, faction, ...)
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

function SetCollector:AddVariant(minVersion, maxVersion, collection, set, title, transmog, ...)
	if WOW_VERSION >= minVersion then
		if maxVersion == nil or WOW_VERSION <= maxVersion then
			local a, s, i = 0, 0, 0
			local tempAppearances = { }
			local n = select("#",...)
			for j = 1,n do
				local v = select(j,...)
				if type(v) == 'number' then
					local itemID = v or 0
					local sLink = select(2,GetItemInfo(itemID))
					a, s, i = SetCollector:GetAppearanceInfo(sLink)
				else
					a = v.a or 0
					s = v.s or 0
					i = v.i or 0
				end
				--[[if a == 0 and s == 0 and i and i ~= 0 then
					local sLink = select(2,GetItemInfo(i))
					local b, t, j = SetCollector:GetAppearanceInfo(sLink)
					if a and b and a ~= 0 and b ~= 0 and a ~= b and i == j then
						a = b
						s = t
					end
				end]]--
				if a and a > 0 and s and i then
					local t = { ID = a, sourceID = s, itemID = i }
					local index = a
					tinsert(tempAppearances,t)
					SetCollector.db.global.collections.Appearances[index] = { collection = collection.ID, set = set, variant = #SetCollector.db.global.collections[collection.ID].Sets[set].Variants + 1 }
				end
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
	local collectedCount = 0
	local db = SetCollector.db.global
	if db.collections[collection].Sets[set].Variants[variant] then
		local appearances = db.collections[collection].Sets[set].Variants[variant].Appearances
		for i=1, #appearances do
			local isCollected
			local sourceID = appearances[i].sourceID
			local itemID = appearances[i].itemID
			if appearances[i].ID then
				local sources = C_TransmogCollection.GetAppearanceSources(appearances[i].ID)
				if sources then
					for j=1, #sources do
						if sources[j].isCollected then
						isCollected = true
						end
					end
				end
			end
			if isCollected then collectedCount = collectedCount + 1 end
		end
	end
	if sourcesCount == 0 and collectedCount == 0 then collectedCount = "*" end
	
	return collectedCount
end

function SetCollector:GetCompletedVariantCount(collection, set)
	local completedVariantCount = 0
	local db = SetCollector.db.global.collections
	for i=1, #db[collection].Sets[set].Variants do
		local isVariantCollected = SetCollector:IsVariantCollected(collection, set, i)
		if isVariantCollected then
			completedVariantCount = completedVariantCount + 1
		end
	end
	return completedVariantCount
end

function SetCollector:IsSourceCollected(sourceID)
  local sourceCollected
  if sourceID then
    sourceCollected = select(5, C_TransmogCollection.GetAppearanceSourceInfo(sourceID))
  end
  return sourceCollected
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
	local db = SetCollector.db.global.collections
	local completedVariantCount = SetCollector:GetCompletedVariantCount(collection, set)
	local variantCount = #db[collection].Sets[set].Variants
	if completedVariantCount == variantCount then
		return true
	end
	return false
end

function SetCollector:IsSetPartiallyCollected(collection, set)
	local db = SetCollector.db.global.collections
	local completedVariantCount = SetCollector:GetCompletedVariantCount(collection, set)
	local variantCount = #db[collection].Sets[set].Variants
	if completedVariantCount > 0 then
		return true
	end
	return false
end

function SetCollector:IsVariantCollected(collection, set, variant)
	local db = SetCollector.db.global.collections
	local collectedCount = SetCollector:GetCollectedCount(collection, set, variant)
	local appearanceCount = #db[collection].Sets[set].Variants[variant].Appearances
	if collectedCount == appearanceCount then
		return true
	end
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
	if self.Collection == nil or self.Collection == 0 then
		
	else
		local db = SetCollector.db.global.collections
		local collection = db[self.Collection].Title
		local set = L[db[self.Collection].Sets[self.Set].Title] or L["MISSING_LOCALIZATION"]
		
		local isObtainable = SetCollector:IsSetObtainable(self.Collection, self.Set)
		
		GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT", -16, 16)
		GameTooltip:SetText(set, 1, 1, 1)
		
		for i=1, #db[self.Collection].Sets[self.Set].Variants do
			local collected = SetCollector:GetCollectedCount(self.Collection, self.Set, i)
			local appearances = #db[self.Collection].Sets[self.Set].Variants[i].Appearances
			if collected ~= "*" or not SetCollector.db.char.filters.obtainable then
				local line = ""
				if appearances and L[db[self.Collection].Sets[self.Set].Variants[i].Title] then
					line = "- "..collected.."/"..appearances.." "..L[db[self.Collection].Sets[self.Set].Variants[i].Title]
				elseif appearances and not L[db[self.Collection].Sets[self.Set].Variants[i].Title] then
					line = "- "..collected.."/"..appearances.." "..L["MISSING_LOCALIZATION"]
				elseif not appearances and L[db[self.Collection].Sets[self.Set].Variants[i].Title] then
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
		
		local shiftrightclick = L["SHIFT_RIGHT_CLICK_HIDDEN"] or L["MISSING_LOCALIZATION"]
		GameTooltip:AddLine(shiftrightclick, 1, 1, 1)
		
		GameTooltip:Show()
	end
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

function SetCollector:IsHiddenSet(set)
	local isHidden = false
	if SetCollector.db.char.sets[set] then
		isHidden = SetCollector.db.char.sets[set].hidden
	end
	return isHidden
end

function SetCollector:SetHiddenSet(self)
	local db = SetCollector.db.char
	if not db.sets[self.Set] then
		db.sets[self.Set] = {
			hidden = false
		}
	end
	db.sets[self.Set].hidden = not db.sets[self.Set].hidden
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
	--if debug then	SetCollector:Print("Adding Appearances to database") end
	SetCollector.db.global.collections = CreateCollections()
	--if debug then SetCollector:Print("Added "..#SetCollector.db.global.collections.." collections.") end
	
	-- FUTURE: Older expansion sets disabled by default. Enabled in settings.
	SetCollector:GetVersion00Appearances()
	--SetCollector:GetVersion01Appearances()
	--SetCollector:GetVersion02Appearances()
	--SetCollector:GetVersion03Appearances()
	--SetCollector:GetVersion04Appearances()
	--SetCollector:GetVersion05Appearances()
	--SetCollector:GetVersion06Appearances()
	--SetCollector:GetVersion07Appearances()
	SetCollector:GetVersion08Appearances()
	SetCollector:GetVersion09Appearances()

	-- These functions to be removed
	--SetCollector:GetGeneralAppearances()
	
	SetCollector:GetDeathKnightAppearances()
	SetCollector:GetDemonHunterAppearances()
	SetCollector:GetDruidAppearances()
	SetCollector:GetHunterAppearances()
	SetCollector:GetMageAppearances()
	SetCollector:GetMonkAppearances()
	SetCollector:GetPaladinAppearances()
	SetCollector:GetPriestAppearances()
	SetCollector:GetRogueAppearances()
	--SetCollector:GetShamanAppearances()
	--SetCollector:GetWarlockAppearances()
	--SetCollector:GetWarriorAppearances()
	
	--if debug then SetCollector:Print("Finished adding appearances to database.") end
end

function SetCollector:SetupDB(debug)
	SetCollector.db = LibStub("AceDB-3.0"):New("SetCollectorDB", defaults, true)
	SetCollector:AddAppearances(debug)
end

function SetCollector:ResetDB()
	local debug = SetCollector:GetDebug()
	SetCollector.db:ResetDB("default")
	SetCollector:AddAppearances(debug)
	if debug then 
		SetCollector:Print(L["DB_RESET"])
		SetCollector:SetDebug(debug)
	end
end

function SetCollector:GetOptions()
	local options = {
    name = "Set Collector",
    handler = SetCollector,
    type = "group",
    args = {
    	char = {
    		name = "Character",
    		type = "group",
    		args = {
	        minimap = {
            type = "toggle",
            name = "Enable Minimap",
            desc = "Turn on minimap",
            --usage = L["<Your message>"],
            get = "IsMinimapButtonShown",
            set = "ToggleMinimapButton",
            width = "full"
	        },
        },
      },
      global = {
    		name = "Global",
    		type = "group",
    		args = {
	        debug = {
            type = "toggle",
            name = "Enable Debug",
            desc = "Turn on debugging details",
            --usage = L["<Your message>"],
            get = "GetDebug",
            set = "OptionsSetDebug",
            width = "full"
	        },
	      },
	    },
    },
	}
	return options
end