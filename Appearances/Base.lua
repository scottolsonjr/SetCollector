-- Shared Appearance variables and functions

SetCollector.ALL				=	{ Code = "A", Description = "All" }
SetCollector.ANY				=	{ Code = "Z", Description = "Any" }

SetCollector.CLOTH				= { Code = "C", Description = "CLOTH" }
SetCollector.LEATHER			= { Code = "L", Description = "LEATHER" }
SetCollector.MAIL				= { Code = "M", Description = "MAIL" }
SetCollector.PLATE				= { Code = "P", Description = "PLATE" }
SetCollector.ANY_ARMOR			= { Code = "Z", Description = "Any" }

SetCollector.DEATHKNIGHT		= { Code = "DK", Description = "DEATHKNIGHT" }
SetCollector.DEMONHUNTER		= { Code = "DH", Description = "DEMONHUNTER" }
SetCollector.DRUID 			    = { Code = "DR", Description = "DRUID" }
SetCollector.EVOKER             = { Code = "DT", Description = "EVOKER" }
SetCollector.HUNTER 			= { Code = "HU", Description = "HUNTER" }
SetCollector.MAGE 				= { Code = "MA", Description = "MAGE" }
SetCollector.MONK 				= { Code = "MO", Description = "MONK" }
SetCollector.PALADIN 			= { Code = "PA", Description = "PALADIN" }
SetCollector.PRIEST 			= { Code = "PR", Description = "PRIEST" }
SetCollector.ROGUE 			    = { Code = "RO", Description = "ROGUE" }
SetCollector.SHAMAN 			= { Code = "SH", Description = "SHAMAN" }
SetCollector.WARLOCK 			= { Code = "WK", Description = "WARLOCK" }
SetCollector.WARRIOR 			= { Code = "WR", Description = "WARRIOR" }
SetCollector.ANY_CLASS			= { Code = "Z", Description = "Any" }

SetCollector.ALLIANCE 			= { Code = "A", Description = "Alliance" }
SetCollector.HORDE 			    = { Code = "H", Description = "Horde" }
SetCollector.ANY_FACTION			= { Code = "Z", Description = "Any" }

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
SetCollector.NO_OBTAIN 			= false

SetCollector.TRANSMOG 			= true
SetCollector.NO_TRANSMOG 		= false

local WOW_VERSION = select(4, GetBuildInfo())

local function is_numeric(x)
    if tonumber(x) ~= nil then
        return true
    end
    return false
end

function SetCollector:CreateAppearance(ID, sourceID, slotID, ...)
	local t = { 
        ID = ID or 0,
        sourceID = sourceID or 0,
        slotID = slotID or 0,
		alternateIDs = {}
    }
    -- if select('#', ...) > 0 then -- add alternate appearance IDs
	return t
end

function SetCollector:CreateAppearanceFromItemID(itemID)
    appearanceID, sourceID = C_TransmogCollection.GetItemInfo(itemID)
    if (sourceID) then
        slotID = select(1, C_TransmogCollection.GetSourceInfo(sourceID))
    end
    local t = { 
        ID = appearanceID or 0,
        sourceID = sourceID or 0,
        slotID = slotID or 0,
        alternateIDs = {}
    }
    -- if select('#', ...) > 0 then -- add alternate appearance IDs
    return t
end

function SetCollector:CreateTooltipID(collection, id, title)
    local identifier
    if collection == RAID then
        identifier = "T"..id
    elseif collection == PVP then
        identifier = "PVP"
    end
    return identifier
end

function SetCollector:IncludeSet(collection, uid, setID, armorType, class, faction, ...)
    local setInfo = (setID and C_TransmogSets.GetSetInfo(setID)) or nil;
    if setInfo then
        local description = (setInfo.label or "")
        if SetCollector:GetDebug() then
            description = description.." ("..setInfo.expansionID..")"
        end
        local set = {
            ID = collection.Code..string.format("%04d", uid)..setID..armorType.Code..class.Code..faction.Code,
            setID = setInfo.setID,
            Collection = collection.Description,
            Title = setInfo.name,
            TooltipID = SetCollector:CreateTooltipID(collection, uid, setID),
            ArmorType = armorType,
            Class = class.Description,
            Faction = faction.Description,
            Location = description,
            Variants = { SetCollector:IncludeVariant(setID, setInfo) }
        }

        SetCollector.db.global.setMap["SET " .. setID] = {setID = setID, collection = collection.Description, baseSetId = setID}

        for i = 1, select('#', ...) do
            local variant = select(i, ...)
            if is_numeric(variant) then
                local variantInfo = (variant and C_TransmogSets.GetSetInfo(variant)) or nil;
                table.insert(set.Variants, SetCollector:IncludeVariant(variant, variantInfo))

                SetCollector.db.global.setMap["SET " .. variant] = {setID = variant, collection = collection.Description, baseSetId = setID}
            else
                table.insert(set.Variants, variant)
            end
        end
        local function compare(a, b)
            return a.Order < b.Order
        end
        table.sort(set.Variants, compare)
        return set
    end
end

function SetCollector:IncludeVariant(setID, setInfo, ...)
    local description, order = '', 0
    if setInfo then
        description = setInfo.description or setInfo.name
        order = setInfo.uiOrder
    end
    local variant = {
        Title = description,
        Transmog = SetCollector.TRANSMOG,
        Order = order,
        Appearances = {}
    }
    local appearances = C_TransmogSets.GetSetPrimaryAppearances(setID)
    if appearances then
        variant.Count = #appearances
        for pos in pairs(appearances) do
            local sourceInfo = C_TransmogCollection.GetSourceInfo(appearances[pos].appearanceID);
            if (sourceInfo) then
                local slotID = C_Transmog.GetSlotForInventoryType(sourceInfo.invType)
                table.insert(variant.Appearances, SetCollector:CreateAppearance(sourceInfo.visualID or nil, sourceInfo.sourceID or nil, slotID or nil))
            end
        end
        local function compare(a, b)
            return a.slotID < b.slotID
        end
        table.sort(variant.Appearances, compare)
    end
    return variant
end

function SetCollector:CreateSet(collection, uid, title, armorType, class, faction, location, ...)
    local set = {
        ID = collection.Code..string.format("%04d", uid)..armorType.Code..class.Code..faction.Code,
        Collection = collection.Description,
        Title = title,
        TooltipID = SetCollector:CreateTooltipID(collection, uid, title),
        ArmorType = armorType,
        Class = class.Description,
        Faction = faction.Description,
        Location = location,
        Variants = {...}
    }
    return set
end

function SetCollector:CreateVariant(title, transmog, ...)
    local variant = {
        Title = title,
        Transmog = transmog,
        Order = 99999,
        Appearances = {...}
    }
    variant.Count = select('#', ...)
    return variant
end

function SetCollector:AddSetToDatabase(version, collection, set)
	if WOW_VERSION >= version then
        SetCollector.db.global.collections[collection.ID].Sets[set.ID] = set
        for i=1, #set.Variants do
            for j=1, #set.Variants[i].Appearances do
                local index = set.Variants[i].Appearances[j].ID
                SetCollector.db.global.collections.Appearances[index] = { collection = collection.ID, set = set.ID, variant = j }
            end
        end
    end
end

function SetCollector:AddSetsToDatabase(version, collection, sets, ...)
    if WOW_VERSION >= version then
        if sets then
            for index, set in ipairs(sets) do
                SetCollector:AddSetToDatabase(version, collection, set)
            end
        end

        local n = select('#', ...)
        if n > 0 then
            for i=1, n do
                SetCollector:AddSetToDatabase(version, collection, select(i, ...))
            end
        end
    end
end
