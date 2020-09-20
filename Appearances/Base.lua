-- Shared Appearance variables and functions

SetCollector.ALL				=	{ Code = "A", Description = "All" }
SetCollector.ANY				=	{ Code = "Z", Description = "Any" }

SetCollector.CLOTH				= { Code = "C", Description = "CLOTH" }
SetCollector.LEATHER			= { Code = "L", Description = "LEATHER" }
SetCollector.MAIL				= { Code = "M", Description = "MAIL" }
SetCollector.PLATE				= { Code = "P", Description = "PLATE" }

SetCollector.DEATHKNIGHT		= { Code = "DK", Description = "DEATHKNIGHT" }
SetCollector.DEMONHUNTER		= { Code = "DH", Description = "DEMONHUNTER" }
SetCollector.DRUID 			    = { Code = "DR", Description = "DRUID" }
SetCollector.HUNTER 			= { Code = "HU", Description = "HUNTER" }
SetCollector.MAGE 				= { Code = "MA", Description = "MAGE" }
SetCollector.MONK 				= { Code = "MO", Description = "MONK" }
SetCollector.PALADIN 			= { Code = "PA", Description = "PALADIN" }
SetCollector.PRIEST 			= { Code = "PR", Description = "PRIEST" }
SetCollector.ROGUE 			    = { Code = "RO", Description = "ROGUE" }
SetCollector.SHAMAN 			= { Code = "SH", Description = "SHAMAN" }
SetCollector.WARLOCK 			= { Code = "WK", Description = "WARLOCK" }
SetCollector.WARRIOR 			= { Code = "WR", Description = "WARRIOR" }

SetCollector.ALLIANCE 			= { Code = "A", Description = "Alliance" }
SetCollector.HORDE 			    = { Code = "H", Description = "Horde" }

SetCollector.TANK 				= { Code = "T", Description = "TANK" }
SetCollector.HEALER 			= { Code = "H", Description = "HEALER" }
SetCollector.CASTER 			= { Code = "C", Description = "CASTER" }
SetCollector.RANGED 			= { Code = "R", Description = "RANGED" }
SetCollector.MELEE 			    = { Code = "M", Description = "MELEE" }

-- Collection Types
SetCollector.OUTFITS 			= { ID = 1, Code = "OU", Description = "OUTFITS" }
SetCollector.ARTIFACT 			= { ID = 2, Code = "AR", Description = "ARTIFACT" }
SetCollector.LEGENDARY 		    = { ID = 3, Code = "ZZ", Description = "LEGENDARY" }
SetCollector.RAID 				= { ID = 4, Code = "TR", Description = "RAID" }
SetCollector.DUNGEON 			= { ID = 5, Code = "DG", Description = "DUNGEON" }
SetCollector.CHALLENGE 		    = { ID = 6, Code = "CD", Description = "CHALLENGE" }
SetCollector.PVP 				= { ID = 7, Code = "PV", Description = "PVP" }
SetCollector.EXPANSION 			= { ID = 8, Code = "EX", Description = "EXPANSION" }
SetCollector.CRAFTED 			= { ID = 9, Code = "CR", Description = "CRAFTED" }
SetCollector.OTHER				= { ID = 10, Code = "OT", Description = "OTHER" }
SetCollector.CUSTOM			    = { ID = 11, Code = "CU", Description = "CUSTOM" }
SetCollector.HOLIDAY			= { ID = 12, Code = "HO", Description = "HOLIDAY" }

SetCollector.OBTAIN			    = true
SetCollector.NOOBTAIN 			= false

SetCollector.TRANSMOG 			= true
SetCollector.NOTRANSMOG 		= false

local WOW_VERSION = select(4, GetBuildInfo())


function SetCollector:Appearance(a, ...)
	local t = { 
		a = a or 0,
		s = select(1, ...) or 0 -- Only support one source for now
	}
	return t
end

function SetCollector:CreateSet(collection, uid, title, armorType, class, faction)
    local function CreateTooltipID(collection, id, title)
        local identifier
        if collection == RAID then
            identifier = "T"..id
        elseif collection == PVP then
            identifier = "PVP"
        end
        return identifier
    end
    local set = {
        ID = collection.Code..string.format("%03d", uid)..armorType.Code..class.Code..faction.Code,
        Title = title,
        TooltipID = CreateTooltipID(collection, uid, title),
        ArmorType = armorType,
        Class = class.Description,
        Role = SetCollector.ANY.Description,
        Faction = faction.Description,
        Location = nil,
        Variants = { }
    }
    return set
end

function SetCollector:CreateVariant(title, transmog, ...)
    local variant = {
        Title = title,
        Transmog = transmog,
        Appearances = { }
    }
    local function AddAppearances(...)
        local n = select("#", ...)
        for j = 1, n do
            local v = select(j, ...)
            if v.a and v.a > 0 and v.s then
                local t = { ID = v.a, sourceID = v.s }
                tinsert(variant.Appearances, t)
            end
        end
    end
    AddAppearances(...)
    variant.Count = select('#', ...)
    return variant
end

function SetCollector:AddVariantToSet(set, variant)
    tinsert(set.Variants, variant)
end

function SetCollector:AddSetToDatabase(version, collection, set)
	if WOW_VERSION >= version then
        SetCollector.db.global.collections[collection.ID].Sets[set.ID] = set
    end
end

function SetCollector:AddSetsToDatabase(version, collection, ...)
	if WOW_VERSION >= version then
        local n = select('#', ...)
        if n > 0 then
            for i=1, n do
                SetCollector:AddSetToDatabase(version, collection, select(i, ...))
            end
        end
    end
end