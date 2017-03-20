BINDING_HEADER_SETCOLLECTOR = "Set Collector"
BINDING_NAME_SETCOLLECTOR_TOGGLE = "Toggle Set Collector"

local L = LibStub("AceLocale-3.0"):NewLocale("SetCollector", "enUS", true)

if L then

-- Mapped Localizations
L["ARTIFACT"] = ITEM_QUALITY6_DESC
L["CASTER"] = RANGED
L["CHALLENGE"] = GUILD_CHALLENGE_TYPE5
L["DUNGEON"] = GUILD_CHALLENGE_TYPE1
L["FLEXIBLE"] = PLAYER_DIFFICULTY4
L["HEALER"] = HEALER
L["HEROIC"] = PLAYER_DIFFICULTY2
L["LEGENDARY"] = ITEM_QUALITY5_DESC
L["MELEE"] = MELEE
L["MYTHIC"] = PLAYER_DIFFICULTY6
L["NORMAL"] = PLAYER_DIFFICULTY1
L["PLAYER10"] = RAID_DIFFICULTY1
L["PLAYER25"] = RAID_DIFFICULTY2
L["PVP"] = PVP
L["RAIDFINDER"] = PLAYER_DIFFICULTY3
L["RANGED"] = RANGED
L["TANK"] = TANK

-- From Translators
L["ADDON_NAME"] = "Set Collector"
L["ALLIANCE"] = "Alliance"
L["ASPIRANT"] = "Aspirant"
L["BINDING_TOGGLE_UI"] = "Toggle Set Collector display"
L["BLACK"] = "Black"
L["BLUE"] = "Blue"
L["BROWN"] = "Brown"
L["CAPTAIN"] = "Captain's Hat"
L["CHAR_DB_UPGRADED"] = "Set Collector: Character database upgraded."
L["CLOTH"] = "Cloth"
L["COMBATANT"] = "Combatant"
L["CRAFTED"] = "Crafted"
L["CUSTOM"] = "Custom"
L["DB_UPGRADED"] = "Set Collector: Database upgraded."
L["DEBUG_OFF"] = "Debug Off."
L["DEBUG_ON"] = "Debug On."
L["DG_CLOTH_03"] = "Mana-Etched Regalia"
L["DG_LEATHER_03"] = "Wastewalker Armor"
L["DG_MAIL_03"] = "Desolation Battlegear"
L["DG_PLATE_03"] = "Doomplate Battlegear"
L["DH_LG_MELEE_110"] = "Legion Legendary"
L["DH_LG_TANK_110"] = "Legion Legendary"
L["DH_OTH_19"] = "Battlegear of the Shattered Abyss"
L["DH_PVP_19"] = "[L1] Vindictive Gladiator's Felskin"
L["DH_TR_19"] = "[19] Vestment of Second Sight"
L["DK_CD_90"] = "Lich Lord Set"
L["DK_LG_MELEE_110"] = "Legion Legendary"
L["DK_LG_TANK_110"] = "Legion Legendary"
L["DK_OTH_19"] = "Deathlord's Battleplate"
L["DK_PVP_16"] = "[16] Primal Desecration"
L["DK_PVP_17"] = "[W2] Wild Desecration"
L["DK_PVP_18"] = "[W3] Warmongering Desecration"
L["DK_PVP_19"] = "[L1] Vindictive Gladiator's Desecration"
L["DK_PVP_MELEE_14"] = "[14] Greivous Gladiator's Desecration"
L["DK_PVP_MELEE_15"] = "[15] Prideful Gladiator's Desecration"
L["DK_STARTER"] = "Starter Set"
L["DK_TR_17"] = "[17] Ogreskull Boneplate Battlegear"
L["DK_TR_18"] = "[18] Demongaze Armor"
L["DK_TR_19"] = "[19] Dreadwyrm Battleplate"
L["DK_TR_MELEE_07"] = "[7] Scourgeborne Battlegear"
L["DK_TR_MELEE_08"] = "[8] Darkruned Battlegear"
L["DK_TR_MELEE_10"] = "[10] Scourgelord's Battlegear"
L["DK_TR_MELEE_11"] = "[11] Magma Plated Battlegear"
L["DK_TR_MELEE_12"] = "[12] Elementium Deathplate Battlegear"
L["DK_TR_MELEE_13"] = "[13] Necrotic Boneplate Battlegear"
L["DK_TR_MELEE_14"] = "[14] Battlegear of the Lost Catacomb"
L["DK_TR_MELEE_15"] = "[15] Battleplate of the All-Consuming Maw"
L["DK_TR_MELEE_16"] = "[16] Battleplate of Cyclopean Dread"
L["DK_TR_MELEE_A_09"] = "[9] Thassarian's Battlegear"
L["DK_TR_MELEE_H_09"] = "[9] Koltira's Battlegear"
L["DK_TR_TANK_07"] = "[7] Scourgeborne Plate"
L["DK_TR_TANK_08"] = "[8] Darkruned Plate"
L["DK_TR_TANK_10"] = "[10] Scourgelord's Plate"
L["DK_TR_TANK_11"] = "[11] Magma Plated Battlearmor"
L["DK_TR_TANK_12"] = "[12] Elementium Deathplate Battlearmor"
L["DK_TR_TANK_13"] = "[13] Necrotic Boneplate Armor"
L["DK_TR_TANK_14"] = "[14] Plate of the Lost Catacomb"
L["DK_TR_TANK_15"] = "[15] Plate of the All-Consuming Maw"
L["DK_TR_TANK_16"] = "[16] Plate of Cyclopean Dread"
L["DK_TR_TANK_A_09"] = "[9] Thassarian's Plate"
L["DK_TR_TANK_H_09"] = "[9] Koltira's Plate"
L["DR_CD_90"] = "The Cycle Set"
L["DR_DG_01"] = "D1: Wildheart Raiment"
L["DR_DG_02"] = "D2: Feralheart Raiment"
L["DR_DG_03"] = "D3: Moonglade Raiment"
L["DR_DG_AQ_1"] = "Symbols of Unending Life"
L["DR_DG_AQ_2"] = "Genesis Raiment"
L["DR_LG_CASTER_110"] = "Legion Legendary"
L["DR_LG_HEALER_110"] = "Legion Legendary"
L["DR_LG_MELEE_110"] = "Legion Legendary"
L["DR_LG_TANK_110"] = "Legion Legendary"
L["DR_OTH_19"] = "Dreamgrove Raiment"
L["DR_PVP_16"] = "[16] Primal Sanctuary"
L["DR_PVP_17"] = "[W2] Wild Sanctuary"
L["DR_PVP_18"] = "[W3] Warmongering Sanctuary"
L["DR_PVP_19"] = "[L1] Vindictive Gladiator's Dragonhide"
L["DR_PVP_CASTER_14"] = "[14] Grievous Gladiator's Wildhide"
L["DR_PVP_CASTER_15"] = "[15] Prideful Gladiator's Wildhide"
L["DR_PVP_HEALER_14"] = "[14] Grievous Gladiator's Refuge"
L["DR_PVP_HEALER_15"] = "[15] Prideful Gladiator's Refuge"
L["DR_PVP_MELEE_14"] = "[14] Grievous Gladiator's Sanctuary"
L["DR_PVP_MELEE_15"] = "[15] Prideful Gladiator's Sanctuary"
L["DR_TR_01"] = "[1] Cenarion Raiment"
L["DR_TR_02"] = "[2] Stormrage Raiment"
L["DR_TR_03"] = "[3] Dreamwalker Raiment"
L["DR_TR_17"] = "[17] Living Wood Battlegear"
L["DR_TR_18"] = "[18] Oathclaw Wargarb"
L["DR_TR_19"] = "[19] Garb of the Astral Warden"
L["DR_TR_CASTER_04"] = "[4] Malorne Regalia"
L["DR_TR_CASTER_05"] = "[5] Nordrassil Regalia"
L["DR_TR_CASTER_06"] = "[6] Thunderheart Regalia"
L["DR_TR_CASTER_07"] = "[7] Dreamwalker Garb"
L["DR_TR_CASTER_08"] = "[8] Nightsong Garb"
L["DR_TR_CASTER_10"] = "[10] Lasherweave Regalia"
L["DR_TR_CASTER_11"] = "[11] Stormrider's Regalia"
L["DR_TR_CASTER_12"] = "[12] Obsidium Arborweave Regalia"
L["DR_TR_CASTER_13"] = "[13] Deep Earth Regalia"
L["DR_TR_CASTER_14"] = "[14] Regalia of the Eternal Blossom"
L["DR_TR_CASTER_15"] = "[15] Regalia of the Haunted Forest"
L["DR_TR_CASTER_16"] = "[16] Regalia of the Shattered Vale"
L["DR_TR_CASTER_A_09"] = "[9] Malfurion's Regalia"
L["DR_TR_CASTER_H_09"] = "[9] Runetotem's Regalia"
L["DR_TR_HEALER_04"] = "[4] Malorne Raiment"
L["DR_TR_HEALER_05"] = "[5] Nordrassil Raiment"
L["DR_TR_HEALER_06"] = "[6] Thunderheart Raiment"
L["DR_TR_HEALER_07"] = "[7] Dreamwalker Regalia"
L["DR_TR_HEALER_08"] = "[8] Nightsong Regalia"
L["DR_TR_HEALER_10"] = "[10] Lasherweave Garb"
L["DR_TR_HEALER_11"] = "[11] Stormrider's Vestments"
L["DR_TR_HEALER_12"] = "[12] Obsidium Arborweave Vestments"
L["DR_TR_HEALER_13"] = "[13] Deep Earth Vestments"
L["DR_TR_HEALER_14"] = "[14] Vestments of the Eternal Blossom"
L["DR_TR_HEALER_15"] = "[15] Vestments of the Haunted Forest"
L["DR_TR_HEALER_16"] = "[16] Vestments of the Shattered Vale"
L["DR_TR_HEALER_A_09"] = "[9] Malfurion's Garb"
L["DR_TR_HEALER_H_09"] = "[9] Runetotem's Garb"
L["DR_TR_MELEE_04"] = "[4] Malorne Harness"
L["DR_TR_MELEE_05"] = "[5] Nordrassil Harness"
L["DR_TR_MELEE_06"] = "[6] Thunderheart Harness"
L["DR_TR_MELEE_07"] = "[7] Dreamwalker Battlegear"
L["DR_TR_MELEE_08"] = "[8] Nightsong Battlegear"
L["DR_TR_MELEE_10"] = "[10] Lasherweave Battlegear"
L["DR_TR_MELEE_11"] = "[11] Stormrider's Battlegarb"
L["DR_TR_MELEE_12"] = "[12] Obsidium Arborweave Battlegarb"
L["DR_TR_MELEE_13"] = "[13] Deep Earth Battlegarb"
L["DR_TR_MELEE_14"] = "[14] Battlegear of the Eternal Blossom"
L["DR_TR_MELEE_15"] = "[15] Battlegear of the Haunted Forest"
L["DR_TR_MELEE_16"] = "[16] Battlegear of the Shattered Vale"
L["DR_TR_MELEE_A_09"] = "[9] Malfurion's Battlegear"
L["DR_TR_MELEE_H_09"] = "[9] Runetotem's Battlegear"
L["DR_TR_TANK_14"] = "[14] Armor of the Eternal Blossom"
L["DR_TR_TANK_15"] = "[15] Armor of the Haunted Forest"
L["DR_TR_TANK_16"] = "[16] Armor of the Shattered Vale"
L["ELITE"] = "Elite"
L["FINE"] = "Fine"
L["FLEETCOMMANDER"] = "Fleet Commander's Hat"
L["GA_ALLIANCE_SET"] = "Stormwind Set"
L["GA_BWM_SET_100"] = "Bunker/War Mill Sets"
L["GA_HORDE_SET"] = "Orgrimmar Set"
L["GARRISON"] = "Garrison"
L["GLADIATOR"] = "Gladiator"
L["GREEN"] = "Green"
L["HIDE_DETAIL"] = "Hide Detail"
L["HO_BREWFEST_DRESS"] = "Brewfest Garb (Dress)"
L["HO_BREWFEST_REGALIA"] = "Brewfest Garb (Regalia)"
L["HO_DINNER_SUIT"] = "Dinner Suit"
L["HO_ELEGANT_DRESS"] = "Elegant Dress"
L["HO_FESTIVE_DRESS"] = "Festive Dress / Festival Dress"
L["HO_FESTIVE_SUIT"] = "Festive Pant Suit / Festival Suit"
L["HO_HALLOWED_HELM"] = "Hallowed Helm"
L["HO_HORSEMANS_HOOD"] = "The Horseman's Horrific Hood"
L["HO_HORSEMANS_SLICER"] = "The Horseman's Sinister Slicer"
L["HO_LOVELY_DRESS"] = "Lovely Dress"
L["HO_MIDSUMMER_REVELER"] = "Midsummer Reveler"
L["HO_PILGRIMS_ATTIRE"] = "Pilgrim's Attire"
L["HO_PILGRIMS_DRESS"] = "Pilgrim's Dress"
L["HO_TUXEDO"] = "Tuxedo"
L["HO_WINTER_GARB"] = "Winter Garb"
L["HOLIDAY"] = "Holiday"
L["HORDE"] = "Horde"
L["HU_CD_90"] = "The Howling Beast Set"
L["HU_DG_01"] = "D1: Beaststalker Armor"
L["HU_DG_02"] = "D2: Beastmaster Armor"
L["HU_DG_03"] = "D3: Beast Lord Armor"
L["HU_DG_AQ_1"] = "Trappings of the Unseen Path"
L["HU_DG_AQ_2"] = "Striker's Garb"
L["HU_LG_MELEE_110"] = "Legion Legendary"
L["HU_LG_RANGED_110"] = "Legion Legendary"
L["HU_OTH_19"] = "Guise of the Unseen Path"
L["HU_PVP_16"] = "[16] Primal Pursuit"
L["HU_PVP_17"] = "[W2] Wild Pursuit"
L["HU_PVP_18"] = "[W3] Warmongering Pursuit"
L["HU_PVP_19"] = "[L1] Vindictive Gladiator's Pursuit"
L["HU_PVP_RANGED_14"] = "[14] Grievous Gladiator's Pursuit"
L["HU_PVP_RANGED_15"] = "[15] Prideful Gladiator's Pursuit"
L["HU_TR_01"] = "[1] Giantstalker Armor"
L["HU_TR_02"] = "[2] Dragonstalker Armor"
L["HU_TR_03"] = "[3] Cryptstalker Armor"
L["HU_TR_17"] = "[17] Rylakstalker's Battlegear"
L["HU_TR_18"] = "[18] Battlegear of the Savage Hunt"
L["HU_TR_19"] = "[19] Eagletalon Battlegear"
L["HU_TR_RANGED_04"] = "[4] Demon Stalker Armor"
L["HU_TR_RANGED_05"] = "[5] Rift Stalker Armor"
L["HU_TR_RANGED_06"] = "[6] Gronnstalker's Armor"
L["HU_TR_RANGED_07"] = "[7] Cryptstalker Battlegear"
L["HU_TR_RANGED_08"] = "[8] Scourgestalker Battlegear"
L["HU_TR_RANGED_10"] = "[10] Ahn'Kahar Blood Hunter's Battlegear"
L["HU_TR_RANGED_11"] = "[11] Lightning-Charged Battlegear"
L["HU_TR_RANGED_12"] = "[12] Flamewaker's Battlegear"
L["HU_TR_RANGED_13"] = "[13] Wyrmstalker Battlegear"
L["HU_TR_RANGED_14"] = "[14] Yaungol Slayer Battlegear"
L["HU_TR_RANGED_15"] = "[15] Battlegear of the Saurok Stalker"
L["HU_TR_RANGED_16"] = "[16] Battlegear of the Unblinking Vigil"
L["HU_TR_RANGED_A_09"] = "[9] Windrunner's Battlegear"
L["HU_TR_RANGED_H_09"] = "[9] Windrunner's Pursuit"
L["ITEMLINK_ERROR"] = "Set Collector: Item information is not in your cache yet or an invalid item ID was used. Please try again."
L["ITEMS_COLLECTED"] = "%d/%d"
L["L100"] = "100"
L["L90"] = "90"
L["LEATHER"] = "Leather"
L["LG_60"] = "Sulfuras, Hand of Ragnaros"
L["LG_80"] = "Shadowmourne"
L["LG_85"] = "Dragonwrath, Tarecgosa's Rest"
L["LG_CASTER_INT_100"] = "Etheralus, the Eternal Reward"
L["LG_CASTER_INT_90"] = "Xing-Ho, Breath of Yulon"
L["LG_HEALER_80"] = "Val'anyr, Hammer of Ancient Kings"
L["LG_HEALER_INT_100"] = "Nithramus, the All-Seer"
L["LG_HEALER_INT_90"] = "Jina-Kang, Kindness of Chi-Ji"
L["LG_MELEE_70"] = "The Twin Blades of Azzinoth"
L["LG_MELEE_AGI_100"] = "Maalus, the Blood Drinker"
L["LG_MELEE_AGI_90"] = "Fen-Yu, Fury of Xuen"
L["LG_MELEE_STR_100"] = "Thorasus, the Stone Heart of Dreanor"
L["LG_MELEE_STR_90"] = "Gong-Lu, Strength of Xuen"
L["LG_RANGED_70"] = "Thori'dal, the Stars' Fury"
L["LG_ROGUE_85"] = "Fangs of the Father"
L["LG_TANK_100"] = "Sanctus, Sigil of the Unbroken"
L["LG_TANK_AGI_90"] = "Qian-Le, Courage of Niuzao"
L["LG_TANK_STR_90"] = "Qian-Ying, Fortitude of Niuzao"
L["MA_CD_90"] = "The Elemental Triad Set"
L["MA_DG_01"] = "D1: Magister's Regalia"
L["MA_DG_02"] = "D2: Sorcerer's Regalia"
L["MA_DG_03"] = "D3: Incanter's Regalia"
L["MA_DG_AQ_1"] = "Trappings of Vaulted Secrets"
L["MA_DG_AQ_2"] = "Enigma Vestments"
L["MA_LG_CASTER_110"] = "Legion Legendary"
L["MA_OTH_19"] = "Vesture of Tirisgarde"
L["MA_PVP_16"] = "[16] Primal Gladiator's Regalia"
L["MA_PVP_17"] = "[W2] Wild Regalia"
L["MA_PVP_18"] = "[W3] Warmongering Regalia"
L["MA_PVP_19"] = "[L1] Vindictive Gladiator's Regalia"
L["MA_PVP_CASTER_14"] = "[14] Grievous Gladiator's Regalia"
L["MA_PVP_CASTER_15"] = "[15] Prideful Gladiator's Regalia"
L["MA_TR_01"] = "[1] Arcanist Regalia"
L["MA_TR_02"] = "[2] Netherwind Regalia"
L["MA_TR_03"] = "[3] Frostfire Regalia"
L["MA_TR_17"] = "[17] Arcanoshatter Regalia"
L["MA_TR_18"] = "[18] Raiment of the Arcane Conclave"
L["MA_TR_19"] = "[19] Regalia of Everburning Knowledge"
L["MA_TR_CASTER_04"] = "[4] Aldor Regalia"
L["MA_TR_CASTER_05"] = "[5] Tirisfal Regalia"
L["MA_TR_CASTER_06"] = "[6] Tempest Regalia"
L["MA_TR_CASTER_07"] = "[7] Frostfire Garb"
L["MA_TR_CASTER_08"] = "[8] Kirin Tor Garb"
L["MA_TR_CASTER_10"] = "[10] Bloodmage's Regalia"
L["MA_TR_CASTER_11"] = "[11] Firelord's Vestments"
L["MA_TR_CASTER_12"] = "[12] Fire Hawk Robes of Conflagration"
L["MA_TR_CASTER_13"] = "[13] Time Lord's Regalia"
L["MA_TR_CASTER_14"] = "[14] Regalia of the Burning Scroll"
L["MA_TR_CASTER_15"] = "[15] Regalia of the Chromatic Hydra"
L["MA_TR_CASTER_16"] = "[16] Chronomancer Regalia"
L["MA_TR_CASTER_A_09"] = "[9] Khadgar's Regalia"
L["MA_TR_CASTER_H_09"] = "[9] Sunstrider's Regalia"
L["MAIL"] = "Mail"
L["MINIMAP_TOOLTIP"] = "Click to view your gear set progress."
L["MISSING_LOCALIZATION"] = "Missing Localization. Please report bug."
L["MO_CD_90"] = "The Regal Lord Set"
L["MO_LG_HEALER_110"] = "Legion Legendary"
L["MO_LG_MELEE_110"] = "Legion Legendary"
L["MO_LG_TANK_110"] = "Legion Legendary"
L["MO_OTH_19"] = "Grandmaster's Finery"
L["MO_PVP_16"] = "[16] Primal Ironskin"
L["MO_PVP_17"] = "[W2] Wild Ironskin"
L["MO_PVP_18"] = "[W3] Warmongering Ironskin"
L["MO_PVP_19"] = "[L1] Vindictive Gladiator's Ironskin"
L["MO_PVP_HEALER_14"] = "[14] Grievous Gladiator's Copperskin"
L["MO_PVP_HEALER_15"] = "[15] Prideful Gladiator's Copperskin"
L["MO_PVP_MELEE_14"] = "[14] Grievous Gladiator's Ironskin"
L["MO_PVP_MELEE_15"] = "[15] Prideful Gladiator's Ironskin"
L["MO_TR_17"] = "[17] Battlegear of the Somber Gaze"
L["MO_TR_18"] = "[18] Battlewrap of the Hurricane's Eye"
L["MO_TR_19"] = "[19] Vestments of Enveloped Dissonance"
L["MO_TR_HEALER_14"] = "[14] Battlegear of the Red Crane"
L["MO_TR_HEALER_15"] = "[15] Fire-Charm Vestments"
L["MO_TR_HEALER_16"] = "[16] Vestments of Seven Sacred Seals"
L["MO_TR_MELEE_14"] = "[14] Vestments of the Red Crane"
L["MO_TR_MELEE_15"] = "[15] Fire-Charm Battlegear"
L["MO_TR_MELEE_16"] = "[16] Battlegear of Seven Sacred Seals"
L["MO_TR_TANK_14"] = "[14] Armor of the Red Crane"
L["MO_TR_TANK_15"] = "[15] Fire-Charm Armor"
L["MO_TR_TANK_16"] = "[16] Armor of Seven Sacred Seals"
L["NOOBTAIN"] = "No longer obtainable"
L["NOT_AVAILABLE"] = "Set Collector: This feature or function is not available yet. Thank you for your patience."
L["NOTRANSMOG"] = "Not for transmogrification"
L["OBTAIN_FILTER"] = "Only Obtainable"
L["ORIGINAL"] = "Original"
L["OT_ELR_100"] = "Eredar Lord Regalia"
L["OTH_CLOTH_100"] = "Fel-Infused Cloth Armor"
L["OTH_LEATHER_100"] = "Felshroud Leather Armor"
L["OTH_LOCKET_100"] = "Alaina's Bonnet (from Charred Locket)"
L["OTH_MAIL_100"] = "Fel-Chain Mail Armor"
L["OTH_PLATE_100"] = "Felforged Plate Armor"
L["OTH_SHIPYARD_100"] = "Captain/Fleet Commander's Hat"
L["OTH_SHOES_100"] = "Griftah's Authentic Troll Shoes"
L["OTHER"] = "Other"
L["OUTFITS"] = "Outfits"
L["PA_CD_90"] = "The Holy Warrior Set"
L["PA_DG_01"] = "D1: Lightforge Armor"
L["PA_DG_02"] = "D2: Soulforge Armor"
L["PA_DG_03"] = "D3: Righteous Armor"
L["PA_DG_AQ_1"] = "Battlegear of Eternal Justice"
L["PA_DG_AQ_2"] = "Avenger's Battlegear"
L["PA_LG_HEALER_110"] = "Legion Legendary"
L["PA_LG_MELEE_110"] = "Legion Legendary"
L["PA_LG_TANK_110"] = "Legion Legendary"
L["PA_OTH_19"] = "Battleplate of the Silver Hand"
L["PA_PVP_16"] = "[16] Primal Redemption"
L["PA_PVP_17"] = "[W2] Wild Redemption"
L["PA_PVP_18"] = "[W3] Warmongering Redemption"
L["PA_PVP_19"] = "[L1] Vindictive Gladiator's Redemption"
L["PA_PVP_HEALER_14"] = "[14] Grievous Gladiator's Redemption"
L["PA_PVP_HEALER_15"] = "[15] Prideful Gladiator's Redemption"
L["PA_PVP_MELEE_14"] = "[14] Grievous Gladiator's Vindication"
L["PA_PVP_MELEE_15"] = "[15] Prideful Gladiator's Vindication"
L["PA_TR_01"] = "[1] Lawbringer Armor"
L["PA_TR_02"] = "[2] Judgement Armor"
L["PA_TR_03"] = "[3] Redemption Armor"
L["PA_TR_17"] = "[17] Battlegear of Guiding Light"
L["PA_TR_18"] = "[18] Watch of the Ceaseless Vigil"
L["PA_TR_19"] = "[19] Battleplate of the Highlord"
L["PA_TR_HEALER_04"] = "[4] Justicar Raiment"
L["PA_TR_HEALER_05"] = "[5] Crystalforge Raiment"
L["PA_TR_HEALER_06"] = "[6] Lightbringer Raiment"
L["PA_TR_HEALER_07"] = "[7] Redemption Regalia"
L["PA_TR_HEALER_08"] = "[8] Aegis Regalia"
L["PA_TR_HEALER_10"] = "[10] Lightsworn Garb"
L["PA_TR_HEALER_11"] = "[11] Reinforced Sapphirium Regalia"
L["PA_TR_HEALER_12"] = "[12] Regalia of Immolation"
L["PA_TR_HEALER_13"] = "[13] Regalia of Radiant Glory"
L["PA_TR_HEALER_14"] = "[14] White Tiger Vestments"
L["PA_TR_HEALER_15"] = "[15] Vestments of the Lightning Emperor"
L["PA_TR_HEALER_16"] = "[16] Vestments of Winged Triumph"
L["PA_TR_HEALER_A_09"] = "[9] Turalyon's Garb"
L["PA_TR_HEALER_H_09"] = "[9] Liadrin's Garb"
L["PA_TR_MELEE_04"] = "[4] Justicar Battlegear"
L["PA_TR_MELEE_05"] = "[5] Crystalforge Battlegear"
L["PA_TR_MELEE_06"] = "[6] Lightbringer Battlegear"
L["PA_TR_MELEE_07"] = "[7] Redemption Battlegear"
L["PA_TR_MELEE_08"] = "[8] Aegis Battlegear"
L["PA_TR_MELEE_10"] = "[10] Lightsworn Battlegear"
L["PA_TR_MELEE_11"] = "[11] Reinforced Sapphirium Battleplate"
L["PA_TR_MELEE_12"] = "[12] Battleplate of Immolation"
L["PA_TR_MELEE_13"] = "[13] Battleplate of Radiant Glory"
L["PA_TR_MELEE_14"] = "[14] White Tiger Battlegear"
L["PA_TR_MELEE_15"] = "[15] Battlegear of the Lightning Emperor"
L["PA_TR_MELEE_16"] = "[16] Battlegear of Winged Triupmh"
L["PA_TR_MELEE_A_09"] = "[9] Turalyon's Battlegear"
L["PA_TR_MELEE_H_09"] = "[9] Liadrin's Battlegear"
L["PA_TR_TANK_04"] = "[4] Justicar Armor"
L["PA_TR_TANK_05"] = "[5] Crystalforge Armor"
L["PA_TR_TANK_06"] = "[6] Lightbringer Armor"
L["PA_TR_TANK_07"] = "[7] Redemption Plate"
L["PA_TR_TANK_08"] = "[8] Aegis Plate"
L["PA_TR_TANK_10"] = "[10] Lightsworn Plate"
L["PA_TR_TANK_11"] = "[11] Reinforced Sapphirium Battlearmor"
L["PA_TR_TANK_12"] = "[12] Battlearmor of Immolation"
L["PA_TR_TANK_13"] = "[13] Armor of Radiant Glory"
L["PA_TR_TANK_14"] = "[14] White Tiger Plate"
L["PA_TR_TANK_15"] = "[15] Plate of the Lightning Emperor"
L["PA_TR_TANK_16"] = "[16] Plate of Winged Triumph"
L["PA_TR_TANK_A_09"] = "[9] Turalyon's Plate"
L["PA_TR_TANK_H_09"] = "[9] Liadrin's Plate"
L["PINK"] = "Pink"
L["PLATE"] = "Plate"
L["PR_CD_90"] = "The Light Set"
L["PR_DG_01"] = "D1: Vestments of the Devout"
L["PR_DG_02"] = "D2: Vestments of the Virtuous"
L["PR_DG_03"] = "D3: Hallowed Raiment"
L["PR_DG_AQ_1"] = "Finery of Infinite Wisdom"
L["PR_DG_AQ_2"] = "Garments of the Oracle"
L["PR_LG_CASTER_110"] = "Legion Legendary"
L["PR_LG_HEALER_110"] = "Legion Legendary"
L["PR_OTH_19"] = "Regalia of the High Priest"
L["PR_PVP_16"] = "[16] Primal Investiture"
L["PR_PVP_17"] = "[W2] Wild Investiture"
L["PR_PVP_18"] = "[W3] Warmongering Investiture"
L["PR_PVP_19"] = "[L1] Vindictive Gladiator's Investiture"
L["PR_PVP_CASTER_14"] = "[14] Grievous Gladiator's Raiment"
L["PR_PVP_CASTER_15"] = "[15] Prideful Gladiator's Raiment"
L["PR_PVP_HEALER_14"] = "[14] Grievous Gladiator's Investiture"
L["PR_PVP_HEALER_15"] = "[15] Prideful Gladiator's Investiture"
L["PR_TR_01"] = "[1] Vestments of Prophecy"
L["PR_TR_02"] = "[2] Vestments of Transcendence"
L["PR_TR_03"] = "[3] Vestments of Faith"
L["PR_TR_17"] = "[17] Soul Priest's Raiment"
L["PR_TR_18"] = "[18] Attire of Piety"
L["PR_TR_19"] = "[19] Vestments of the Purifier"
L["PR_TR_CASTER_04"] = "[4] Incarnate Regalia"
L["PR_TR_CASTER_05"] = "[5] Avatar Regalia"
L["PR_TR_CASTER_06"] = "[6] Absolution Raiment"
L["PR_TR_CASTER_07"] = "[7] Garb of Faith"
L["PR_TR_CASTER_08"] = "[8] Sanctification Garb"
L["PR_TR_CASTER_10"] = "[10] Crimson Acolyte's Regalia"
L["PR_TR_CASTER_11"] = "[11] Mercurial Regalia"
L["PR_TR_CASTER_12"] = "[12] Regalia of the Cleansing Flame"
L["PR_TR_CASTER_13"] = "[13] Regalia of Dying Light"
L["PR_TR_CASTER_14"] = "[14] Regalia of the Guardian Serpent"
L["PR_TR_CASTER_15"] = "[15] Regalia of the Exorcist"
L["PR_TR_CASTER_16"] = "[16] Regalia of Ternion Glory"
L["PR_TR_CASTER_A_09"] = "[9] Velen's Regalia"
L["PR_TR_CASTER_H_09"] = "[9] Zabra's Regalia"
L["PR_TR_HEALER_04"] = "[4] Incarnate Raiment"
L["PR_TR_HEALER_05"] = "[5] Avatar Raiment"
L["PR_TR_HEALER_06"] = "[6] Vestment of Absolution"
L["PR_TR_HEALER_07"] = "[7] Regalia of Faith"
L["PR_TR_HEALER_08"] = "[8] Sanctification Regalia"
L["PR_TR_HEALER_10"] = "[10] Crimson Acolyte's Raiment"
L["PR_TR_HEALER_11"] = "[11] Mercurial Vestments"
L["PR_TR_HEALER_12"] = "[12] Vestments of the Cleansing Flame"
L["PR_TR_HEALER_13"] = "[13] Vestments of Dying Light"
L["PR_TR_HEALER_14"] = "[14] Vestments of the Guardian Serpent"
L["PR_TR_HEALER_15"] = "[15] Vestments of the Exorcist"
L["PR_TR_HEALER_16"] = "[16] Vestments of Ternion Glory"
L["PR_TR_HEALER_A_09"] = "[9] Velen's Raiment"
L["PR_TR_HEALER_H_09"] = "[9] Zabra's Raiment"
L["PURPLE"] = "Purple"
L["RAID"] = "Raid"
L["RED"] = "Red"
L["REPLICA"] = "Replica"
L["RIGHT_CLICK_FAVORITE"] = "Right-click to favorite a set."
L["RO_CD_90"] = "The Silent Assassin Set"
L["RO_DG_01"] = "D1: Shadowcraft Armor"
L["RO_DG_02"] = "D2: Darkmantle Armor"
L["RO_DG_03"] = "D3: Assassination Armor"
L["RO_DG_AQ_1"] = "Emblems of Veiled Shadows"
L["RO_DG_AQ_2"] = "Deathdealer's Embrace"
L["RO_LG_MELEE_110"] = "Legion Legendary"
L["RO_OTH_19"] = "Battlegear of the Uncrowned"
L["RO_PVP_16"] = "[16] Primal Vestments"
L["RO_PVP_17"] = "[W2] Wild Vestments"
L["RO_PVP_18"] = "[W3] Warmongering Vestments"
L["RO_PVP_19"] = "[L1] Vindictive Gladiator's Vestments"
L["RO_PVP_MELEE_14"] = "[14] Grievous Gladiator's Vestments"
L["RO_PVP_MELEE_15"] = "[15] Prideful Gladiator's Vestments"
L["RO_TR_01"] = "[1] Nightslayer Armor"
L["RO_TR_02"] = "[2] Bloodfang Armor"
L["RO_TR_03"] = "[3] Bonescythe Armor"
L["RO_TR_17"] = "[17] Poisoner's Battlegear"
L["RO_TR_18"] = "[18] Felblade Armor"
L["RO_TR_19"] = "[19] Doomblade Battlegear"
L["RO_TR_MELEE_04"] = "[4] Netherblade"
L["RO_TR_MELEE_05"] = "[5] Deathmantle"
L["RO_TR_MELEE_06"] = "[6] Slayer's Armor"
L["RO_TR_MELEE_07"] = "[7] Bonescythe Battlegear"
L["RO_TR_MELEE_08"] = "[8] Terrorblade Battlegear"
L["RO_TR_MELEE_10"] = "[10] Shadowblade's Battlegear"
L["RO_TR_MELEE_11"] = "[11] Wind Dancer's Regalia"
L["RO_TR_MELEE_12"] = "[12] Vestments of the Dark Phoenix"
L["RO_TR_MELEE_13"] = "[13] Blackfang Battleweave"
L["RO_TR_MELEE_14"] = "[14] Battlegear of the Thousandfold Blades"
L["RO_TR_MELEE_15"] = "[15] Nine-Tail Battlegear"
L["RO_TR_MELEE_16"] = "[16] Barbed Assassin Battlegear"
L["RO_TR_MELEE_A_09"] = "[9] VanCleef's Battlegear"
L["RO_TR_MELEE_H_09"] = "[9] Garona's Battlegear"
L["SH_AR_CASTER_10"] = "The Fist of Ra-den"
L["SH_AR_CASTER_11"] = "Stormkeeper"
L["SH_AR_CASTER_12"] = "Earthspeaker"
L["SH_AR_CASTER_13"] = "Fist of the Fallen Shaman"
L["SH_AR_HEALER_10"] = "Sharas'dal Scepter of Tides"
L["SH_AR_HEALER_11"] = "Scepter of the Deep"
L["SH_AR_HEALER_12"] = "Titanborn"
L["SH_AR_HEALER_13"] = "Totembearer"
L["SH_AR_MELEE_10"] = "Doomhammer"
L["SH_AR_MELEE_11"] = "Stormbringer"
L["SH_AR_MELEE_12"] = "Legion's Doom"
L["SH_AR_MELEE_13"] = "Blackhand's Fate"
L["SH_CD_90"] = "Windfury Set"
L["SH_DG_01"] = "D1: The Elements"
L["SH_DG_02"] = "D2: The Five Thunders"
L["SH_DG_03"] = "D3: Tidefury Raiment"
L["SH_DG_AQ_1"] = "Gift of the Gathering Storm"
L["SH_DG_AQ_2"] = "Stormcaller's Garb"
L["SH_LG_CASTER_110"] = "Legion Legendary"
L["SH_LG_HEALER_110"] = "Legion Legendary"
L["SH_LG_MELEE_110"] = "Legion Legendary"
L["SH_OTH_19"] = "Raiment of the Farseer"
L["SH_PVP_16"] = "[16] Primal Wartide"
L["SH_PVP_17"] = "[W2] Wild Wartide"
L["SH_PVP_18"] = "[W3] Warmongering Wartide"
L["SH_PVP_19"] = "[L1] Vindictive Gladiator's Earthshaker"
L["SH_PVP_CASTER_14"] = "[14] Grievous Gladiator's Thunderfist"
L["SH_PVP_CASTER_15"] = "[15] Prideful Gladiator's Thunderfist"
L["SH_PVP_HEALER_14"] = "[14] Grievous Gladiator's Wartide"
L["SH_PVP_HEALER_15"] = "[15] Prideful Gladiator's Wartide"
L["SH_PVP_MELEE_14"] = "[14] Grievous Gladiator's Earthshaker"
L["SH_PVP_MELEE_15"] = "[15] Prideful Gladiator's Earthshaker"
L["SH_TR_01"] = "[1] The Earthfury"
L["SH_TR_02"] = "[2] The Ten Storms"
L["SH_TR_03"] = "[3] The Earth Shatterer"
L["SH_TR_16"] = "[16] Celestial Harmony Regalia"
L["SH_TR_17"] = "[17] Windspeaker's Regalia"
L["SH_TR_18"] = "[18] Embrace of the Living Mountain"
L["SH_TR_19"] = "[19] Regalia of Bound Elements"
L["SH_TR_CASTER_04"] = "[4] Cyclone Regalia"
L["SH_TR_CASTER_05"] = "[5] Cataclysm Regalia"
L["SH_TR_CASTER_06"] = "[6] Skyshatter Regalia"
L["SH_TR_CASTER_07"] = "[7] Earthshatter Garb"
L["SH_TR_CASTER_08"] = "[8] Worldbreaker Garb"
L["SH_TR_CASTER_10"] = "[10] Frost Witch's Regalia"
L["SH_TR_CASTER_11"] = "[11] Regalia of the Raging Elements"
L["SH_TR_CASTER_12"] = "[12] Volcanic Regalia"
L["SH_TR_CASTER_13"] = "[13] Spiritwalker's Regalia"
L["SH_TR_CASTER_14"] = "[14] Regalia of the Firebird"
L["SH_TR_CASTER_15"] = "[15] Regalia of the Witch Doctor"
L["SH_TR_CASTER_16"] = "[16] Celestial Harmony Regalia"
L["SH_TR_CASTER_A_09"] = "[9] Nobundo's Regalia"
L["SH_TR_CASTER_H_09"] = "[9] Thrall's Regalia"
L["SH_TR_HEALER_04"] = "[4] Cyclone Raiment"
L["SH_TR_HEALER_05"] = "[5] Cataclysm Raiment"
L["SH_TR_HEALER_06"] = "[6] Skyshatter Raiment"
L["SH_TR_HEALER_07"] = "[7] Earthshatter Regalia"
L["SH_TR_HEALER_08"] = "[8] Worldbreaker Regalia"
L["SH_TR_HEALER_10"] = "[10] Frost Witch's Garb"
L["SH_TR_HEALER_11"] = "[11] Vestments of the Raging Elements"
L["SH_TR_HEALER_12"] = "[12] Volcanic Vestments"
L["SH_TR_HEALER_13"] = "[13] Spiritwalker's Vestments"
L["SH_TR_HEALER_14"] = "[14] Vestments of the Firebird"
L["SH_TR_HEALER_15"] = "[15] Vestments of the Witch Doctor"
L["SH_TR_HEALER_16"] = "[16] Celestial Harmony Vestment"
L["SH_TR_HEALER_A_09"] = "[9] Nobundo's Garb"
L["SH_TR_HEALER_H_09"] = "[9] Thrall's Garb"
L["SH_TR_MELEE_04"] = "[4] Cyclone Harness"
L["SH_TR_MELEE_05"] = "[5] Cataclysm Harness"
L["SH_TR_MELEE_06"] = "[6] Skyshatter Harness"
L["SH_TR_MELEE_07"] = "[7] Earthshatter Battlegear"
L["SH_TR_MELEE_08"] = "[8] Worldbreaker Battlegear"
L["SH_TR_MELEE_10"] = "[10] Frost Witch's Battlegear"
L["SH_TR_MELEE_11"] = "[11] Battlegear of the Raging Elements"
L["SH_TR_MELEE_12"] = "[12] Volcanic Battlegear"
L["SH_TR_MELEE_13"] = "[13] Spiritwalker's Battlegear"
L["SH_TR_MELEE_14"] = "[14] Battlegear of the Firebird"
L["SH_TR_MELEE_15"] = "[15] Battlegear of the Witch Doctor"
L["SH_TR_MELEE_16"] = "[16] Celestial Harmony Battlegear"
L["SH_TR_MELEE_A_09"] = "[9] Nobundo's Battlegear"
L["SH_TR_MELEE_H_09"] = "[9] Thrall's Battlegear"
L["SHIFT_RIGHT_CLICK_HIDDEN"] = "Shift-Right-click to hide/unhide a set."
L["SHOW_DETAIL"] = "Show Detail"
L["SLASH_HELP"] = [=[Set Collector: Possible commands include show, hide, resetdb and help.
For example, /SetCollector show]=]
L["SLASH_HELP_BUTTON"] = [=[Set Collector: Shows (button show) or hides (button hide) the Minimap button for Set Collector. Leave blank (button) to toggle. 
For example, /SetCollector button hide or /SetCollector button]=]
L["SLASH_HELP_SORT"] = [=[Set Collector: Sets the direction of the default collection sort. Use asc for ascending and desc for descending.
For example, /SetCollector sort asc]=]
L["TEAL"] = "Teal"
L["TR_CLOTH_17"] = "[17] Ebonflame Raiment"
L["TR_CLOTH_18"] = "[18] Felfume Raiment"
L["TR_LEATHER_17"] = "[17] Sootfur Garb"
L["TR_LEATHER_18"] = "[18] Ironpelt Armor"
L["TR_MAIL_17"] = "[17] Ashlink Armor"
L["TR_MAIL_18"] = "[18] Rancorbite Armor"
L["TR_PLATE_17"] = "[17] Blacksteel Battleplate"
L["TR_PLATE_18"] = "[18] Demonbreaker Wargear"
L["TRANSMOG_FILTER"] = "Only for Transmogrification"
L["TUTORIAL_1"] = "Filter sets by specialization and set whether you only want to see your favorites and more."
L["TUTORIAL_2"] = [=[A list of available gear collections and sets is displayed here. Click on a set
to preview. It will also show a star for your favorite sets and a check mark for sets completed.]=]
L["TUTORIAL_3"] = "When there are multiple variants of a set you will see tabs for each variant."
L["TUTORIAL_4"] = [=[A preview of the set will
appear here. Click on a set to the left to preview it here.]=]
L["VENDOR"] = "Vendor Set"
L["VOID_STORAGE_NOT_READY"] = "Set Collector: Void Storage not ready to scan. Please close Void Storage and reopen."
L["WK_AR_CASTER_10"] = "Sceptre of Sargeras"
L["WK_AR_CASTER_11"] = "Hubris of the Dark Titan"
L["WK_AR_CASTER_12"] = "Echo of Gul'dan"
L["WK_AR_CASTER_13"] = "Shadow of the Destroyer"
L["WK_CD_90"] = "The Betrayer Set"
L["WK_DG_01"] = "D1: Dreadmist Raiment"
L["WK_DG_02"] = "D2: Deathmist Raiment"
L["WK_DG_03"] = "D3: Oblivion Raiment"
L["WK_DG_AQ_1"] = "Implements of Unspoken Names"
L["WK_DG_AQ_2"] = "Doomcaller's Attire"
L["WK_LG_CASTER_110"] = "Legion Legendary"
L["WK_OTH_19"] = "Vestments of the Black Harvest"
L["WK_PVP_16"] = "[16] Primal Felshroud"
L["WK_PVP_17"] = "[W2] Wild Felshroud"
L["WK_PVP_18"] = "[W3] Warmongering Felshroud"
L["WK_PVP_19"] = "[L1] Vindictive Gladiator's Felshroud"
L["WK_PVP_CASTER_14"] = "[14] Grievous Gladiator's Felshroud"
L["WK_PVP_CASTER_15"] = "[15] Prideful Gladiator's Felshroud"
L["WK_TR_01"] = "[1] Felheart Raiment"
L["WK_TR_02"] = "[2] Nemesis Raiment"
L["WK_TR_03"] = "[3] Plagueheart Raiment"
L["WK_TR_17"] = "[17] Shadow Council's Garb"
L["WK_TR_18"] = "[18] Deathrattle Regalia"
L["WK_TR_19"] = "[19] Legacy of Azj'Aquir"
L["WK_TR_CASTER_04"] = "[4] Voidheart Raiment"
L["WK_TR_CASTER_05"] = "[5] Corruptor Raiment"
L["WK_TR_CASTER_06"] = "[6] Malefic Raiment"
L["WK_TR_CASTER_07"] = "[7] Plagueheart Garb"
L["WK_TR_CASTER_08"] = "[8] Deathbringer Garb"
L["WK_TR_CASTER_10"] = "[10] Dark Coven's Regalia"
L["WK_TR_CASTER_11"] = "[11] Shadowflame Regalia"
L["WK_TR_CASTER_12"] = "[12] Balespider's Burning Vestments"
L["WK_TR_CASTER_13"] = "[13] Vestments of the Faceless Shroud"
L["WK_TR_CASTER_14"] = "[14] Sha-Skin Regalia"
L["WK_TR_CASTER_15"] = "[15] Regalia of the Thousandfold Hells"
L["WK_TR_CASTER_16"] = "[16] Regalia of the Horned Nightmare"
L["WK_TR_CASTER_A_09"] = "[9] Kel'Thuzad's Regalia"
L["WK_TR_CASTER_H_09"] = "[9] Gul'dan's Regalia"
L["WR_CD_90"] = "The Golden King Set"
L["WR_DG_01"] = "D1: Battlegear of Valor"
L["WR_DG_02"] = "D2: Battlegear of Heroism"
L["WR_DG_03"] = "D3: Bold Armor"
L["WR_DG_AQ_1"] = "Battlegear of Unyielding Strength"
L["WR_DG_AQ_2"] = "Conqueror's Battlegear"
L["WR_LG_MELEE_110"] = "Legion Legendary"
L["WR_LG_TANK_110"] = "Legion Legendary"
L["WR_OTH_19"] = "Battlelord's Plate"
L["WR_PVP_16"] = "[16] Primal Battlegear"
L["WR_PVP_17"] = "[W2] Wild Battlegear"
L["WR_PVP_18"] = "[W3] Warmongering Battlegear"
L["WR_PVP_19"] = "[L1] Vindictive Gladiator's Battlegear"
L["WR_PVP_MELEE_14"] = "[14] Grievous Gladiator's Battlegear"
L["WR_PVP_MELEE_15"] = "[15] Prideful Gladiator's Battlegear"
L["WR_TR_01"] = "[1] Battlegear of Might"
L["WR_TR_02"] = "[2] Battlegear of Wrath"
L["WR_TR_03"] = "[3] Dreadnaught's Battlegear"
L["WR_TR_17"] = "[17] Blackhand's Battlegear"
L["WR_TR_18"] = "[18] Battlegear of Iron Wrath"
L["WR_TR_19"] = "[19] Warplate of the Obsidian Aspect"
L["WR_TR_MELEE_04"] = "[4] Warbringer Battlegear"
L["WR_TR_MELEE_05"] = "[5] Destroyer Battlegear"
L["WR_TR_MELEE_06"] = "[6] Onslaught Battlegear"
L["WR_TR_MELEE_07"] = "[7] Dreadnaught Battlegear"
L["WR_TR_MELEE_08"] = "[8] Siegebreaker Battlegear"
L["WR_TR_MELEE_10"] = "[10] Ymirjar Lord's Battlegear"
L["WR_TR_MELEE_11"] = "[11] Earthen Warplate"
L["WR_TR_MELEE_12"] = "[12] Molten Giant Warplate"
L["WR_TR_MELEE_13"] = "[13] Colossal Dragonplate Battlegear"
L["WR_TR_MELEE_14"] = "[14] Battleplate of Resounding Rings"
L["WR_TR_MELEE_15"] = "[15] Battleplate of the Last Mogu"
L["WR_TR_MELEE_16"] = "[16] Battleplate of the Prehistoric Marauder"
L["WR_TR_MELEE_A_09"] = "[9] Wrynn's Battlegear"
L["WR_TR_MELEE_H_09"] = "[9] Hellscream's Battlegear"
L["WR_TR_TANK_04"] = "[4] Warbringer Armor"
L["WR_TR_TANK_05"] = "[5] Destroyer Armor"
L["WR_TR_TANK_06"] = "[6] Onslaught Armor"
L["WR_TR_TANK_07"] = "[7] Dreadnaught Plate"
L["WR_TR_TANK_08"] = "[8] Siegebreaker Plate"
L["WR_TR_TANK_10"] = "[10] Ymirjar Lord's Plate"
L["WR_TR_TANK_11"] = "[11] Earthen Battleplate"
L["WR_TR_TANK_12"] = "[12] Molten Giant Battleplate"
L["WR_TR_TANK_13"] = "[13] Colossal Dragonplate Armor"
L["WR_TR_TANK_14"] = "[14] Plate of Resounding Rings"
L["WR_TR_TANK_15"] = "[15] Plate of the Last Mogu"
L["WR_TR_TANK_16"] = "[16] Plate of the Prehistoric Marauder"
L["WR_TR_TANK_A_09"] = "[9] Wrynn's Plate"
L["WR_TR_TANK_H_09"] = "[9] Hellscream's Plate"

end