local origTooltips = {};
local L = LibStub("AceLocale-3.0"):GetLocale("SetCollector", true)

--
-- Local Functions
--

local InventorySlots = {
    ['INVTYPE_HEAD'] = 1,
    ['INVTYPE_SHOULDER'] = 3,
    ['INVTYPE_BODY'] = 4,
    ['INVTYPE_CHEST'] = 5,
    ['INVTYPE_ROBE'] = 5,
    ['INVTYPE_WAIST'] = 6,
    ['INVTYPE_LEGS'] = 7,
    ['INVTYPE_FEET'] = 8,
    ['INVTYPE_WRIST'] = 9,
    ['INVTYPE_HAND'] = 10,
    ['INVTYPE_CLOAK'] = 15,
    ['INVTYPE_WEAPON'] = 16,
    ['INVTYPE_SHIELD'] = 17,
    ['INVTYPE_2HWEAPON'] = 16,
    ['INVTYPE_WEAPONMAINHAND'] = 16,
    ['INVTYPE_RANGED'] = 16,
    ['INVTYPE_RANGEDRIGHT'] = 16,
    ['INVTYPE_WEAPONOFFHAND'] = 17,
    ['INVTYPE_HOLDABLE'] = 17,
    ['INVTYPE_TABARD'] = 19,
}

TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, function(tooltip)
	local collection, variant, set
	local debug = SetCollector:GetDebug();
	local itemName, itemLink = tooltip:GetItem();

	local appearanceID, sourceID, itemID, setIDs = SetCollector:GetAppearanceInfo(itemLink);
    if appearanceID then
        local show_set = SetCollector.db.global.tooltips.show_set
        local show_location = SetCollector.db.global.tooltips.show_location
        if debug or show_set then
            if SetCollector.db.global.collections.Appearances[appearanceID] then
            
                -- Need to update this for when an appearance is in multiple collections, sets, or variants
                collection = SetCollector.db.global.collections.Appearances[appearanceID].collection
                variant = SetCollector.db.global.collections.Appearances[appearanceID].variant
                set = SetCollector.db.global.collections.Appearances[appearanceID].set
                
                tooltip:AddLine(" ")
                local title = "|cFFFFFFFF"..L[SetCollector.db.global.collections[collection].Sets[set].Title].."|r"
                tooltip:AddLine(title)
                if debug or show_location then
                    if SetCollector.db.global.collections[collection].Sets[set].Location ~= nil then
                        local location = "|cFF777777"..L[SetCollector.db.global.collections[collection].Sets[set].Location].."|r"
                        tooltip:AddLine(location)
                    end
                end
            end
        end
	end

    if debug then
        if setIDs or appearanceID or itemID then
            tooltip:AddLine(" ")
            tooltip:AddLine("Set Collector Debug")

            if setIDs then
                for i=1, #setIDs do
                    tooltip:AddDoubleLine("Set ID:", setIDs[i])
                end
            end

            if itemID then
                tooltip:AddDoubleLine("Item ID:", itemID)
            end
    
            if appearanceID then
                tooltip:AddDoubleLine("Appearance ID:", appearanceID)
                tooltip:AddDoubleLine("Source ID:", sourceID)
                tooltip:AddLine(" ")
                tooltip:AddLine("All Available Sources:")
                local sources = C_TransmogCollection.GetAllAppearanceSources(appearanceID)
                if sources then
                    for i=1, #sources do
                        local link = select(6, C_TransmogCollection.GetAppearanceSourceInfo(sources[i]))
                        local sourceCollected = SetCollector:IsSourceCollected(sources[i])
                        if sourceCollected then
                            tooltip:AddDoubleLine(link, sources[i])
                        else
                            local name = GetItemInfo(link)
                            if ( name ) then
                                tooltip:AddDoubleLine("|cFF777777"..name.."|r",sources[i])
                            end
                        end
                        
                    end
                else
                    tooltip:AddLine("None")
                end
                if SetCollector.db.global.collections.Appearances[appearanceID] then
                    tooltip:AddLine(" ");
                    tooltip:AddLine("Collection ID: "..collection)
                    tooltip:AddLine("Variant ID: "..variant)
                    tooltip:AddLine("Set ID: "..set)
                end
            end
            
            tooltip:AddLine(" ")
        end
    end
end)
