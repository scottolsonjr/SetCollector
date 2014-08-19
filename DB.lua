--
-- Local Variables and Constants
--

local addonName = ...;
local addon = _G[addonName];
local DB_VERSION = "1.1.0.1"
local _L = SetCollectorLocalization;

local ALL = nil

local classes = {}
FillLocalizedClassList(classes)
local DEATHKNIGHT = classes.DEATHKNIGHT
local DRUID 			= classes.DRUID
local HUNTER 			= classes.HUNTER
local MAGE 				= classes.MAGE
local MONK 				= classes.MONK
local PALADIN 		= classes.PALADIN
local PRIEST 			= classes.PRIEST
local ROGUE 			= classes.ROGUE
local SHAMAN 			= classes.SHAMAN
local WARLOCK 		= classes.WARLOCK
local WARRIOR 		= classes.WARRIOR

local ALLIANCE = "Alliance"
local HORDE = "Horde"

local TANK 		= "TANK"
local HEALER 	= "HEALER"
local CASTER 	= "CASTER"
local RANGED 	= "RANGED"
local MELEE 	= "MELEE"

local POOR 			= 0
local COMMON 		= 1
local UNCOMMON 	= 2
local RARE 			= 3
local EPIC 			= 4
local LEGENDARY = 5
local ARTIFACT 	= 6
local HEIRLOOM 	= 7



--
-- Helper Functions
--

local function AddCollection(class, faction, role, name, minLvl, ...)
	local tempCollection = { }
	tempCollection = {
		Faction = faction,
		Role = role,
		Name = name,
		MinLevel = minLvl,
		Sets = { }
	}
	tinsert(SetCollectorDB[class].Collections, tempCollection)
	return #SetCollectorDB[class].Collections
end

local function AddSet(class, faction, collectionIndex, role, name, minLvl, iLvl, quality, ...)
	local tempSetPieces = { }
	local n = select("#",...)
	for i = 1,n do
		local v = select(i,...)
		tinsert(tempSetPieces,v)
	end
	local tempSet = {
		Faction = faction,
		Role = role,
		Name = name,
		MinLevel = minLvl,
		ItemLevel = iLvl,
		Quality = quality,
		setPieces = tempSetPieces,
		setPiecesNumAvailable = #tempSetPieces
	}
	tinsert(SetCollectorDB[class].Collections[collectionIndex].Sets, tempSet)	
end



--
-- Class Functions 
--

local function AddDeathKnightCollections() -- Future Update: Store Localization Keys for Text fields rather than text
	local c = 0
	
	-- Legendaries
	c = AddCollection(DEATHKNIGHT,ALL,ALL,"Legendaries",1);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Qian-Ying, Fortitude of Niuzao",90,608,LEGENDARY,102250);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Gong-Lu, Strength of Xuen",90,608,LEGENDARY,102249);

	-- Tier 16
	c = AddCollection(DEATHKNIGHT,ALL,TANK,"Tier 16: Plate of Cyclopean Dread",90);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Heroic Raid Set",90,566,EPIC,99323,99325,99330,99324,99331)
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Normal Raid Set",90,553,EPIC,99190,99179,99188,99191,99189)
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Flexible Raid Set",90,540,EPIC,99605,99652,99640,99564,99604)
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Raid Finder Set",90,528,EPIC,99049,99040,99060,99039,99048)
	
	c = AddCollection(DEATHKNIGHT,ALL,MELEE,"Tier 16: Battleplate of Cyclopean Dread",90);	
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Heroic Raid Set",90,566,EPIC,99337,99339,99335,99338,99336)
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Normal Raid Set",90,553,EPIC,99194,99187,99192,99186,99193)
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Flexible Raid Set",90,540,EPIC,99571,99639,99608,99572,99609)
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Raid Finder Set",90,528,EPIC,99057,99059,99066,99058,99067)

	-- Tier 15
	c = AddCollection(DEATHKNIGHT,ALL,TANK,"Tier 15: Plate of the All-Consuming Maw",90);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Heroic Raid Set",90,535,EPIC,96569,96570,96572,96571,96573)
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Normal Raid Set",90,522,EPIC,95225,95226,95228,95227,95229)
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Raid Finder Set",90,502,EPIC,95825,95826,95828,95827,95829)

	c = AddCollection(DEATHKNIGHT,ALL,MELEE,"Tier 15: Battleplate of the All-Consuming Maw",90);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Heroic Raid Set",90,535,EPIC,96574,96576,96575,96577,96578)
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Normal Raid Set",90,522,EPIC,95230,95232,95231,95233,95234)
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Raid Finder Set",90,502,EPIC,95830,95832,95831,95833,95834)
	
	-- Tier 14
	c = AddCollection(DEATHKNIGHT,ALL,TANK,"Tier 14: Plate of the Lost Catacomb",90);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Heroic Raid Set",90,509,EPIC,86920,86922,86918,86921,86919);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Normal Raid Set",90,496,EPIC,85316,85314,85318,85315,85317);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Raid Finder Set",90,483,EPIC,86656,86654,86658,86655,86657);
	
	c = AddCollection(DEATHKNIGHT,ALL,MELEE,"Tier 14: Battleplate of the Lost Catacomb",90);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Heroic Raid Set",90,509,EPIC,86915,86917,86913,86916,86914);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Normal Raid Set",90,496,EPIC,85336,85334,85338,85335,85337);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Raid Finder Set",90,483,EPIC,86676,86674,86678,86675,86677);

	-- Tier 13
	c = AddCollection(DEATHKNIGHT,ALL,TANK,"Tier 13: Necrotic Boneplate Armor",85);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Heroic Raid Set",85,410,EPIC,78697,78751,78663,78678,78716);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Normal Raid Set",85,397,EPIC,77010,77012,77008,77009,77011);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Raid Finder Set",85,384,EPIC,78792,78846,78758,78773,78811);

	c = AddCollection(DEATHKNIGHT,ALL,MELEE,"Tier 13: Necrotic Boneplate Battlegear",85);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Heroic Raid Set",85,410,EPIC,78687,78736,78659,78670,78707);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Normal Raid Set",85,397,EPIC,76976,76978,76974,76975,76977);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Raid Finder Set",85,384,EPIC,78782,78831,78754,78765,78802);
	
	-- Tier 12
	c = AddCollection(DEATHKNIGHT,ALL,TANK,"Tier 12: Elementium Deathplate Armor",85);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Heroic Raid Set",85,391,EPIC,71483,71485,71481,71482,71484);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Normal Raid Set",85,378,EPIC,70954,70951,70955,70953,70952);

	c = AddCollection(DEATHKNIGHT,ALL,MELEE,"Tier 12: Elementium Deathplate Battlegear",85);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Heroic Raid Set",85,391,EPIC,71478,71480,71476,71477,71479);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Normal Raid Set",85,378,EPIC,71060,71062,71058,71059,71061);
	
	-- Tier 11
	c = AddCollection(DEATHKNIGHT,ALL,TANK,"Tier 11: Magma Plated Battlearmor",85);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Heroic Raid Set",85,372,EPIC,65184,65185,65186,65187,65188);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Normal Raid Set",85,359,EPIC,60349,60350,60351,60352,60353);

	c = AddCollection(DEATHKNIGHT,ALL,MELEE,"Tier 11: Magma Plated Battlegear",85);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Heroic Raid Set",85,372,EPIC,65179,65180,65181,65182,65183);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Normal Raid Set",85,359,EPIC,60339,60340,60341,60342,60343);
	
	-- Tier 10
	c = AddCollection(DEATHKNIGHT,ALL,TANK,"Tier 10: Scourgelord's Plate",80);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Heroic Raid Set",80,277,EPIC,51306,51309,51305,51307,51308);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Normal Raid Set",80,264,EPIC,51133,51130,51134,51132,51131);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"Justice Point Set",80,251,EPIC,50855,50853,50857,50856,50854);

	c = AddCollection(DEATHKNIGHT,ALL,MELEE,"Tier 10: Scourgelord's Battlegear",80);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Heroic Raid Set",80,277,EPIC,51312,51314,51310,51311,51313);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Normal Raid Set",80,264,EPIC,51127,51125,51129,51128,51126);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"Justice Point Set",80,251,EPIC,50096,50098,50094,50095,50097);
	
	-- Tier 9
	c = AddCollection(DEATHKNIGHT,ALLIANCE,TANK,"Tier 9: Thassarian's Plate",80);
	AddSet(DEATHKNIGHT,ALLIANCE,c,TANK,"Heroic Raid Set (Triumph)",80,258,EPIC,48545,48543,48547,48546,48544);
	AddSet(DEATHKNIGHT,ALLIANCE,c,TANK,"Normal Raid Set (Conquest)",80,245,EPIC,48540,48542,48538,48539,48541);
	AddSet(DEATHKNIGHT,ALLIANCE,c,TANK,"Justice Point Set",80,232,EPIC,48529,48535,48531,48537,48533);

	c = AddCollection(DEATHKNIGHT,ALLIANCE,MELEE,"Tier 9: Thassarian's Battlegear",80);
	AddSet(DEATHKNIGHT,ALLIANCE,c,MELEE,"Heroic Raid Set (Triumph)",80,258,EPIC,48488,48486,48490,48489,48487);
	AddSet(DEATHKNIGHT,ALLIANCE,c,MELEE,"Normal Raid Set (Conquest)",80,245,EPIC,48483,48485,48481,48482,48484);
	AddSet(DEATHKNIGHT,ALLIANCE,c,MELEE,"Justice Point Set",80,232,EPIC,48472,48478,48474,48480,48476);

	c = AddCollection(DEATHKNIGHT,HORDE,TANK,"Tier 9: Koltira's Plate",80);
	AddSet(DEATHKNIGHT,HORDE,c,TANK,"Heroic Raid Set (Triumph)",80,258,EPIC,48550,48552,48548,48549,48551);
	AddSet(DEATHKNIGHT,HORDE,c,TANK,"Normal Raid Set (Conquest)",80,245,EPIC,48555,48553,48557,48556,48554);
	AddSet(DEATHKNIGHT,HORDE,c,TANK,"Justice Point Set",80,232,EPIC,48560,48562,48558,48559,48561);
	
	c = AddCollection(DEATHKNIGHT,HORDE,MELEE,"Tier 9: Koltira's Battlegear",80);
	AddSet(DEATHKNIGHT,HORDE,c,MELEE,"Heroic Raid Set (Triumph)",80,258,EPIC,48493,48495,48491,48492,48494);
	AddSet(DEATHKNIGHT,HORDE,c,MELEE,"Normal Raid Set (Conquest)",80,245,EPIC,48498,48496,48500,48499,48497);
	AddSet(DEATHKNIGHT,HORDE,c,MELEE,"Justice Point Set",80,232,EPIC,48503,48505,48501,48502,48504);
	
	-- Tier 8
	c = AddCollection(DEATHKNIGHT,ALL,TANK,"Tier 8: Darkruned Plate",80);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"25-Player Raid Set",80,226,EPIC,46120,46122,46118,46119,46121);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"10-Player Raid Set",80,219,EPIC,45336,45339,45335,45337,45338);

	c = AddCollection(DEATHKNIGHT,ALL,MELEE,"Tier 8: Darkruned Battlegear",80);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"25-Player Raid Set",80,226,EPIC,46115,46117,46111,46113,46116);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"10-Player Raid Set",80,219,EPIC,45342,45344,45340,45341,45343);

	-- Tier 7
	c = AddCollection(DEATHKNIGHT,ALL,TANK,"Tier 7: Scourgeborne Plate",80);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"25-Player Raid Set",80,213,EPIC,40565,40568,40559,40563,40567);
	AddSet(DEATHKNIGHT,ALL,c,TANK,"10-Player Raid Set",80,200,EPIC,39625,39627,39623,39624,39626);

	c = AddCollection(DEATHKNIGHT,ALL,MELEE,"Tier 7: Scourgeborne Battlegear",80);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"25-Player Raid Set",80,213,EPIC,40554,40557,40550,40552,40556);
	AddSet(DEATHKNIGHT,ALL,c,MELEE,"10-Player Raid Set",80,200,EPIC,39619,39621,39617,39618,39620);
	
end

local function AddDruidCollections()
	local c = 0
	
	-- Legendaries
	c = AddCollection(DRUID,ALL,ALL,"Legendaries",85);
	AddSet(DRUID,ALL,c,CASTER,"Xing-Ho, Breath of Yulon",90,608,LEGENDARY,102246);
	AddSet(DRUID,ALL,c,MELEE,"Fen-Yu, Fury of Xuen",90,608,LEGENDARY,102248);
	AddSet(DRUID,ALL,c,TANK,"Qian-Le, Courage of Niuzao",90,608,LEGENDARY,102245);
	AddSet(DRUID,ALL,c,HEALER,"Jina-Kang, Kindness of Chi-Ji",90,608,LEGENDARY,102247);
	AddSet(DRUID,ALL,c,CASTER,"Dragonwrath, Tarecgosa's Rest",85,397,LEGENDARY,71086);
	
	-- Tier 16
	c = AddCollection(DRUID,ALL,CASTER,"Tier 16: Regalia of the Shattered Vale",90);
	AddSet(DRUID,ALL,c,CASTER,"Heroic Raid Set",90,566,EPIC,99433,99428,99427,99434,99432)
	AddSet(DRUID,ALL,c,CASTER,"Normal Raid Set",90,553,EPIC,99175,99169,99177,99176,99174)
	AddSet(DRUID,ALL,c,CASTER,"Flexible Raid Set",90,540,EPIC,99618,99621,99620,99619,99617)
	AddSet(DRUID,ALL,c,CASTER,"Raid Finder Set",90,528,EPIC,98995,98998,98997,98996,98994)

	c = AddCollection(DRUID,ALL,MELEE,"Tier 16: Battlegear of the Shattered Vale",90);
	AddSet(DRUID,ALL,c,MELEE,"Heroic Raid Set",90,566,EPIC,99328,99322,99326,99329,99327)
	AddSet(DRUID,ALL,c,MELEE,"Normal Raid Set",90,553,EPIC,99182,99184,99180,99183,99181)
	AddSet(DRUID,ALL,c,MELEE,"Flexible Raid Set",90,540,EPIC,99599,99589,99632,99600,99633)
	AddSet(DRUID,ALL,c,MELEE,"Raid Finder Set",90,528,EPIC,99043,99022,99041,99044,99042)

	c = AddCollection(DRUID,ALL,TANK,"Tier 16: Armor of the Shattered Vale",90);
	AddSet(DRUID,ALL,c,TANK,"Heroic Raid Set",90,566,EPIC,99421,99423,99419,99422,99420)
	AddSet(DRUID,ALL,c,TANK,"Normal Raid Set",90,553,EPIC,99164,99166,99170,99165,99163)
	AddSet(DRUID,ALL,c,TANK,"Flexible Raid Set",90,540,EPIC,99624,99664,99622,99610,99623)
	AddSet(DRUID,ALL,c,TANK,"Raid Finder Set",90,528,EPIC,99001,98978,98999,98981,99000)

	c = AddCollection(DRUID,ALL,HEALER,"Tier 16: Vestments of the Shattered Vale",90);
	AddSet(DRUID,ALL,c,HEALER,"Heroic Raid Set",90,566,EPIC,99436,99431,99430,99429,99435)
	AddSet(DRUID,ALL,c,HEALER,"Normal Raid Set",90,553,EPIC,99178,99173,99172,99171,99185)
	AddSet(DRUID,ALL,c,HEALER,"Flexible Raid Set",90,540,EPIC,99638,99583,99582,99581,99637)
	AddSet(DRUID,ALL,c,HEALER,"Raid Finder Set",90,528,EPIC,99013,99016,99015,99014,99012)
	
	-- Tier 15
	c = AddCollection(DRUID,ALL,CASTER,"Tier 15: Regalia of the Haunted Forest",90);
	AddSet(DRUID,ALL,c,CASTER,"Heroic Raid Set",90,535,EPIC,96590,96589,96591,96593,96592)
	AddSet(DRUID,ALL,c,CASTER,"Normal Raid Set",90,522,EPIC,95246,95245,95247,95249,95248)
	AddSet(DRUID,ALL,c,CASTER,"Raid Finder Set",90,502,EPIC,95846,95845,95847,95849,95848)

	c = AddCollection(DRUID,ALL,MELEE,"Tier 15: Battlegear of the Haunted Forest",90);
	AddSet(DRUID,ALL,c,MELEE,"Heroic Raid Set",90,535,EPIC,96580,96581,96582,96579,96583)
	AddSet(DRUID,ALL,c,MELEE,"Normal Raid Set",90,522,EPIC,95236,95237,95238,95235,95239)
	AddSet(DRUID,ALL,c,MELEE,"Raid Finder Set",90,502,EPIC,95836,95837,95838,95835,95839)

	c = AddCollection(DRUID,ALL,TANK,"Tier 15: Armor of the Haunted Forest",90);
	AddSet(DRUID,ALL,c,TANK,"Heroic Raid Set",90,535,EPIC,96597,96595,96596,96598,96594)
	AddSet(DRUID,ALL,c,TANK,"Normal Raid Set",90,522,EPIC,95253,95251,95252,95254,95250)
	AddSet(DRUID,ALL,c,TANK,"Raid Finder Set",90,502,EPIC,95853,95851,95852,95854,95850)

	c = AddCollection(DRUID,ALL,HEALER,"Tier 15: Vestments of the Haunted Forest",90);
	AddSet(DRUID,ALL,c,HEALER,"Heroic Raid Set",90,535,EPIC,96584,96585,96586,96588,96587)
	AddSet(DRUID,ALL,c,HEALER,"Normal Raid Set",90,522,EPIC,95240,95241,95242,95244,95243)
	AddSet(DRUID,ALL,c,HEALER,"Raid Finder Set",90,502,EPIC,95840,95841,95842,95844,95843)
	
	-- Tier 14
	c = AddCollection(DRUID,ALL,CASTER,"Tier 14: Regalia of the Eternal Blossom",90);
	AddSet(DRUID,ALL,c,CASTER,"Heroic Raid Set",90,509,EPIC,86934,86937,86936,86930,86933)
	AddSet(DRUID,ALL,c,CASTER,"Normal Raid Set",90,496,EPIC,85307,85304,85305,85356,85308);
	AddSet(DRUID,ALL,c,CASTER,"Raid Finder Set",90,483,EPIC,86647,86644,86645,86696,86648);
	
	c = AddCollection(DRUID,ALL,MELEE,"Tier 14: Battlegear of the Eternal Blossom",90);
	AddSet(DRUID,ALL,c,MELEE,"Heroic Raid Set",90,509,EPIC,86925,86927,86923,86926,86924);
	AddSet(DRUID,ALL,c,MELEE,"Normal Raid Set",90,496,EPIC,85311,85309,85313,85310,85312);
	AddSet(DRUID,ALL,c,MELEE,"Raid Finder Set",90,483,EPIC,86651,86649,86653,86650,86652);
	
	c = AddCollection(DRUID,ALL,TANK,"Tier 14: Armor of the Eternal Blossom",90);
	AddSet(DRUID,ALL,c,TANK,"Heroic Raid Set",90,509,EPIC,86940,86942,86938,86941,86939);
	AddSet(DRUID,ALL,c,TANK,"Normal Raid Set",90,496,EPIC,85381,85383,85379,85382,85380);
	AddSet(DRUID,ALL,c,TANK,"Raid Finder Set",90,483,EPIC,86721,86723,86719,86722,86720);
	
	c = AddCollection(DRUID,ALL,HEALER,"Tier 14: Vestments of the Eternal Blossom",90);
	AddSet(DRUID,ALL,c,HEALER,"Heroic Raid Set",90,509,EPIC,86929,86932,86931,86935,86928);
	AddSet(DRUID,ALL,c,HEALER,"Normal Raid Set",90,496,EPIC,85357,85354,85355,85306,85358);
	AddSet(DRUID,ALL,c,HEALER,"Raid Finder Set",90,483,EPIC,86697,86694,86695,86646,86698);
	
	-- Tier 13
	c = AddCollection(DRUID,ALL,CASTER,"Tier 13: Deep Earth Regalia",85);
	AddSet(DRUID,ALL,c,CASTER,"Heroic Raid Set",85,410,EPIC,78696,78744,78662,78676,78714);
	AddSet(DRUID,ALL,c,CASTER,"Normal Raid Set",85,397,EPIC,77019,77022,77021,77018,77020);
	AddSet(DRUID,ALL,c,CASTER,"Raid Finder Set",85,384,EPIC,78791,78839,78757,78771,78809);

	c = AddCollection(DRUID,ALL,MELEE,"Tier 13: Deep Earth Battlegarb",85);
	AddSet(DRUID,ALL,c,MELEE,"Heroic Raid Set",85,410,EPIC,78694,78743,78665,78684,78713);
	AddSet(DRUID,ALL,c,MELEE,"Normal Raid Set",85,397,EPIC,77015,77017,77013,77014,77016);
	AddSet(DRUID,ALL,c,MELEE,"Raid Finder Set",85,384,EPIC,78789,78838,78760,78779,78808);

	c = AddCollection(DRUID,ALL,HEALER,"Tier 13: Deep Earth Vestments",85);
	AddSet(DRUID,ALL,c,HEALER,"Heroic Raid Set",85,410,EPIC,78690,78740,78660,78680,78710);
	AddSet(DRUID,ALL,c,HEALER,"Normal Raid Set",85,397,EPIC,76750,76753,76752,76749,76751);
	AddSet(DRUID,ALL,c,HEALER,"Raid Finder Set",85,384,EPIC,78785,78835,78755,78775,78805);
	
	-- Tier 12
	c = AddCollection(DRUID,ALL,CASTER,"Tier 12: Obsidium Arborweave Regalia",85);
	AddSet(DRUID,ALL,c,CASTER,"Heroic Raid Set",85,391,EPIC,71497,71500,71499,71496,71498);	
	AddSet(DRUID,ALL,c,CASTER,"Normal Raid Set",85,378,EPIC,71108,71111,71110,71107,71109);

	c = AddCollection(DRUID,ALL,MELEE,"Tier 12: Obsidium Arborweave Battlegarb",85);
	AddSet(DRUID,ALL,c,MELEE,"Heroic Raid Set",85,391,EPIC,71488,71490,71486,71487,71489);
	AddSet(DRUID,ALL,c,MELEE,"Normal Raid Set",85,378,EPIC,71098,71101,71100,71097,71099);

	c = AddCollection(DRUID,ALL,HEALER,"Tier 12: Obsidium Arborweave Vestments",85);
	AddSet(DRUID,ALL,c,HEALER,"Heroic Raid Set",85,391,EPIC,71492,71495,71494,71491,71493);
	AddSet(DRUID,ALL,c,HEALER,"Normal Raid Set",85,378,EPIC,71103,71106,71105,71102,71104);
	
	-- Tier 11
	c = AddCollection(DRUID,ALL,CASTER,"Tier 11: Stormrider's Regalia",85);
	AddSet(DRUID,ALL,c,CASTER,"Heroic Raid Set",85,372,EPIC,65199,65200,65201,65202,65203);
	AddSet(DRUID,ALL,c,CASTER,"Normal Raid Set",85,359,EPIC,60282,60284,60283,60285,60281);

	c = AddCollection(DRUID,ALL,MELEE,"Tier 11: Stormrider's Battlegarb",85);
	AddSet(DRUID,ALL,c,MELEE,"Heroic Raid Set",85,372,EPIC,65189,65190,65191,65192,65193);
	AddSet(DRUID,ALL,c,MELEE,"Normal Raid Set",85,359,EPIC,60286,60289,60288,60287,60290);

	c = AddCollection(DRUID,ALL,HEALER,"Tier 11: Stormrider's Vestments",85);
	AddSet(DRUID,ALL,c,HEALER,"Heroic Raid Set",85,372,EPIC,65195,65196,65197,65198,65194);
	AddSet(DRUID,ALL,c,HEALER,"Normal Raid Set",85,359,EPIC,60277,60279,60278,60280,60276);

	-- Tier 10
	c = AddCollection(DRUID,ALL,CASTER,"Tier 10: Lasherweave Regalia",80);
	AddSet(DRUID,ALL,c,CASTER,"Heroic Raid Set",80,277,EPIC,51290,51292,51294,51291,51293);
	AddSet(DRUID,ALL,c,CASTER,"Normal Raid Set",80,264,EPIC,51149,51147,51145,51148,51146);
	AddSet(DRUID,ALL,c,CASTER,"Justice Points Set",80,251,EPIC,50821,50819,50823,50822,50820);

	c = AddCollection(DRUID,ALL,MELEE,"Tier 10: Lasherweave Battlegear",80);
	AddSet(DRUID,ALL,c,MELEE,"Heroic Raid Set",80,277,EPIC,51296,51299,51298,51295,51297);
	AddSet(DRUID,ALL,c,MELEE,"Normal Raid Set",80,264,EPIC,51143,51140,51141,51144,51142);
	AddSet(DRUID,ALL,c,MELEE,"Justice Points Set",80,251,EPIC,50826,50824,50828,50827,50825);

	c = AddCollection(DRUID,ALL,HEALER,"Tier 10: Lasherweave Garb",80);
	AddSet(DRUID,ALL,c,HEALER,"Heroic Raid Set",80,277,EPIC,51302,51304,51300,51301,51303);
	AddSet(DRUID,ALL,c,HEALER,"Normal Raid Set",80,264,EPIC,51137,51135,51139,51138,51136);
	AddSet(DRUID,ALL,c,HEALER,"Justice Points Set",80,251,EPIC,50108,50113,50106,50107,50109);
	
	-- Tier 9
	c = AddCollection(DRUID,ALLIANCE,CASTER,"Tier 9: Malfurion's Regalia",80);
	AddSet(DRUID,ALLIANCE,c,CASTER,"Heroic Raid Set",80,258,EPIC,48171,48168,48169,48172,48170);
	AddSet(DRUID,ALLIANCE,c,CASTER,"Normal Raid Set",80,245,EPIC,48164,48167,48166,48163,48165);
	AddSet(DRUID,ALLIANCE,c,CASTER,"Justice Points Set",80,232,EPIC,48158,48161,48159,48162,48160);

	c = AddCollection(DRUID,ALLIANCE,MELEE,"Tier 9: Malfurion's Battlegear",80);
	AddSet(DRUID,ALLIANCE,c,MELEE,"Heroic Raid Set",80,258,EPIC,48204,48207,48206,48203,48205);
	AddSet(DRUID,ALLIANCE,c,MELEE,"Normal Raid Set",80,245,EPIC,48211,48208,48209,48212,48210);
	AddSet(DRUID,ALLIANCE,c,MELEE,"Justice Points Set",80,232,EPIC,48214,48217,48216,48213,48215);

	c = AddCollection(DRUID,ALLIANCE,HEALER,"Tier 9: Malfurion's Garb",80);
	AddSet(DRUID,ALLIANCE,c,HEALER,"Heroic Raid Set",80,258,EPIC,48141,48138,48139,48142,48140);
	AddSet(DRUID,ALLIANCE,c,HEALER,"Normal Raid Set",80,245,EPIC,48134,48137,48136,48133,48135);
	AddSet(DRUID,ALLIANCE,c,HEALER,"Justice Points Set",80,232,EPIC,48102,48131,48129,48132,48130);
	
	c = AddCollection(DRUID,HORDE,CASTER,"Tier 9: Runetotem's Regalia",80);
	AddSet(DRUID,HORDE,c,CASTER,"Heroic Raid Set",80,258,EPIC,48184,48187,48186,48183,48185);
	AddSet(DRUID,HORDE,c,CASTER,"Normal Raid Set",80,245,EPIC,48181,48178,48179,48182,48180);
	AddSet(DRUID,HORDE,c,CASTER,"Justice Points Set",80,232,EPIC,48174,48177,48176,48173,48175);

	c = AddCollection(DRUID,HORDE,MELEE,"Tier 9: Runetotem's Battlegear",80);
	AddSet(DRUID,HORDE,c,MELEE,"Heroic Raid Set",80,258,EPIC,48201,48198,48199,48202,48200);
	AddSet(DRUID,HORDE,c,MELEE,"Normal Raid Set",80,245,EPIC,48194,48197,48196,48193,48195);
	AddSet(DRUID,HORDE,c,MELEE,"Justice Points Set",80,232,EPIC,48188,48191,48189,48192,48190);

	c = AddCollection(DRUID,HORDE,HEALER,"Tier 9: Runetotem's Garb",80);
	AddSet(DRUID,HORDE,c,HEALER,"Heroic Raid Set",80,258,EPIC,48144,48147,48146,48143,48145);
	AddSet(DRUID,HORDE,c,HEALER,"Normal Raid Set",80,245,EPIC,48151,48148,48149,48152,48150);
	AddSet(DRUID,HORDE,c,HEALER,"Justice Points Set",80,232,EPIC,48154,48157,48156,48153,48155);

	-- Tier 8
	c = AddCollection(DRUID,ALL,CASTER,"Tier 8: Nightsong Regalia",80);
	AddSet(DRUID,ALL,c,CASTER,"25-Player Raid Set",80,226,EPIC,46191,46196,46194,46189,46192);
	AddSet(DRUID,ALL,c,CASTER,"10-Player Raid Set",80,219,EPIC,46313,45352,45354,45351,45353);
	
	c = AddCollection(DRUID,ALL,MELEE,"Tier 8: Nightsong Battlegear",80);
	AddSet(DRUID,ALL,c,MELEE,"25-Player Raid Set",80,226,EPIC,46161,46157,46159,46158,46160);
	AddSet(DRUID,ALL,c,MELEE,"10-Player Raid Set",80,219,EPIC,45356,45359,45358,45355,45357);

	c = AddCollection(DRUID,ALL,HEALER,"Tier 8: Nightsong Garb",80);
	AddSet(DRUID,ALL,c,HEALER,"25-Player Raid Set",80,226,EPIC,46184,46187,46186,46183,46185);
	AddSet(DRUID,ALL,c,HEALER,"10-Player Raid Set",80,219,EPIC,45346,45349,45348,45345,45347);
	
	-- Tier 7
	c = AddCollection(DRUID,ALL,CASTER,"Tier 7: Dreamwalker Regalia",80);
	AddSet(DRUID,ALL,c,CASTER,"25-Player Raid Set",80,213,EPIC,40467,40470,40469,40466,40468);	
	AddSet(DRUID,ALL,c,CASTER,"10-Player Raid Set",80,200,EPIC,39545,39548,39547,39544,39546);
	
	c = AddCollection(DRUID,ALL,MELEE,"Tier 7: Dreamwalker Battlegear",80);
	AddSet(DRUID,ALL,c,MELEE,"25-Player Raid Set",80,213,EPIC,40473,40494,40471,40472,40493);
	AddSet(DRUID,ALL,c,MELEE,"10-Player Raid Set",80,200,EPIC,39553,39556,39554,39557,39555);

	c = AddCollection(DRUID,ALL,HEALER,"Tier 7: Dreamwalker Garb",80);
	AddSet(DRUID,ALL,c,HEALER,"25-Player Raid Set",80,213,EPIC,40461,40465,40463,40460,40462);
	AddSet(DRUID,ALL,c,HEALER,"10-Player Raid Set",80,200,EPIC,39531,39542,39538,39543,39539);
	
	-- Tier 6
	c = AddCollection(DRUID,ALL,ALL,"Tier 6: Thunderheart Collection",70)
	AddSet(DRUID,ALL,c,MELEE,"Thunderheart Harness",70,146,EPIC,31039,31048,31042,34444,31034,34556,31044,34573)
	AddSet(DRUID,ALL,c,HEALER,"Thunderheart Raiment",70,146,EPIC,31037,31047,31041,34445,31032,34554,31045,34571)
	AddSet(DRUID,ALL,c,CASTER,"Thunderheart Regalia",70,146,EPIC,31040,31049,31043,34446,31035,34555,31046,34572)
	
	-- Tier 5
	c = AddCollection(DRUID,ALL,ALL,"Tier 5: Nordrassil Collection",70)
	AddSet(DRUID,ALL,c,MELEE,"Nordrassil Harness",70,133,EPIC,30228,30230,30222,30223,30229)
	AddSet(DRUID,ALL,c,HEALER,"Nordrassil Raiment",70,133,EPIC,30219,30221,30216,30217,30220)
	AddSet(DRUID,ALL,c,CASTER,"Nordrassil Regalia",70,133,EPIC,30233,30235,30231,30232,30234)
	
	-- Tier 4
	c = AddCollection(DRUID,ALL,ALL,"Tier 4: Malorne Collection",70)
	AddSet(DRUID,ALL,c,MELEE,"Malorne Harness",70,120,EPIC,29098,29100,29096,29097,29099)
	AddSet(DRUID,ALL,c,HEALER,"Malorne Raiment",70,120,EPIC,29086,29089,29087,29090,29088)
	AddSet(DRUID,ALL,c,CASTER,"Malorne Regalia",70,120,EPIC,29093,29095,29091,29092,29094)
	
	-- Tier 3
	c = AddCollection(DRUID,ALL,ALL,"Tier 3: Dreamwalker Collection",60)
	AddSet(DRUID,ALL,c,ALL,"Dreamwalker Raiment",60,86,EPIC,22490,22491,22488,22495,22493,22494,22489,22492,23064)
	
	-- Tier 2
	c = AddCollection(DRUID,ALL,ALL,"Tier 2: Stormrage Collection",60)
	AddSet(DRUID,ALL,c,ALL,"Stormrage Raiment",60,76,EPIC,16900,16902,16897,16904,16899,16903,16901,16898)
	
	-- Tier 1
	c = AddCollection(DRUID,ALL,ALL,"Tier 1: Cenarion Collection",60)
	AddSet(DRUID,ALL,c,ALL,"Cenarion Raiment",60,66,EPIC,16834,16836,16833,16830,16831,16828,16835,16829)

end



local function AddHunterCollections()
	local c = 0
	
	-- Legendaries
	c = AddCollection(HUNTER,ALL,RANGED,"Legendaries",90);
	AddSet(HUNTER,ALL,c,RANGED,"Fen-Yu, Fury of Xuen",90,608,LEGENDARY,102248);

	-- Tier 16
	c = AddCollection(HUNTER,ALL,RANGED,"Tier 16: Battlegear of the Unblinking Vigil",90);
	AddSet(HUNTER,ALL,c,RANGED,"Heroic Raid Set",90,566,EPIC,99402,99404,99405,99403,99406)
	AddSet(HUNTER,ALL,c,RANGED,"Normal Raid Set",90,553,EPIC,99157,99159,99167,99158,99168)
	AddSet(HUNTER,ALL,c,RANGED,"Flexible Raid Set",90,540,EPIC,99660,99574,99577,99573,99578)
	AddSet(HUNTER,ALL,c,RANGED,"Raid Finder Set",90,528,EPIC,99080,99082,99085,99081,99086)
	-- Tier 15
	c = AddCollection(HUNTER,ALL,RANGED,"Tier 15: Battlegear of the Saurok Stalker",90);
	AddSet(HUNTER,ALL,c,RANGED,"Heroic Raid Set",90,535,EPIC,96627,96628,96629,96630,96626)
	AddSet(HUNTER,ALL,c,RANGED,"Normal Raid Set",90,522,EPIC,95256,95257,95258,95259,95255)
	AddSet(HUNTER,ALL,c,RANGED,"Raid Finder Set",90,502,EPIC,95883,95884,95885,95886,95882)
	-- Tier 14
	c = AddCollection(HUNTER,ALL,RANGED,"Tier 14: Yaungol Slayer Battlegear",90);
	AddSet(HUNTER,ALL,c,RANGED,"Heroic Raid Set",90,509,EPIC,87004,87006,87002,87005,87003)
	AddSet(HUNTER,ALL,c,RANGED,"Normal Raid Set",90,496,EPIC,85296,85294,85298,85295,85297)
	AddSet(HUNTER,ALL,c,RANGED,"Raid Finder Set",90,483,EPIC,86636,86634,86638,86635,86637)
	-- Tier 13
	c = AddCollection(HUNTER,ALL,RANGED,"Tier 13: Wyrmstalker Battlegear",85);
	AddSet(HUNTER,ALL,c,RANGED,"Heroic Raid Set",85,410,EPIC,78698,78737,78661,78674,78709)
	AddSet(HUNTER,ALL,c,RANGED,"Normal Raid Set",85,397,EPIC,77030,77032,77028,77029,77031)
	AddSet(HUNTER,ALL,c,RANGED,"Raid Finder Set",85,384,EPIC,78793,78832,78756,78769,78804)
	-- Tier 12
	c = AddCollection(HUNTER,ALL,RANGED,"Tier 12: Flamewalker's Battlegear",85);
	AddSet(HUNTER,ALL,c,RANGED,"Heroic Raid Set",85,391,EPIC,71503,71505,71501,71502,71504)
	AddSet(HUNTER,ALL,c,RANGED,"Normal Raid Set",85,378,EPIC,71051,71053,71054,71050,71052)
	-- Tier 11
	c = AddCollection(HUNTER,ALL,RANGED,"Tier 11: Lightning Charged Battlegear",85);
	AddSet(HUNTER,ALL,c,RANGED,"Heroic Raid Set",85,372,EPIC,65204,65205,65206,65207,65208)
	AddSet(HUNTER,ALL,c,RANGED,"Normal Raid Set",85,359,EPIC,60303,60304,60305,60306,60307)
	-- Tier 10
	c = AddCollection(HUNTER,ALL,RANGED,"Tier 10: Ahn'Kahar Blood Hunter's Battlegear",80)
	AddSet(HUNTER,ALL,c,RANGED,"Heroic Raid Set",80,277,EPIC,51286,51288,51289,51285,51287)
	AddSet(HUNTER,ALL,c,RANGED,"Normal Raid Set",80,264,EPIC,51153,51151,51150,51154,51152)
	AddSet(HUNTER,ALL,c,RANGED,"Justice Points Set",80,251,EPIC,50115,50117,50118,50114,50116)
	-- Tier 9
	c = AddCollection(HUNTER,ALLIANCE,RANGED,"Tier 9: Windrunner's Battlegear",80)
	AddSet(HUNTER,ALLIANCE,c,RANGED,"Heroic Raid Set",80,258,EPIC,48262,48260,48264,48263,48261)
	AddSet(HUNTER,ALLIANCE,c,RANGED,"Normal Raid Set",80,245,EPIC,48257,48259,48255,48256,48258)
	AddSet(HUNTER,ALLIANCE,c,RANGED,"Justice Points Set",80,232,EPIC,48250,48253,48251,48254,48252)
	c = AddCollection(HUNTER,HORDE,RANGED,"Tier 9: Windrunner's Pursuit",80)
	AddSet(HUNTER,HORDE,c,RANGED,"Heroic Raid Set",80,258,EPIC,48267,48269,48265,48266,48268)
	AddSet(HUNTER,HORDE,c,RANGED,"Normal Raid Set",80,245,EPIC,48272,48270,48274,48273,48271)
	AddSet(HUNTER,HORDE,c,RANGED,"Justice Points Set",80,232,EPIC,48277,48279,48275,48276,48278)
	-- Tier 8
	c = AddCollection(HUNTER,ALL,RANGED,"Tier 8: Scourgestalker Battlegear",80)
	AddSet(HUNTER,ALL,c,RANGED,"25-Player Raid Set",80,226,EPIC,46143,46145,46141,46142,46144)
	AddSet(HUNTER,ALL,c,RANGED,"10-Player Raid Set",80,219,EPIC,45361,45363,45364,45360,45362)
	-- Tier 7
	c = AddCollection(HUNTER,ALL,RANGED,"Tier 7: Cryptstalker Battlegear",80)
	AddSet(HUNTER,ALL,c,RANGED,"25-Player Raid Set",80,213,EPIC,40505,40507,40503,40504,40506)
	AddSet(HUNTER,ALL,c,RANGED,"10-Player Raid Set",80,200,EPIC,39578,39581,39579,39582,39580)
	-- Tier 6
	c = AddCollection(HUNTER,ALL,RANGED,"Tier 6: Gronnstalker's Collection",70)
	AddSet(HUNTER,ALL,c,RANGED,"Gronnstalker's Armor",70,146,EPIC,31003,31006,31004,34443,31001,34549,31005,34570)
	-- Tier 5
	c = AddCollection(HUNTER,ALL,RANGED,"Tier 5: Rift Stalker Collection",70)
	AddSet(HUNTER,ALL,c,RANGED,"Rift Stalker Armor",70,133,EPIC,30141,30143,30139,30140,30142)
	-- Tier 4
	c = AddCollection(HUNTER,ALL,RANGED,"Tier 4: Demon Stalker Collection",70)
	AddSet(HUNTER,ALL,c,RANGED,"Demon Stalker Armor",70,120,EPIC,29081,29084,29082,29085,29083)
	-- Tier 3
	c = AddCollection(HUNTER,ALL,RANGED,"Tier 3: Cryptstalker Collection",60)
	AddSet(HUNTER,ALL,c,RANGED,"Cryptstalker Armor",60,86,EPIC,22438,22439,22436,22443,22441,22442,22437,22440,23067)
	-- Tier 2
	c = AddCollection(HUNTER,ALL,RANGED,"Tier 2: Dragonstalker Collection",60)
	AddSet(HUNTER,ALL,c,RANGED,"Dragonstalker Armor",60,76,EPIC,16939,16937,16942,16935,16940,16936,16938,16941)
	-- Tier 1
	c = AddCollection(HUNTER,ALL,RANGED,"Tier 1: Giantstalker Collection",60)
	AddSet(HUNTER,ALL,c,RANGED,"Giantstalker Armor",60,66,EPIC,16846,16848,16845,16850,16852,16851,16847,16849)
	
end

local function AddMageCollections()
	local c = 0
	
  -- Legendaries
	c = AddCollection(MAGE,ALL,CASTER,"Legendaries",90);
	AddSet(MAGE,ALL,c,CASTER,"Xing-Ho, Breath of Yulon",90,608,LEGENDARY,102246);
	AddSet(MAGE,ALL,c,CASTER,"Dragonwrath, Tarecgosa's Rest",85,397,LEGENDARY,71086);
	
	-- Tier 16
	c = AddCollection(MAGE,ALL,CASTER,"Tier 16: Chronomancer Regalia",90);
	AddSet(MAGE,ALL,c,CASTER,"Heroic Raid Set",90,566,EPIC,99398,99401,99400,99399,99397)
	AddSet(MAGE,ALL,c,CASTER,"Normal Raid Set",90,553,EPIC,99161,99153,99152,99162,99160)
	AddSet(MAGE,ALL,c,CASTER,"Flexible Raid Set",90,540,EPIC,99576,99659,99658,99657,99575)
	AddSet(MAGE,ALL,c,CASTER,"Raid Finder Set",90,528,EPIC,99084,99079,99078,99077,99083)
	-- Tier 15
	c = AddCollection(MAGE,ALL,CASTER,"Tier 15: Regalia of the Chromatic Hydra",90)
	AddSet(MAGE,ALL,c,CASTER,"Heroic Raid Set",90,535,EPIC,96634,96635,96636,96638,96637)
	AddSet(MAGE,ALL,c,CASTER,"Normal Raid Set",90,522,EPIC,95260,95261,95262,95264,95263)
	AddSet(MAGE,ALL,c,CASTER,"Raid Finder Set",90,502,EPIC,95890,95891,95892,95894,95893)
	-- Tier 14
	c = AddCollection(MAGE,ALL,CASTER,"Tier 14: Regalia of the Burning Scroll",90)
	AddSet(MAGE,ALL,c,CASTER,"Heroic Raid Set",90,509,EPIC,87008,87011,87010,87009,87007)
	AddSet(MAGE,ALL,c,CASTER,"Normal Raid Set",90,496,EPIC,85377,85374,85375,85376,85378)
	AddSet(MAGE,ALL,c,CASTER,"Raid Finder Set",90,483,EPIC,86717,86714,86715,86716,86718)
	-- Tier 13
	c = AddCollection(MAGE,ALL,CASTER,"Tier 13: Time Lord's Regalia",85)
	AddSet(MAGE,ALL,c,CASTER,"Heroic Raid Set",85,410,EPIC,78701,78748,78729,78671,78720)
	AddSet(MAGE,ALL,c,CASTER,"Normal Raid Set",85,397,EPIC,76213,76216,76215,76212,76214)
	AddSet(MAGE,ALL,c,CASTER,"Raid Finder Set",85,384,EPIC,78796,78843,78824,78766,78815)
	-- Tier 12
	c = AddCollection(MAGE,ALL,CASTER,"Tier 12: Fire Hawk Robes of Conflagration",85)
	AddSet(MAGE,ALL,c,CASTER,"Heroic Raid Set",85,391,EPIC,71508,71511,71510,71507,71509)
	AddSet(MAGE,ALL,c,CASTER,"Normal Raid Set",85,378,EPIC,71287,71290,71289,71286,71288)
	-- Tier 11
	c = AddCollection(MAGE,ALL,CASTER,"Tier 11: Firelord's Vestments",85)
	AddSet(MAGE,ALL,c,CASTER,"Heroic Raid Set",85,372,EPIC,65209,65210,65211,65212,65213)
	AddSet(MAGE,ALL,c,CASTER,"Normal Raid Set",85,359,EPIC,60243,60244,60245,60246,60247)
	-- Tier 10
	c = AddCollection(MAGE,ALL,CASTER,"Tier 10: Bloodmage's Regalia",80)
	AddSet(MAGE,ALL,c,CASTER,"Heroic Raid Set",80,277,EPIC,51281,51284,51283,51280,51282)
	AddSet(MAGE,ALL,c,CASTER,"Normal Raid Set",80,264,EPIC,51158,51155,51156,51159,51157)
	AddSet(MAGE,ALL,c,CASTER,"Justice Points Set",80,251,EPIC,50276,50279,50278,50275,50277)
	-- Tier 9
	c = AddCollection(MAGE,ALLIANCE,CASTER,"Tier 9: Khadgar's Regalia",80)
	AddSet(MAGE,ALLIANCE,c,CASTER,"Heroic Raid Set",80,258,EPIC,47761,47758,47759,47762,47760)
	AddSet(MAGE,ALLIANCE,c,CASTER,"Normal Raid Set",80,245,EPIC,47754,47757,47756,47753,47755)
	AddSet(MAGE,ALLIANCE,c,CASTER,"Justice Points Set",80,232,EPIC,47748,47751,47749,47752,47750)
	c = AddCollection(MAGE,HORDE,CASTER,"Tier 9: Sunstrider's Regalia",80)
	AddSet(MAGE,HORDE,c,CASTER,"Heroic Raid Set",80,258,EPIC,47764,47767,47766,47763,47765)
	AddSet(MAGE,HORDE,c,CASTER,"Normal Raid Set",80,245,EPIC,47771,47768,47769,47772,47770)
	AddSet(MAGE,HORDE,c,CASTER,"Justice Points Set",80,232,EPIC,47774,47777,47776,47773,47775)
	-- Tier 8
	c = AddCollection(MAGE,ALL,CASTER,"Tier 8: Kirin Tor Garb",80)
	AddSet(MAGE,ALL,c,CASTER,"25-Player Raid Set",80,226,EPIC,46129,46134,46130,46132,46133)
	AddSet(MAGE,ALL,c,CASTER,"10-Player Raid Set",80,219,EPIC,45365,45369,45368,46131,45367)
	-- Tier 7
	c = AddCollection(MAGE,ALL,CASTER,"Tier 7: Frostfire Garb",80)
	AddSet(MAGE,ALL,c,CASTER,"25-Player Raid Set",80,213,EPIC,40416,40419,40418,40415,40417)
	AddSet(MAGE,ALL,c,CASTER,"10-Player Raid Set",80,200,EPIC,39491,39494,39492,39495,39493)
	-- Tier 6
	c = AddCollection(MAGE,ALL,CASTER,"Tier 6: Tempest Collection",70)
	AddSet(MAGE,ALL,c,CASTER,"Tempest Regalia",70,146,EPIC,31056,31059,31057,34447,31055,34557,31058,34574)
	-- Tier 5
	c = AddCollection(MAGE,ALL,CASTER,"Tier 5: Tirisfal Collection",70)
	AddSet(MAGE,ALL,c,CASTER,"Tirisfal Regalia",70,133,EPIC,30206,30210,30196,30205,30207)
	-- Tier 4
	c = AddCollection(MAGE,ALL,CASTER,"Tier 4: Aldor Collection",70)
	AddSet(MAGE,ALL,c,CASTER,"Aldor Regalia",70,120,EPIC,29076,29079,29077,29080,29078)
	-- Tier 3
	c = AddCollection(MAGE,ALL,CASTER,"Tier 3: Frostfire Collection",60)
	AddSet(MAGE,ALL,c,CASTER,"Frostfire Regalia",60,86,EPIC,22498,22499,22496,22503,22501,22502,22497,22500,23062)
	-- Tier 2
	c = AddCollection(MAGE,ALL,CASTER,"Tier 2: Netherwind Collection",60)
	AddSet(MAGE,ALL,c,CASTER,"Netherwind Regalia",60,76,EPIC,16914,16917,16916,16918,16913,16818,16915,16912)
	-- Tier 1
	c = AddCollection(MAGE,ALL,CASTER,"Tier 1: Arcanist Collection",60)
	AddSet(MAGE,ALL,c,CASTER,"Arcanist Regalia",60,66,EPIC,16795,16797,16798,16799,16801,16802,16796,16800)
	
end


local function AddMonkCollections()
	local c = 0
	
	-- Legendaries
	c = AddCollection(MONK,ALL,ALL,"Legendaries",90);
	AddSet(MONK,ALL,c,TANK,"Qian-Le, Courage of Niuzao",90,608,LEGENDARY,102245);
	AddSet(MONK,ALL,c,MELEE,"Fen-Yu, Fury of Xuen",90,608,LEGENDARY,102248);
	AddSet(MONK,ALL,c,HEALER,"Jina-Kang, Kindness of Chi-Ji",90,608,LEGENDARY,102247);

	-- Tier 16
	c = AddCollection(MONK,ALL,TANK,"Tier 16: Armor of Seven Sacred Seals",90);
	AddSet(MONK,ALL,c,TANK,"Heroic Raid Set",90,566,EPIC,99384,99386,99382,99385,99383)
	AddSet(MONK,ALL,c,TANK,"Normal Raid Set",90,553,EPIC,99142,99144,99140,99143,99141)
	AddSet(MONK,ALL,c,TANK,"Flexible Raid Set",90,540,EPIC,99607,99565,99643,99606,99644)
	AddSet(MONK,ALL,c,TANK,"Raid Finder Set",90,528,EPIC,99065,99051,99063,99050,99064)

	c = AddCollection(MONK,ALL,MELEE,"Tier 16: Battlegear of Seven Sacred Seals",90);
	AddSet(MONK,ALL,c,MELEE,"Heroic Raid Set",90,566,EPIC,99393,99395,99396,99394,99392)
	AddSet(MONK,ALL,c,MELEE,"Normal Raid Set",90,553,EPIC,99156,99146,99154,99145,99155)
	AddSet(MONK,ALL,c,MELEE,"Flexible Raid Set",90,540,EPIC,99653,99655,99555,99654,99556)
	AddSet(MONK,ALL,c,MELEE,"Raid Finder Set",90,528,EPIC,99073,99075,99071,99074,99072)

	c = AddCollection(MONK,ALL,HEALER,"Tier 16: Vestments of Seven Sacred Seals",90);
	AddSet(MONK,ALL,c,HEALER,"Heroic Raid Set",90,566,EPIC,99389,99381,99391,99390,99388)
	AddSet(MONK,ALL,c,HEALER,"Normal Raid Set",90,553,EPIC,99148,99151,99150,99149,99147)
	AddSet(MONK,ALL,c,HEALER,"Flexible Raid Set",90,540,EPIC,99553,99642,99641,99554,99552)
	AddSet(MONK,ALL,c,HEALER,"Raid Finder Set",90,528,EPIC,99069,99062,99061,99070,99068)

	-- Tier 15
	c = AddCollection(MONK,ALL,TANK,"Tier 15: Fire-Charm Armor",90);
	AddSet(MONK,ALL,c,TANK,"Heroic Raid Set",90,535,EPIC,96649,96651,96650,96652,96653)
	AddSet(MONK,ALL,c,TANK,"Normal Raid Set",90,522,EPIC,95275,95277,95276,95278,95279)
	AddSet(MONK,ALL,c,TANK,"Raid Finder Set",90,502,EPIC,95905,95907,95906,95908,95909)

	c = AddCollection(MONK,ALL,MELEE,"Tier 15: Fire-Charm Battlegear",90);
	AddSet(MONK,ALL,c,MELEE,"Heroic Raid Set",90,535,EPIC,96640,96641,96642,96643,96639)
	AddSet(MONK,ALL,c,MELEE,"Normal Raid Set",90,522,EPIC,95266,95267,95268,95269,95265)
	AddSet(MONK,ALL,c,MELEE,"Raid Finder Set",90,502,EPIC,95896,95897,95898,95899,95895)

	c = AddCollection(MONK,ALL,HEALER,"Tier 15: Fire-Charm Vestments",90);
	AddSet(MONK,ALL,c,HEALER,"Heroic Raid Set",90,535,EPIC,96644,96645,96646,96648,96647)
	AddSet(MONK,ALL,c,HEALER,"Normal Raid Set",90,522,EPIC,95270,95271,95272,95274,95273)
	AddSet(MONK,ALL,c,HEALER,"Raid Finder Set",90,502,EPIC,95900,95901,95902,95904,95903)
	
	-- Tier 14
	c = AddCollection(MONK,ALL,TANK,"Tier 14: Armor of the Red Crane",90);
	AddSet(MONK,ALL,c,TANK,"Heroic Raid Set",90,509,EPIC,87096,87098,87094,87097,87095);
	AddSet(MONK,ALL,c,TANK,"Normal Raid Set",90,496,EPIC,85386,85384,85388,85385,85387);
	AddSet(MONK,ALL,c,TANK,"Raid Finder Set",90,483,EPIC,86726,86724,86728,86725,86727);

	c = AddCollection(MONK,ALL,MELEE,"Tier 14: Vestments of the Red Crane",90);
	AddSet(MONK,ALL,c,MELEE,"Heroic Raid Set",90,509,EPIC,87090,87093,87092,87091,87089);
	AddSet(MONK,ALL,c,MELEE,"Normal Raid Set",90,496,EPIC,85390,85393,85392,85391,85389);
	AddSet(MONK,ALL,c,MELEE,"Raid Finder Set",90,483,EPIC,86730,86733,86732,86731,86729);

	c = AddCollection(MONK,ALL,HEALER,"Tier 14: Battlegear of the Red Crane",90);
	AddSet(MONK,ALL,c,HEALER,"Heroic Raid Set",90,509,EPIC,87086,87088,87084,87087,87085);
	AddSet(MONK,ALL,c,HEALER,"Normal Raid Set",90,496,EPIC,85396,85398,85394,85397,85395);
	AddSet(MONK,ALL,c,HEALER,"Raid Finder Set",90,483,EPIC,86736,86738,86734,86737,86735);
end

local function AddPaladinCollections()
	local c = 0
	
	-- Legendaries
	c = AddCollection(PALADIN,ALL,ALL,"Legendaries",90);
	AddSet(PALADIN,ALL,c,MELEE,"Gong-Lu, Strength of Xuen",90,608,LEGENDARY,102249);
	AddSet(PALADIN,ALL,c,TANK,"Qian-Ying, Fortitude of Niuzao",90,608,LEGENDARY,102250);
	AddSet(PALADIN,ALL,c,HEALER,"Jina-Kang, Kindness of Chi-Ji",90,608,LEGENDARY,102247);

	-- Tier 16
	c = AddCollection(PALADIN,ALL,HEALER,"Tier 16: Vestments of Winged Triumph",90);
	AddSet(PALADIN,ALL,c,HEALER,"Heroic Raid Set",90,566,EPIC,99376,99378,99374,99377,99375)
	AddSet(PALADIN,ALL,c,HEALER,"Normal Raid Set",90,553,EPIC,99135,99125,99133,99124,99134)
	AddSet(PALADIN,ALL,c,HEALER,"Flexible Raid Set",90,540,EPIC,99665,99656,99626,99666,99648)
	AddSet(PALADIN,ALL,c,HEALER,"Raid Finder Set",90,528,EPIC,98979,99076,99003,98980,98982)
	
	c = AddCollection(PALADIN,ALL,TANK,"Tier 16: Armor of Winged Triumph",90);
	AddSet(PALADIN,ALL,c,TANK,"Heroic Raid Set",90,566,EPIC,99370,99364,99368,99371,99369)
	AddSet(PALADIN,ALL,c,TANK,"Normal Raid Set",90,553,EPIC,99128,99130,99126,99129,99127)
	AddSet(PALADIN,ALL,c,TANK,"Flexible Raid Set",90,540,EPIC,99596,99594,99598,99593,99595)
	AddSet(PALADIN,ALL,c,TANK,"Raid Finder Set",90,528,EPIC,99029,99027,99031,99026,99028)

	c = AddCollection(PALADIN,ALL,MELEE,"Tier 16: Battlegear of Winged Triupmh",90);
	AddSet(PALADIN,ALL,c,MELEE,"Heroic Raid Set",90,566,EPIC,99379,99373,99387,99372,99380)
	AddSet(PALADIN,ALL,c,MELEE,"Normal Raid Set",90,553,EPIC,99138,99132,99136,99139,99137)
	AddSet(PALADIN,ALL,c,MELEE,"Flexible Raid Set",90,540,EPIC,99651,99662,99566,99661,99625)
	AddSet(PALADIN,ALL,c,MELEE,"Raid Finder Set",90,528,EPIC,98985,98987,99052,98986,99002)

	-- Tier 15
	c = AddCollection(PALADIN,ALL,HEALER,"Tier 15: Vestments of the Lightning Emperor",90);
	AddSet(PALADIN,ALL,c,HEALER,"Heroic Raid Set",90,535,EPIC,96659,96660,96662,96661,96663)
	AddSet(PALADIN,ALL,c,HEALER,"Normal Raid Set",90,522,EPIC,95285,95286,95288,95287,95289)
	AddSet(PALADIN,ALL,c,HEALER,"Raid Finder Set",90,502,EPIC,95915,95916,95918,95917,95919)
	
	c = AddCollection(PALADIN,ALL,TANK,"Tier 15: Armor of the Lightning Emperor",90);
	AddSet(PALADIN,ALL,c,TANK,"Heroic Raid Set",90,535,EPIC,96664,96666,96665,96667,96668)
	AddSet(PALADIN,ALL,c,TANK,"Normal Raid Set",90,522,EPIC,95290,95292,95291,95293,95294)
	AddSet(PALADIN,ALL,c,TANK,"Raid Finder Set",90,502,EPIC,95920,95922,95921,95923,95924)

	c = AddCollection(PALADIN,ALL,MELEE,"Tier 15: Battlegear of the Lightning Emperor",90);
	AddSet(PALADIN,ALL,c,MELEE,"Heroic Raid Set",90,535,EPIC,96654,96655,96656,96657,96658)
	AddSet(PALADIN,ALL,c,MELEE,"Normal Raid Set",90,522,EPIC,95280,95281,95282,95283,95284)
	AddSet(PALADIN,ALL,c,MELEE,"Raid Finder Set",90,502,EPIC,95910,95911,95912,95913,95914)
	
	-- Tier 14
	c = AddCollection(PALADIN,ALL,HEALER,"Tier 14: White Tiger Vestments",90);
	AddSet(PALADIN,ALL,c,HEALER,"Heroic Raid Set",90,509,EPIC,87106,87108,87104,87105,87107);
	AddSet(PALADIN,ALL,c,HEALER,"Normal Raid Set",90,496,EPIC,85346,85344,85348,85347,85345);
	AddSet(PALADIN,ALL,c,HEALER,"Raid Finder Set",90,483,EPIC,86686,86684,86688,86687,86685);

	c = AddCollection(PALADIN,ALL,TANK,"Tier 14: White Tiger Plate",90);
	AddSet(PALADIN,ALL,c,TANK,"Heroic Raid Set",90,509,EPIC,87111,87113,87109,87112,87110)
	AddSet(PALADIN,ALL,c,TANK,"Normal Raid Set",90,496,EPIC,85321,85319,85323,85320,85322)
	AddSet(PALADIN,ALL,c,TANK,"Raid Finder Set",90,483,EPIC,86661,86659,86663,86660,86662)

	c = AddCollection(PALADIN,ALL,MELEE,"Tier 14: White Tiger Battlegear",90);
	AddSet(PALADIN,ALL,c,MELEE,"Heroic Raid Set",90,509,EPIC,87101,87103,87099,87102,87100)	
	AddSet(PALADIN,ALL,c,MELEE,"Normal Raid Set",90,496,EPIC,85341,85339,85343,85340,85342)
	AddSet(PALADIN,ALL,c,MELEE,"Raid Finder Set",90,483,EPIC,86681,86679,86683,86680,86682)
	
	-- Tier 13
	c = AddCollection(PALADIN,ALL,HEALER,"Tier 13: Regalia of Radiant Glory",85);
	AddSet(PALADIN,ALL,c,HEALER,"Heroic Raid Set",85,410,EPIC,78692,78746,78726,78673,78717);
	AddSet(PALADIN,ALL,c,HEALER,"Normal Raid Set",85,397,EPIC,76767,76769,76765,76766,76768);
	AddSet(PALADIN,ALL,c,HEALER,"Raid Finder Set",85,394,EPIC,78787,78841,78821,78768,78812);

	c = AddCollection(PALADIN,ALL,TANK,"Tier 13: Armor of Radiant Glory",85);
	AddSet(PALADIN,ALL,c,TANK,"Heroic Raid Set",85,410,EPIC,78695,78745,78732,78677,78715);
	AddSet(PALADIN,ALL,c,TANK,"Normal Raid Set",85,397,EPIC,77005,77007,77003,77004,77006);
	AddSet(PALADIN,ALL,c,TANK,"Raid Finder Set",85,394,EPIC,78790,78840,78827,78772,78810);

	c = AddCollection(PALADIN,ALL,MELEE,"Tier 13: Battleplate of Radiant Glory",85);
	AddSet(PALADIN,ALL,c,MELEE,"Heroic Raid Set",85,410,EPIC,78693,78742,78727,78675,78712);
	AddSet(PALADIN,ALL,c,MELEE,"Normal Raid Set",85,397,EPIC,76876,76878,76874,76875,76877);
	AddSet(PALADIN,ALL,c,MELEE,"Raid Finder Set",85,384,EPIC,78788,78837,78822,78770,78807);
	
	-- Tier 12
	c = AddCollection(PALADIN,ALL,HEALER,"Tier 12: Regalia of Immolation",85);
	AddSet(PALADIN,ALL,c,HEALER,"Heroic Raid Set",85,391,EPIC,71519,71521,71517,71518,71520);
	AddSet(PALADIN,ALL,c,HEALER,"Normal Raid Set",85,378,EPIC,71093,71095,71091,71092,71094);

	c = AddCollection(PALADIN,ALL,TANK,"Tier 12: Armor of Immolation",85);
	AddSet(PALADIN,ALL,c,TANK,"Heroic Raid Set",85,391,EPIC,71524,71526,71522,71523,71525);
	AddSet(PALADIN,ALL,c,TANK,"Normal Raid Set",85,378,EPIC,70948,70946,70950,70949,70947);

	c = AddCollection(PALADIN,ALL,MELEE,"Tier 12: Battleplate of Immolation",85);
	AddSet(PALADIN,ALL,c,MELEE,"Heroic Raid Set",85,391,EPIC,71514,71516,71512,71513,71515);
	AddSet(PALADIN,ALL,c,MELEE,"Normal Raid Set",85,378,EPIC,71065,71067,71063,71064,71066);
	
	-- Tier 11
	c = AddCollection(PALADIN,ALL,HEALER,"Tier 11: Reinforced Sapphirium Regalia",85);
	AddSet(PALADIN,ALL,c,HEALER,"Heroic Raid Set",85,372,EPIC,65219,65220,65221,65222,65223);
	AddSet(PALADIN,ALL,c,HEALER,"Normal Raid Set",85,359,EPIC,60359,60360,60361,60362,60363);

	c = AddCollection(PALADIN,ALL,TANK,"Tier 11: Reinforced Sapphirium Battlearmor",85);
	AddSet(PALADIN,ALL,c,TANK,"Heroic Raid Set",85,372,EPIC,65224,65225,65226,65227,65228);
	AddSet(PALADIN,ALL,c,TANK,"Normal Raid Set",85,359,EPIC,60354,60355,60356,60357,60358);

	c = AddCollection(PALADIN,ALL,MELEE,"Tier 11: Reinforced Sapphirium Battleplate",85);
	AddSet(PALADIN,ALL,c,MELEE,"Heroic Raid Set",85,372,EPIC,65214,65215,65216,65217,65218);
	AddSet(PALADIN,ALL,c,MELEE,"Normal Raid Set",85,359,EPIC,60344,60345,60346,60347,60348);

	-- Tier 10
	c = AddCollection(PALADIN,ALL,HEALER,"Tier 10: Lightsworn Garb",80);
	AddSet(PALADIN,ALL,c,HEALER,"Heroic Raid Set",80,277,EPIC,51272,51273,51274,51270,51271);
	AddSet(PALADIN,ALL,c,HEALER,"Normal Raid Set",80,264,EPIC,51167,51166,51165,51169,51168);
	AddSet(PALADIN,ALL,c,HEALER,"Justice Points Set",80,251,EPIC,50867,50865,50869,50868,50866);

	c = AddCollection(PALADIN,ALL,TANK,"Tier 10: Lightsworn Plate",80);
	AddSet(PALADIN,ALL,c,TANK,"Heroic Raid Set",80,277,EPIC,51266,51269,51265,51267,51268);
	AddSet(PALADIN,ALL,c,TANK,"Normal Raid Set",80,264,EPIC,51173,51170,51174,51172,51171);
	AddSet(PALADIN,ALL,c,TANK,"Justice Points Set",80,251,EPIC,50862,50860,50864,50863,50861);

	c = AddCollection(PALADIN,ALL,MELEE,"Tier 10: Lightsworn Battlegear",80);
	AddSet(PALADIN,ALL,c,MELEE,"Heroic Raid Set",80,277,EPIC,51277,51279,51275,51276,51278);
	AddSet(PALADIN,ALL,c,MELEE,"Normal Raid Set",80,264,EPIC,51162,51160,51164,51163,51161);
	AddSet(PALADIN,ALL,c,MELEE,"Justice Points Set",80,251,EPIC,50326,50324,50328,50327,50325);
	
	-- Tier 9
	c = AddCollection(PALADIN,ALLIANCE,HEALER,"Tier 9: Turalyon's Garb",80);
	AddSet(PALADIN,ALLIANCE,c,HEALER,"Heroic Raid Set",80,258,EPIC,48582,48580,48584,48583,48581);
	AddSet(PALADIN,ALLIANCE,c,HEALER,"Normal Raid Set",80,245,EPIC,48577,48579,48575,48576,48578);
	AddSet(PALADIN,ALLIANCE,c,HEALER,"Justice Points Set",80,232,EPIC,48564,48572,48566,48574,48568);

	c = AddCollection(PALADIN,ALLIANCE,TANK,"Tier 9: Turalyon's Plate",80);
	AddSet(PALADIN,ALLIANCE,c,TANK,"Heroic Raid Set",80,258,EPIC,48644,48646,48642,48643,48645);
	AddSet(PALADIN,ALLIANCE,c,TANK,"Normal Raid Set",80,245,48639,48637,48641,48640,48638);
	AddSet(PALADIN,ALLIANCE,c,TANK,"Justice Points Set",80,232,EPIC,48634,48636,48632,48633,48635);

	c = AddCollection(PALADIN,ALLIANCE,MELEE,"Tier 9: Turalyon's Battlegear",80);
	AddSet(PALADIN,ALLIANCE,c,MELEE,"Heroic Raid Set",80,258,EPIC,48614,48612,48616,48615,48613);
	AddSet(PALADIN,ALLIANCE,c,MELEE,"Normal Raid Set",80,245,EPIC,48609,48611,48607,48608,48610);
	AddSet(PALADIN,ALLIANCE,c,MELEE,"Justice Points Set",80,232,EPIC,48604,48606,48602,48603,48605);
	
	c = AddCollection(PALADIN,HORDE,HEALER,"Tier 9: Liadrin's Garb",80);
	AddSet(PALADIN,HORDE,c,HEALER,"Heroic Raid Set",80,258,EPIC,48587,48585,48589,48588,48586);
	AddSet(PALADIN,HORDE,c,HEALER,"Normal Raid Set",80,245,EPIC,48592,48590,48594,48593,48591);
	AddSet(PALADIN,HORDE,c,HEALER,"Justice Points Set",80,232,EPIC,48597,48595,48599,48598,48596);

	c = AddCollection(PALADIN,HORDE,TANK,"Tier 9: Liadrin's Plate",80);
	AddSet(PALADIN,HORDE,c,TANK,"Heroic Raid Set",80,258,EPIC,48649,48647,48651,48650,48648);
	AddSet(PALADIN,HORDE,c,TANK,"Normal Raid Set",80,245,48659,48661,48657,48658,48660);
	AddSet(PALADIN,HORDE,c,TANK,"Justice Points Set",80,232,EPIC,48654,48656,48652,48653,48655);

	c = AddCollection(PALADIN,HORDE,MELEE,"Tier 9: Liadrin's Battlegear",80);
	AddSet(PALADIN,HORDE,c,MELEE,"Heroic Raid Set",80,258,EPIC,48619,48621,48617,48618,48620);
	AddSet(PALADIN,HORDE,c,MELEE,"Normal Raid Set",80,245,EPIC,48624,48622,48626,48625,48623);
	AddSet(PALADIN,HORDE,c,MELEE,"Justice Points Set",80,232,EPIC,48629,48627,48631,48630,48628);
	
	-- Tier 8
	c = AddCollection(PALADIN,ALL,HEALER,"Tier 8: Aegis Regalia",80);
	AddSet(PALADIN,ALL,c,HEALER,"25-Player Raid Set",80,226,EPIC,46180,46182,46178,46179,46181);
	AddSet(PALADIN,ALL,c,HEALER,"10-Player Raid Set",80,219,EPIC,45372,45373,45374,45370,45371);

	c = AddCollection(PALADIN,ALL,TANK,"Tier 8: Aegis Plate",80);
	AddSet(PALADIN,ALL,c,TANK,"25-Player Raid Set",80,226,EPIC,46175,46177,46173,46174,46176);
	AddSet(PALADIN,ALL,c,TANK,"10-Player Raid Set",80,219,EPIC,45382,45385,45381,45383,45384);

	c = AddCollection(PALADIN,ALL,MELEE,"Tier 8: Aegis Battlegear",80);
	AddSet(PALADIN,ALL,c,MELEE,"25-Player Raid Set",80,226,EPIC,46156,46152,46154,46155,46153);
	AddSet(PALADIN,ALL,c,MELEE,"10-Player Raid Set",80,219,EPIC,45377,45380,45375,45376,45379);
	
	-- Tier 7
	c = AddCollection(PALADIN,ALL,HEALER,"Tier 7: Redemption Regalia",80)
	AddSet(PALADIN,ALL,c,HEALER,"25-Player Raid Set",80,213,EPIC,40571,40573,40569,40570,40572)
	AddSet(PALADIN,ALL,c,HEALER,"10-Player Raid Set",80,200,EPIC,39628,39631,39629,39632,39630)

	c = AddCollection(PALADIN,ALL,TANK,"Tier 7: Redemption Plate",80)
	AddSet(PALADIN,ALL,c,TANK,"25-Player Raid Set",80,213,EPIC,40581,40584,40579,40580,40583)
	AddSet(PALADIN,ALL,c,TANK,"10-Player Raid Set",80,200,EPIC,39640,39642,39638,39639,39641)

	c = AddCollection(PALADIN,ALL,MELEE,"Tier 7: Redemption Battlegear",80)
	AddSet(PALADIN,ALL,c,MELEE,"25-Player Raid Set",80,213,EPIC,40576,40578,40574,40575,40577)
	AddSet(PALADIN,ALL,c,MELEE,"10-Player Raid Set",80,200,EPIC,39635,39637,39633,39634,39636)

	-- Tier 6
	c = AddCollection(PALADIN,ALL,ALL,"Tier 6: Lightbringer Collection",70)
	AddSet(PALADIN,ALL,c,HEALER,"Lightbringer Raiment",70,146,EPIC,30988,30996,30992,34432,30983,34487,30994,34559)
	AddSet(PALADIN,ALL,c,TANK,"Lightbringer Armor",70,146,EPIC,30987,30998,30991,34433,30985,34488,30995,34560)
	AddSet(PALADIN,ALL,c,MELEE,"Lightbringer Battlegear",70,146,EPIC,30989,30997,30990,34431,30982,34485,30993,34561)

	-- Tier 5
	c = AddCollection(PALADIN,ALL,ALL,"Tier 5: Crystalforge Collection",70)
	AddSet(PALADIN,ALL,c,HEALER,"Crystalforge Raiment",70,133,EPIC,30136,30138,30134,30135,30137)
	AddSet(PALADIN,ALL,c,TANK,"Crystalforge Armor",70,133,EPIC,30125,30127,30123,30124,30126)
	AddSet(PALADIN,ALL,c,MELEE,"Crystalforge Battlegear",70,133,EPIC,30131,30133,30129,30130,30132)

	-- Tier 4
	c = AddCollection(PALADIN,ALL,ALL,"Tier 4: Justicar Collection",70)
	AddSet(PALADIN,ALL,c,HEALER,"Justicar Raiment",70,120,EPIC,29061,29064,29062,29065,29063)
	AddSet(PALADIN,ALL,c,TANK,"Justicar Armor",70,120,EPIC,29068,29070,29066,29067,29069)
	AddSet(PALADIN,ALL,c,MELEE,"Justicar Battlegear",70,120,EPIC,29073,29075,29071,29072,29074)
	
	-- Tier 3
	c = AddCollection(PALADIN,ALL,ALL,"Tier 3: Redemption Collection",60)
	AddSet(PALADIN,ALL,c,ALL,"Redemption Raiment",60,86,EPIC,22428,22429,22425,22424,22426,22431,22427,22430,23066);
	
	-- Tier 2
	c = AddCollection(PALADIN,ALL,ALL,"Tier 2: Judgement Collection",60)
	AddSet(PALADIN,ALL,c,ALL,"Judgement Armor",60,76,EPIC,16955,16953,16958,16951,16956,16952,16954,16957)
	
	-- Tier 1
	c = AddCollection(PALADIN,ALL,ALL,"Tier 1: Lawbringer Collection",60)
	AddSet(PALADIN,ALL,c,ALL,"Lawbringer Armor",60,66,EPIC,16854,16856,16853,16857,16860,16858,16855,16859)

end

local function AddPriestCollections()
	local c = 0
	
	-- Legendaries
	c = AddCollection(PRIEST,ALL,ALL,"Legendaries",85);
	AddSet(PRIEST,ALL,c,HEALER,"Jina-Kang, Kindness of Chi-Ji",90,608,LEGENDARY,102247);
	AddSet(PRIEST,ALL,c,CASTER,"Xing-Ho, Breath of Yulon",90,608,LEGENDARY,102246);
	AddSet(PRIEST,ALL,c,CASTER,"Dragonwrath, Tarecgosa's Rest",85,397,LEGENDARY,71086);

	-- Tier 16
	c = AddCollection(PRIEST,ALL,HEALER,"Tier 16: Vestments of Ternion Glory",90);
	AddSet(PRIEST,ALL,c,HEALER,"Heroic Raid Set",90,566,EPIC,99366,99358,99357,99367,99365)
	AddSet(PRIEST,ALL,c,HEALER,"Normal Raid Set",90,553,EPIC,99117,99120,99119,99118,99131)
	AddSet(PRIEST,ALL,c,HEALER,"Flexible Raid Set",90,540,EPIC,99591,99585,99584,99592,99590)
	AddSet(PRIEST,ALL,c,HEALER,"Raid Finder Set",90,528,EPIC,99024,99018,99017,99025,99023)
	
	c = AddCollection(PRIEST,ALL,CASTER,"Tier 16: Regalia of Ternion Glory",90);
	AddSet(PRIEST,ALL,c,CASTER,"Heroic Raid Set",90,566,EPIC,99360,99363,99362,99361,99359)
	AddSet(PRIEST,ALL,c,CASTER,"Normal Raid Set",90,553,EPIC,99122,99111,99110,99123,99121)
	AddSet(PRIEST,ALL,c,CASTER,"Flexible Raid Set",90,540,EPIC,99587,99628,99627,99588,99586)
	AddSet(PRIEST,ALL,c,CASTER,"Raid Finder Set",90,528,EPIC,99020,99005,99004,99021,99019)

	-- Tier 15
	c = AddCollection(PRIEST,ALL,HEALER,"Tier 15: Vestments of the Exorcist",90);
	AddSet(PRIEST,ALL,c,HEALER,"Heroic Raid Set",90,535,EPIC,96670,96669,96671,96673,96672)
	AddSet(PRIEST,ALL,c,HEALER,"Normal Raid Set",90,522,EPIC,95296,95295,95297,95299,95298)
	AddSet(PRIEST,ALL,c,HEALER,"Raid Finder Set",90,502,EPIC,95926,95925,95927,95929,95928)
	
	c = AddCollection(PRIEST,ALL,CASTER,"Tier 15: Regalia of the Exorcist",90);
	AddSet(PRIEST,ALL,c,CASTER,"Heroic Raid Set",90,535,EPIC,96674,96675,96676,96677,96678)
	AddSet(PRIEST,ALL,c,CASTER,"Normal Raid Set",90,522,EPIC,95300,95301,95302,95303,95304)
	AddSet(PRIEST,ALL,c,CASTER,"Raid Finder Set",90,502,EPIC,95930,95931,95932,95933,95934)
	
	-- Tier 14
	c = AddCollection(PRIEST,ALL,HEALER,"Tier 14: Vestments of the Exorcist",90);
	AddSet(PRIEST,ALL,c,HEALER,"Heroic Raid Set",90,509,EPIC,87115,87118,87117,87116,87114);
	AddSet(PRIEST,ALL,c,HEALER,"Normal Raid Set",90,496,EPIC,85362,85359,85360,85361,85363);
	AddSet(PRIEST,ALL,c,HEALER,"Raid Finder Set",90,483,EPIC,86702,86699,86700,86701,86703);

	c = AddCollection(PRIEST,ALL,CASTER,"Tier 14: Regalia of the Exorcist",90);
	AddSet(PRIEST,ALL,c,CASTER,"Heroic Raid Set",90,509,EPIC,87120,87123,87122,87121,87119);	
	AddSet(PRIEST,ALL,c,CASTER,"Normal Raid Set",90,496,EPIC,85365,85368,85367,85366,85364);
	AddSet(PRIEST,ALL,c,CASTER,"Raid Finder Set",90,483,EPIC,86705,86708,86707,86706,86704);
	
	-- Tier 13
	c = AddCollection(PRIEST,ALL,HEALER,"Tier 13: Vestments of Dying Light",85);
	AddSet(PRIEST,ALL,c,HEALER,"Heroic Raid Set",85,410,EPIC,78700,78747,78728,78683,78719);
	AddSet(PRIEST,ALL,c,HEALER,"Normal Raid Set",85,397,EPIC,76358,76361,76360,76357,76359);
	AddSet(PRIEST,ALL,c,HEALER,"Raid Finder Set",85,384,EPIC,78795,78842,78823,78778,78814);

	c = AddCollection(PRIEST,ALL,CASTER,"Tier 13: Regalia of Dying Light",85);
	AddSet(PRIEST,ALL,c,CASTER,"Heroic Raid Set",85,410,EPIC,78703,78750,78731,78682,78722);
	AddSet(PRIEST,ALL,c,CASTER,"Normal Raid Set",85,397,EPIC,76347,76344,76345,76348,76346);
	AddSet(PRIEST,ALL,c,CASTER,"Raid Finder Set",85,384,EPIC,78798,78845,78826,78777,78817);
	
	-- Tier 12
	c = AddCollection(PRIEST,ALL,HEALER,"Tier 12: Vestments of the Cleansing Flame",85);
	AddSet(PRIEST,ALL,c,HEALER,"Heroic Raid Set",85,391,EPIC,71528,71531,71530,71527,71529);
	AddSet(PRIEST,ALL,c,HEALER,"Normal Raid Set",85,378,EPIC,71272,71275,71274,71271,71273);

	c = AddCollection(PRIEST,ALL,CASTER,"Tier 12: Regalia of the Cleansing Flame",85);
	AddSet(PRIEST,ALL,c,CASTER,"Heroic Raid Set",85,391,EPIC,71533,71536,71535,71532,71534);
	AddSet(PRIEST,ALL,c,CASTER,"Normal Raid Set",85,378,EPIC,71277,71280,71279,71276,71278);
	
	-- Tier 11
	c = AddCollection(PRIEST,ALL,HEALER,"Tier 11: Mercurial Vestments",85);
	AddSet(PRIEST,ALL,c,HEALER,"Heroic Raid Set",85,372,EPIC,65229,65230,65231,65232,65233);
	AddSet(PRIEST,ALL,c,HEALER,"Normal Raid Set",85,359,EPIC,60258,60262,60261,60275,60259);

	c = AddCollection(PRIEST,ALL,CASTER,"Tier 11: Mercurial Regalia",85);
	AddSet(PRIEST,ALL,c,CASTER,"Heroic Raid Set",85,372,EPIC,65234,65235,65236,65237,65238);
	AddSet(PRIEST,ALL,c,CASTER,"Normal Raid Set",85,359,EPIC,60253,60254,60255,60256,60257);

	-- Tier 10
	c = AddCollection(PRIEST,ALL,HEALER,"Tier 10: Crimson Acolyte's Raiment",80);
	AddSet(PRIEST,ALL,c,HEALER,"Heroic Raid Set",80,277,EPIC,51261,51264,51263,51260,51262);
	AddSet(PRIEST,ALL,c,HEALER,"Normal Raid Set",80,264,EPIC,51178,51175,51176,51179,51177);
	AddSet(PRIEST,ALL,c,HEALER,"Justice Points Set",80,251,EPIC,50765,50767,50768,50766,50769);

	c = AddCollection(PRIEST,ALL,CASTER,"Tier 10: Crimson Acolyte's Regalia",80);
	AddSet(PRIEST,ALL,c,CASTER,"Heroic Raid Set",80,277,EPIC,51255,51257,51259,51256,51258);
	AddSet(PRIEST,ALL,c,CASTER,"Normal Raid Set",80,264,EPIC,51184,51182,51180,51183,51181);
	AddSet(PRIEST,ALL,c,CASTER,"Justice Points Set",80,251,EPIC,50392,50396,50394,50391,50393);
	
	-- Tier 9
	c = AddCollection(PRIEST,ALLIANCE,HEALER,"Tier 9: Velen's Raiment",80);
	AddSet(PRIEST,ALLIANCE,c,HEALER,"Heroic Raid Set",80,258,EPIC,47914,47981,47936,47982,47980);
	AddSet(PRIEST,ALLIANCE,c,HEALER,"Normal Raid Set",80,245,EPIC,47984,47987,47986,47983,47985);
	AddSet(PRIEST,ALLIANCE,c,HEALER,"Justice Points Set",80,232,EPIC,48035,48029,48031,48037,48033);
	
	c = AddCollection(PRIEST,ALLIANCE,CASTER,"Tier 9: Velen's Regalia",80);
	AddSet(PRIEST,ALLIANCE,c,CASTER,"Heroic Raid Set",80,258,EPIC,48073,48076,48075,48072,48074);
	AddSet(PRIEST,ALLIANCE,c,CASTER,"Normal Raid Set",80,245,EPIC,48078,48081,48080,48077,48079);
	AddSet(PRIEST,ALLIANCE,c,CASTER,"Justice Points Set",80,232,EPIC,48085,48082,48083,48086,48084);

	c = AddCollection(PRIEST,HORDE,HEALER,"Tier 9: Zabra's Raiment",80);
	AddSet(PRIEST,HORDE,c,HEALER,"Heroic Raid Set",80,258,EPIC,48068,48071,48070,48067,48069);
	AddSet(PRIEST,HORDE,c,HEALER,"Normal Raid Set",80,245,EPIC,48065,48062,48063,48066,48064);
	AddSet(PRIEST,HORDE,c,HEALER,"Justice Points Set",80,232,EPIC,48058,48061,48060,48057,48059);
	
	c = AddCollection(PRIEST,HORDE,CASTER,"Tier 9: Zabra's Regalia",80);
	AddSet(PRIEST,HORDE,c,CASTER,"Heroic Raid Set",80,258,EPIC,48098,48101,48100,48097,48099);
	AddSet(PRIEST,HORDE,c,CASTER,"Normal Raid Set",80,245,EPIC,48095,48092,48093,48096,48094);
	AddSet(PRIEST,HORDE,c,CASTER,"Justice Points Set",80,232,EPIC,48088,48091,48090,48087,48089);
	
	-- Tier 8
	c = AddCollection(PRIEST,ALL,HEALER,"Tier 8: Sanctification Garb",80);
	AddSet(PRIEST,ALL,c,HEALER,"25-Player Raid Set",80,226,EPIC,46197,46190,46193,46188,46195);
	AddSet(PRIEST,ALL,c,HEALER,"10-Player Raid Set",80,219,EPIC,45386,45390,45389,45387,45388);

	c = AddCollection(PRIEST,ALL,CASTER,"Tier 8: Sanctification Regalia",80);
	AddSet(PRIEST,ALL,c,CASTER,"25-Player Raid Set",80,226,EPIC,46172,46165,46168,46163,46170);
	AddSet(PRIEST,ALL,c,CASTER,"10-Player Raid Set",80,219,EPIC,45391,45393,45395,45392,45394);

	-- Tier 7
	c = AddCollection(PRIEST,ALL,HEALER,"Tier 7: Garb of Faith",80)
	AddSet(PRIEST,ALL,c,HEALER,"25-Player Raid Set",80,213,EPIC,40447,40450,40449,40445,40448)
	AddSet(PRIEST,ALL,c,HEALER,"10-Player Raid Set",80,200,EPIC,39514,39518,39515,39519,39517)

	c = AddCollection(PRIEST,ALL,CASTER,"Tier 7: Regalia of Faith",80)
	AddSet(PRIEST,ALL,c,CASTER,"25-Player Raid Set",80,213,EPIC,40456,40459,40458,40454,40457)
	AddSet(PRIEST,ALL,c,CASTER,"10-Player Raid Set",80,200,EPIC,39521,39529,39523,39530,39528)
	
	-- Tier 6
	c = AddCollection(PRIEST,ALL,ALL,"Tier 6: Absolution Collection",70)
	AddSet(PRIEST,ALL,c,HEALER,"Absolution Raiment",70,146,EPIC,31063,31069,31066,34435,31060,34527,31068,34562)
	AddSet(PRIEST,ALL,c,CASTER,"Vestment of Absolution",70,146,EPIC,31064,31070,31065,34434,31061,34528,31067,34563)
	-- Tier 5
	c = AddCollection(PRIEST,ALL,ALL,"Tier 5: Avatar Collection",70)
	AddSet(PRIEST,ALL,c,HEALER,"Avatar Raiment",70,133,EPIC,30152,30154,30150,30151,30153)
	AddSet(PRIEST,ALL,c,CASTER,"Avatar Regalia",70,133,EPIC,30161,30163,30159,30160,30162)
	-- Tier 4
	c = AddCollection(PRIEST,ALL,ALL,"Tier 4: Incarnate Collection",70)
	AddSet(PRIEST,ALL,c,HEALER,"Incarnate Raiment",70,120,EPIC,29049,29054,29050,29055,29053)
	AddSet(PRIEST,ALL,c,CASTER,"Incarnate Regalia",70,120,EPIC,29058,29060,29056,29057,29059)
	-- Tier 3
	c = AddCollection(PRIEST,ALL,ALL,"Tier 3: Faith Collection",60)
	AddSet(PRIEST,ALL,c,ALL,"Vestments of Faith",60,86,EPIC,22514,22515,22512,22519,22517,22518,22513,22516,23061)
	-- Tier 2
	c = AddCollection(PRIEST,ALL,ALL,"Tier 2: Transcendence Collection",60)
	AddSet(PRIEST,ALL,c,ALL,"Vestments of Transcendence",60,76,EPIC,16921,16924,16923,16926,16920,16925,16922,16919)
	-- Tier 1
	c = AddCollection(PRIEST,ALL,ALL,"Tier 1: Prophecy Collection",60)
	AddSet(PRIEST,ALL,c,ALL,"Vestments of Prophecy",60,66,EPIC,16813,16816,16815,16819,16812,16817,16814,16811);

end

local function AddRogueCollections()
	local c = 0
	
	-- Legendaries
	c = AddCollection(ROGUE,ALL,MELEE,"Legendaries",85);
	AddSet(ROGUE,ALL,c,MELEE,"Fen-Yu, Fury of Xuen",90,608,LEGENDARY,102248);
	AddSet(ROGUE,ALL,c,MELEE,"Fangs of the Father",85,416,LEGENDARY,77949,77950);

	-- Tier 16
	c = AddCollection(ROGUE,ALL,MELEE,"Tier 16: Barbed Assassin Battlegear",90);
	AddSet(ROGUE,ALL,c,MELEE,"Heroic Raid Set",90,566,EPIC,99348,99350,99356,99349,99355);
	AddSet(ROGUE,ALL,c,MELEE,"Normal Raid Set",90,553,EPIC,99114,99116,99112,99115,99113);
	AddSet(ROGUE,ALL,c,MELEE,"Flexible Raid Set",90,540,EPIC,99631,99635,99629,99634,99630);
	AddSet(ROGUE,ALL,c,MELEE,"Raid Finder Set",90,528,EPIC,99008,99010,99006,99009,99007);
	-- Tier 15
	c = AddCollection(ROGUE,ALL,MELEE,"Tier 15: Nine-Tail Battlegear",90);
	AddSet(ROGUE,ALL,c,MELEE,"Heroic Raid Set",90,535,EPIC,95936,95937,95938,95939,95935);
	AddSet(ROGUE,ALL,c,MELEE,"Normal Raid Set",90,522,EPIC,95306,95307,95308,95309,95305);
	AddSet(ROGUE,ALL,c,MELEE,"Raid Finder Set",90,502,EPIC,96680,96681,96682,96683,96679);
	-- Tier 14
	c = AddCollection(ROGUE,ALL,MELEE,"Tier 14: Battlegear of the Thousandfold Blades",90);
	AddSet(ROGUE,ALL,c,MELEE,"Heroic Raid Set",90,509,EPIC,86641,86639,86643,86640,86642);
	AddSet(ROGUE,ALL,c,MELEE,"Normal Raid Set",90,496,EPIC,85301,85299,85303,85300,85302);
	AddSet(ROGUE,ALL,c,MELEE,"Raid Finder Set",90,483,EPIC,86641,86639,86643,86640,86642);
	-- Tier 13
	c = AddCollection(ROGUE,ALL,MELEE,"Tier 13: Blackfang Battleweave",85);
	AddSet(ROGUE,ALL,c,MELEE,"Heroic Raid Set",85,410,EPIC,78699,78738,78664,78679,78708);
	AddSet(ROGUE,ALL,c,MELEE,"Normal Raid Set",85,397,EPIC,77025,77027,77023,77024,77026);
	AddSet(ROGUE,ALL,c,MELEE,"Raid Finder Set",85,384,EPIC,78794,78833,78759,78774,78803);
	-- Tier 12
	c = AddCollection(ROGUE,ALL,MELEE,"Tier 12: Vestments of the Dark Phoenix",85);
	AddSet(ROGUE,ALL,c,MELEE,"Heroic Raid Set",85,391,EPIC,71539,71541,71537,71538,71540);
	AddSet(ROGUE,ALL,c,MELEE,"Normal Raid Set",85,378,EPIC,71047,71049,71045,71046,71048);
	-- Tier 11
	c = AddCollection(ROGUE,ALL,MELEE,"Tier 11: Wind Dancer's Regalia",85);
	AddSet(ROGUE,ALL,c,MELEE,"Heroic Raid Set",85,372,EPIC,65239,65240,65241,65242,65243);
	AddSet(ROGUE,ALL,c,MELEE,"Normal Raid Set",85,359,EPIC,60298,60299,60300,60301,60302);
	-- Tier 10
	c = AddCollection(ROGUE,ALL,MELEE,"Tier 10: Shadow Blade's Battlegear",80);
	AddSet(ROGUE,ALL,c,MELEE,"Heroic Raid Set",80,277,EPIC,51252,51254,51250,51251,51253);
	AddSet(ROGUE,ALL,c,MELEE,"Normal Raid Set",80,264,EPIC,51187,51185,51189,51188,51186);
	AddSet(ROGUE,ALL,c,MELEE,"Justice Points Set",80,251,EPIC,50089,50105,50087,50088,50090);
	-- Tier 9
	c = AddCollection(ROGUE,ALLIANCE,MELEE,"Tier 9: VanCleef's Battlegear",80);
	AddSet(ROGUE,ALLIANCE,c,MELEE,"Heroic Raid Set",80,258,EPIC,48230,48228,48232,48231,48229);
	AddSet(ROGUE,ALLIANCE,c,MELEE,"Normal Raid Set",80,245,EPIC,48225,48227,48223,48224,48226);
	AddSet(ROGUE,ALLIANCE,c,MELEE,"Justice Points Set",80,232,EPIC,48218,48221,48219,48222,48220);
	c = AddCollection(ROGUE,HORDE,MELEE,"Tier 9: Garona's Battlegear",80);
	AddSet(ROGUE,HORDE,c,MELEE,"Heroic Raid Set",80,258,EPIC,48235,48237,48233,48234,48236);
	AddSet(ROGUE,HORDE,c,MELEE,"Normal Raid Set",80,245,EPIC,48240,48238,48242,48241,48239);
	AddSet(ROGUE,HORDE,c,MELEE,"Justice Points Set",80,232,EPIC,48245,48247,48243,48244,48246);
	-- Tier 8
	c = AddCollection(ROGUE,ALL,MELEE,"Tier 8: Terrorblade Battlegear",80);
	AddSet(ROGUE,ALL,c,MELEE,"25-Player Raid Set",80,226,EPIC,46125,46127,46123,46124,46126);
	AddSet(ROGUE,ALL,c,MELEE,"10-Player Raid Set",80,219,EPIC,45398,45400,45396,45397,45399);
	-- Tier 7
	c = AddCollection(ROGUE,ALL,MELEE,"Tier 7: Bonescythe Battlegear",80)
	AddSet(ROGUE,ALL,c,MELEE,"25-Player Raid Set",80,213,EPIC,40499,40502,40495,40496,40500)
	AddSet(ROGUE,ALL,c,MELEE,"10-Player Raid Set",80,200,EPIC,39561,39565,39558,39560,39564)
	-- Tier 6
	c = AddCollection(ROGUE,ALL,MELEE,"Tier 6: Slayer's Collection",70)
	AddSet(ROGUE,ALL,c,MELEE,"Slayer's Armor",70,146,EPIC,31027,31030,31028,34448,31026,34558,31029,34575)
	-- Tier 5
	c = AddCollection(ROGUE,ALL,MELEE,"Tier 5: Deathmantle Collection",70)
	AddSet(ROGUE,ALL,c,MELEE,"Deathmantle",70,133,EPIC,30146,30149,30144,30145,30148)
	-- Tier 4
	c = AddCollection(ROGUE,ALL,MELEE,"Tier 4: Netherblade Collection",70)
	AddSet(ROGUE,ALL,c,MELEE,"Netherblade",70,120,EPIC,29044,29047,29045,29048,29046)
	-- Tier 3
	c = AddCollection(ROGUE,ALL,MELEE,"Tier 3: Bonescythe Collection",60)
	AddSet(ROGUE,ALL,c,MELEE,"Bonescythe Armor",60,86,EPIC,22478,22479,22476,22483,22481,22482,22477,22480,23060)
	-- Tier 2
	c = AddCollection(ROGUE,ALL,MELEE,"Tier 2: Bloodfang Collection",60)
	AddSet(ROGUE,ALL,c,MELEE,"Bloodfang Armor",60,76,EPIC,16908,16832,16905,16911,16907,16910,16909,16906)
	-- Tier 1
	c = AddCollection(ROGUE,ALL,MELEE,"Tier 1: Nightslayer Collection",60)
	AddSet(ROGUE,ALL,c,MELEE,"Nightslayer Armor",60,66,EPIC,16821,16823,16820,16825,16826,16827,16822,16824)
	
end

local function AddShamanCollections()
	local c = 0
	
	-- Legendaries
	c = AddCollection(SHAMAN,ALL,ALL,"Legendaries",85);
	AddSet(SHAMAN,ALL,c,CASTER,"Xing-Ho, Breath of Yulon",90,608,LEGENDARY,102246);
	AddSet(SHAMAN,ALL,c,MELEE,"Fen-Yu, Fury of Xuen",90,608,LEGENDARY,102248);
	AddSet(SHAMAN,ALL,c,HEALER,"Jina-Kang, Kindness of Chi-Ji",90,608,LEGENDARY,102247);
	
	-- Tier 16
	c = AddCollection(SHAMAN,ALL,CASTER,"Tier 16: Regalia of Celestial Harmony",90);
	AddSet(SHAMAN,ALL,c,CASTER,"Heroic Raid Set",90,566,EPIC,99332,99333,99334,99344,99345);
	AddSet(SHAMAN,ALL,c,CASTER,"Normal Raid Set",90,553,EPIC,99092,99093,99094,99095,99106);
	AddSet(SHAMAN,ALL,c,CASTER,"Flexible Raid Set",90,540,EPIC,99580,99645,99646,99647,99579);
	AddSet(SHAMAN,ALL,c,CASTER,"Raid Finder Set",90,528,EPIC,99087,99088,99089,99090,99091);
	
	c = AddCollection(SHAMAN,ALL,MELEE,"Tier 16: Battlegear of Celestial Harmony",90);
	AddSet(SHAMAN,ALL,c,MELEE,"Heroic Raid Set",90,566,EPIC,99341,99343,99347,99342,99340);
  AddSet(SHAMAN,ALL,c,MELEE,"Normal Raid Set",90,553,EPIC,99103,99105,99101,99104,99102);
	AddSet(SHAMAN,ALL,c,MELEE,"Flexible Raid Set",90,540,EPIC,99649,99663,99615,99650,99616);
	AddSet(SHAMAN,ALL,c,MELEE,"Raid Finder Set",90,528,EPIC,98983,98977,98992,98984,98993);
	
	c = AddCollection(SHAMAN,ALL,HEALER,"Tier 16: Vestments of Celestial Harmony",90);
	AddSet(SHAMAN,ALL,c,HEALER,"Heroic Raid Set",90,566,EPIC,99353,99346,99351,99354,99352);
  AddSet(SHAMAN,ALL,c,HEALER,"Normal Raid Set",90,553,EPIC,99109,99100,99107,99099,99108);
	AddSet(SHAMAN,ALL,c,HEALER,"Flexible Raid Set",90,540,EPIC,99612,99614,99636,99613,99611);
	AddSet(SHAMAN,ALL,c,HEALER,"Raid Finder Set",90,528,EPIC,98989,98991,99011,98990,98988);
	
	-- Tier 15
	c = AddCollection(SHAMAN,ALL,CASTER,"Tier 15: Regalia of the Witch Doctor",90);
	AddSet(SHAMAN,ALL,c,CASTER,"Heroic Raid Set",90,535,EPIC,96694,96695,96696,96697,96698);
	AddSet(SHAMAN,ALL,c,CASTER,"Normal Raid Set",90,522,EPIC,95320,95321,95322,95323,95324);
	AddSet(SHAMAN,ALL,c,CASTER,"Raid Finder Set",90,502,EPIC,95950,95951,95952,95953,95954);

	c = AddCollection(SHAMAN,ALL,MELEE,"Tier 15: Battlegear of the Witch Doctor",90);
	AddSet(SHAMAN,ALL,c,MELEE,"Heroic Raid Set",90,535,EPIC,96689,96690,96691,96692,96693);
	AddSet(SHAMAN,ALL,c,MELEE,"Normal Raid Set",90,522,EPIC,95315,95316,95317,95318,95319);
	AddSet(SHAMAN,ALL,c,MELEE,"Raid Finder Set",90,502,EPIC,95945,95946,95947,95948,95949);

	c = AddCollection(SHAMAN,ALL,HEALER,"Tier 15: Vestments of the Witch Doctor",90);
	AddSet(SHAMAN,ALL,c,HEALER,"Heroic Raid Set",90,535,EPIC,96686,96685,96687,96688,96684);
	AddSet(SHAMAN,ALL,c,HEALER,"Normal Raid Set",90,522,EPIC,95312,95311,95313,95314,95310);
	AddSet(SHAMAN,ALL,c,HEALER,"Raid Finder Set",90,502,EPIC,95942,95941,95943,95944,95940);
	
	-- Tier 14
	c = AddCollection(SHAMAN,ALL,CASTER,"Tier 14: Regalia of the Firebird",90);
	AddSet(SHAMAN,ALL,c,CASTER,"Heroic Raid Set",90,509,EPIC,87141,87143,87139,87140,87142);
	AddSet(SHAMAN,ALL,c,CASTER,"Normal Raid Set",90,496,EPIC,85291,85289,85293,85290,85292);
	AddSet(SHAMAN,ALL,c,CASTER,"Raid Finder Set",90,483,EPIC,86631,86633,86629,86630,86632);

	c = AddCollection(SHAMAN,ALL,MELEE,"Tier 14: Battlegear of the Firebird",90);
	AddSet(SHAMAN,ALL,c,MELEE,"Heroic Raid Set",90,509,EPIC,87136,87138,87134,87137,87135);
	AddSet(SHAMAN,ALL,c,MELEE,"Normal Raid Set",90,496,EPIC,85286,85284,85288,85285,85287);
	AddSet(SHAMAN,ALL,c,MELEE,"Raid Finder Set",90,483,EPIC,86626,86624,86628,86625,86627);

	c = AddCollection(SHAMAN,ALL,HEALER,"Tier 14: Vestments of the Firebird",90);
	AddSet(SHAMAN,ALL,c,HEALER,"Heroic Raid Set",90,509,EPIC,87131,87133,87129,87132,87130);
	AddSet(SHAMAN,ALL,c,HEALER,"Normal Raid Set",90,496,EPIC,85351,85349,85353,85350,85352);
	AddSet(SHAMAN,ALL,c,HEALER,"Raid Finder Set",90,483,EPIC,86691,86689,86693,86690,86692);
	
	-- Tier 13
	c = AddCollection(SHAMAN,ALL,CASTER,"Tier 13: Spiritwalker's Regalia",85);
	AddSet(SHAMAN,ALL,c,CASTER,"Heroic Raid Set",85,410,EPIC,78685,78741,78723,78666,78711);
	AddSet(SHAMAN,ALL,c,CASTER,"Normal Raid Set",85,397,EPIC,77037,77035,77039,77038,77036);
	AddSet(SHAMAN,ALL,c,CASTER,"Raid Finder Set",85,384,EPIC,78780,78836,78818,78761,78806);

	c = AddCollection(SHAMAN,ALL,MELEE,"Tier 13: Spiritwalker's Battlegear",85);
	AddSet(SHAMAN,ALL,c,MELEE,"Heroic Raid Set",85,410,EPIC,78686,78733,78724,78667,78704);
	AddSet(SHAMAN,ALL,c,MELEE,"Normal Raid Set",85,397,EPIC,77042,77044,77040,77041,77043);
	AddSet(SHAMAN,ALL,c,MELEE,"Raid Finder Set",85,384,EPIC,78781,78828,78819,78762,78799);

	c = AddCollection(SHAMAN,ALL,HEALER,"Tier 13: Spiritwalker's Vestments",85);
	AddSet(SHAMAN,ALL,c,HEALER,"Heroic Raid Set",85,410,EPIC,78691,78739,78725,78672,78718);
	AddSet(SHAMAN,ALL,c,HEALER,"Normal Raid Set",85,397,EPIC,76758,76760,76756,76757,76759);
	AddSet(SHAMAN,ALL,c,HEALER,"Raid Finder Set",85,384,EPIC,78786,78834,78820,78767,78813);

	-- Tier 12
	c = AddCollection(SHAMAN,ALL,CASTER,"Tier 12: Volcanic Regalia",85);
	AddSet(SHAMAN,ALL,c,CASTER,"Heroic Raid Set",85,391,EPIC,71554,71556,71552,71553,71555);
	AddSet(SHAMAN,ALL,c,CASTER,"Normal Raid Set",85,378,EPIC,71293,71295,71294,71292,71291);

	c = AddCollection(SHAMAN,ALL,MELEE,"Tier 12: Volcanic Battlegear",85);
	AddSet(SHAMAN,ALL,c,MELEE,"Heroic Raid Set",85,391,EPIC,71549,71551,71547,71548,71550);
	AddSet(SHAMAN,ALL,c,MELEE,"Normal Raid Set",85,378,EPIC,71303,71305,71301,71302,71304);

	c = AddCollection(SHAMAN,ALL,HEALER,"Tier 12: Volcanic Vestments",85);
	AddSet(SHAMAN,ALL,c,HEALER,"Heroic Raid Set",85,391,EPIC,71544,71546,71542,71543,71545);
	AddSet(SHAMAN,ALL,c,HEALER,"Normal Raid Set",85,378,EPIC,71298,71300,71296,71297,71299);

	-- Tier 11
	c = AddCollection(SHAMAN,ALL,CASTER,"Tier 11: Regalia of the Raging Elements",85);
	AddSet(SHAMAN,ALL,c,CASTER,"Heroic Raid Set",85,372,EPIC,65254,65255,65256,65257,65258);
	AddSet(SHAMAN,ALL,c,CASTER,"Normal Raid Set",85,359,EPIC,60314,60315,60316,60317,60313);

	c = AddCollection(SHAMAN,ALL,MELEE,"Tier 11: Battlegear of the Raging Elements",85);
	AddSet(SHAMAN,ALL,c,MELEE,"Heroic Raid Set",85,372,EPIC,65249,65250,65251,65252,65253);
	AddSet(SHAMAN,ALL,c,MELEE,"Normal Raid Set",85,359,EPIC,60318,60319,60320,60321,60322);

	c = AddCollection(SHAMAN,ALL,HEALER,"Tier 11: Vestments of the Raging Elements",85);
	AddSet(SHAMAN,ALL,c,HEALER,"Heroic Raid Set",85,372,EPIC,65244,65245,65246,65247,65248);
	AddSet(SHAMAN,ALL,c,HEALER,"Normal Raid Set",85,359,EPIC,60308,60309,60310,60311,60312);
	
	-- Tier 10
	c = AddCollection(SHAMAN,ALL,CASTER,"Tier 10: Frost Witch's Regalia",80);
	AddSet(SHAMAN,ALL,c,CASTER,"Heroic Raid Set",80,277,EPIC,51237,51235,51239,51238,51236);
	AddSet(SHAMAN,ALL,c,CASTER,"Normal Raid Set",80,264,EPIC,51202,51204,51200,51201,51203);
	AddSet(SHAMAN,ALL,c,CASTER,"Justice Points Set",80,251,EPIC,50843,50845,50841,50842,50844);

	c = AddCollection(SHAMAN,ALL,MELEE,"Tier 10: Frost Witch's Battlegear",80);
	AddSet(SHAMAN,ALL,c,MELEE,"Heroic Raid Set",80,277,EPIC,51242,51240,51244,51243,51241);
	AddSet(SHAMAN,ALL,c,MELEE,"Normal Raid Set",80,264,EPIC,51197,51199,51195,51196,51198);
	AddSet(SHAMAN,ALL,c,MELEE,"Justice Points Set",80,251,EPIC,50832,50834,50830,50831,50833);

	c = AddCollection(SHAMAN,ALL,HEALER,"Tier 10: Frost Witch's Garb",80);
	AddSet(SHAMAN,ALL,c,HEALER,"Heroic Raid Set",80,277,EPIC,51247,51245,51249,51248,51246);	
	AddSet(SHAMAN,ALL,c,HEALER,"Normal Raid Set",80,264,EPIC,51192,51194,51190,51191,51193);
	AddSet(SHAMAN,ALL,c,HEALER,"Justice Points Set",80,251,EPIC,50837,50839,50835,50836,50838);
	
	-- Tier 9
	c = AddCollection(SHAMAN,ALLIANCE,CASTER,"Tier 9: Nobundo's Regalia",80);
	AddSet(SHAMAN,ALLIANCE,c,CASTER,"Heroic Raid Set",80,258,EPIC,48323,48321,48325,48324,48322);
	AddSet(SHAMAN,ALLIANCE,c,CASTER,"Normal Raid Set",80,245,EPIC,48318,48320,48316,48317,48319);
	AddSet(SHAMAN,ALLIANCE,c,CASTER,"Justice Points Set",80,232,EPIC,48313,48315,48310,48312,48314);

	c = AddCollection(SHAMAN,ALLIANCE,MELEE,"Tier 9: Nobundo's Battlegear",80);
	AddSet(SHAMAN,ALLIANCE,c,MELEE,"Heroic Raid Set",80,258,EPIC,48353,48351,48355,48354,48352);
	AddSet(SHAMAN,ALLIANCE,c,MELEE,"Normal Raid Set",80,245,EPIC,48348,48350,48346,48347,48349);
	AddSet(SHAMAN,ALLIANCE,c,MELEE,"Justice Points Set",80,232,EPIC,48343,48345,48341,48342,48344);

	c = AddCollection(SHAMAN,ALLIANCE,HEALER,"Tier 9: Nobundo's Garb",80);
	AddSet(SHAMAN,ALLIANCE,c,HEALER,"Heroic Raid Set",80,258,EPIC,48292,48290,48294,48293,48291);
	AddSet(SHAMAN,ALLIANCE,c,HEALER,"Normal Raid Set",80,245,EPIC,48287,48289,48285,48286,48288);
	AddSet(SHAMAN,ALLIANCE,c,HEALER,"Justice Points Set",80,232,EPIC,48280,48283,48281,48284,48282);

	c = AddCollection(SHAMAN,HORDE,CASTER,"Tier 9: Thrall's Regalia",80);
	AddSet(SHAMAN,HORDE,c,CASTER,"Heroic Raid Set",80,258,EPIC,48328,48330,48326,48327,48329);
	AddSet(SHAMAN,HORDE,c,CASTER,"Normal Raid Set",80,245,EPIC,48333,48331,48335,48334,48332);
	AddSet(SHAMAN,HORDE,c,CASTER,"Justice Points Set",80,232,EPIC,48338,48340,48336,48337,48339);

	c = AddCollection(SHAMAN,HORDE,MELEE,"Tier 9: Thrall's Battlegear",80);
	AddSet(SHAMAN,HORDE,c,MELEE,"Heroic Raid Set",80,258,EPIC,48358,48360,48356,48357,48359);
	AddSet(SHAMAN,HORDE,c,MELEE,"Normal Raid Set",80,245,EPIC,48363,48361,48365,48364,48362);
	AddSet(SHAMAN,HORDE,c,MELEE,"Justice Points Set",80,232,EPIC,48368,48370,48366,48367,48369);

	c = AddCollection(SHAMAN,HORDE,HEALER,"Tier 9: Thrall's Garb",80);
	AddSet(SHAMAN,HORDE,c,HEALER,"Heroic Raid Set",80,258,EPIC,48307,48309,48305,48306,48308);
	AddSet(SHAMAN,HORDE,c,HEALER,"Normal Raid Set",80,245,EPIC,48302,48304,48300,48301,48303);
	AddSet(SHAMAN,HORDE,c,HEALER,"Justice Points Set",80,232,EPIC,48297,48299,48295,48296,48298);
	
	-- Tier 8
	c = AddCollection(SHAMAN,ALL,CASTER,"Tier 8: Worldbreaker Regalia",80)
	AddSet(SHAMAN,ALL,c,CASTER,"25-Player Raid Set",80,226,EPIC,46209,46211,46206,46207,46210)
	AddSet(SHAMAN,ALL,c,CASTER,"10-Player Raid Set",80,219,EPIC,45408,45410,45411,45406,45409)

	c = AddCollection(SHAMAN,ALL,MELEE,"Tier 8: Worldbreaker Battlegear",80)
	AddSet(SHAMAN,ALL,c,MELEE,"25-Player Raid Set",80,226,EPIC,46212,46203,46205,46200,46208)
	AddSet(SHAMAN,ALL,c,MELEE,"10-Player Raid Set",80,219,EPIC,45412,45415,45413,45414,45416)

	c = AddCollection(SHAMAN,ALL,HEALER,"Tier 8: Worldbreaker Garb",80)
	AddSet(SHAMAN,ALL,c,HEALER,"25-Player Raid Set",80,226,EPIC,46201,46204,46198,46199,46202)
	AddSet(SHAMAN,ALL,c,HEALER,"10-Player Raid Set",80,219,EPIC,45402,45404,45405,45401,45403)
	
	-- Tier 7
	c = AddCollection(SHAMAN,ALL,CASTER,"Tier 7: Earthshatter Regalia",80)
	AddSet(SHAMAN,ALL,c,CASTER,"25-Player Raid Set",80,213,EPIC,40516,40518,40514,40515,40517)
	AddSet(SHAMAN,ALL,c,CASTER,"10-Player Raid Set",80,200,EPIC,39594,39596,39592,39593,39595)

	c = AddCollection(SHAMAN,ALL,MELEE,"Tier 7: Earthshatter Battlegear",80)
	AddSet(SHAMAN,ALL,c,MELEE,"25-Player Raid Set",80,213,EPIC,40521,40524,40523,40520,40522)
	AddSet(SHAMAN,ALL,c,MELEE,"10-Player Raid Set",80,200,EPIC,39602,39604,39597,39601,39603)

	c = AddCollection(SHAMAN,ALL,HEALER,"Tier 7: Earthshatter Garb",80)
	AddSet(SHAMAN,ALL,c,HEALER,"25-Player Raid Set",80,213,EPIC,40510,40513,40508,40509,40512)
	AddSet(SHAMAN,ALL,c,HEALER,"10-Player Raid Set",80,200,EPIC,39583,39590,39588,39591,39589)
	
	-- Tier 6
	c = AddCollection(SHAMAN,ALL,ALL,"Tier 6: Skyshatter Collection",70)
	AddSet(SHAMAN,ALL,c,CASTER,"Skyshatter Regalia",70,146,EPIC,31014,31023,31017,34437,31008,34542,31020,34566)
	AddSet(SHAMAN,ALL,c,MELEE,"Skyshatter Harness",70,146,EPIC,31015,31024,31018,34439,31011,34545,31021,34567)
	AddSet(SHAMAN,ALL,c,HEALER,"Skyshatter Raiment",70,146,EPIC,31012,31022,31016,34438,31007,34543,31019,34565)
	
	-- Tier 5
	c = AddCollection(SHAMAN,ALL,ALL,"Tier 5: Cataclysm Collection",70)
	AddSet(SHAMAN,ALL,c,CASTER,"Cataclysm Regalia",70,133,EPIC,30171,30173,30169,30170,30172)
	AddSet(SHAMAN,ALL,c,MELEE,"Cataclysm Harness",70,133,EPIC,30190,30194,30185,30189,30192)
	AddSet(SHAMAN,ALL,c,HEALER,"Cataclysm Raiment",70,133,EPIC,30166,30168,30164,30165,30167)
	
	-- Tier 4
	c = AddCollection(SHAMAN,ALL,ALL,"Tier 4: Cyclone Collection",70)
	AddSet(SHAMAN,ALL,c,CASTER,"Cyclone Regalia",70,120,EPIC,29035,29037,29033,29034,29036)
	AddSet(SHAMAN,ALL,c,MELEE,"Cyclone Harness",70,120,EPIC,29040,29043,29038,29039,29042)
	AddSet(SHAMAN,ALL,c,HEALER,"Cyclone Raiment",70,120,EPIC,29028,29031,29029,29032,29030)
	
	-- Tier 3
	c = AddCollection(SHAMAN,ALL,ALL,"Tier 3: Earthshatter Collection",60)
	AddSet(SHAMAN,ALL,c,CASTER,"The Earth Shatterer",60,86,EPIC,22466,22467,22464,22471,22469,22470,22465,22468,23065)
	
	-- Tier 2
	c = AddCollection(SHAMAN,ALL,ALL,"Tier 2: The Ten Storms Collection",60)
	AddSet(SHAMAN,ALL,c,CASTER,"The Ten Storms",60,76,EPIC,16947,16945,16950,16943,16948,16944,16946,16949)
	
	-- Tier 1
	c = AddCollection(SHAMAN,ALL,ALL,"Tier 1: Earthfury Collection",60)
	AddSet(SHAMAN,ALL,c,CASTER,"Earthfury Raiment",60,66,EPIC,16842,16844,16841,16840,16839,16838,16843,16837)
	
end

local function AddWarlockCollections()
	local c = 0
	
  -- Legendaries
	c = AddCollection(WARLOCK,ALL,CASTER,"Legendaries",85);
	AddSet(WARLOCK,ALL,c,CASTER,"Xing-Ho, Breath of Yulon",85,608,LEGENDARY,102246);
	AddSet(WARLOCK,ALL,c,CASTER,"Dragonwrath, Tarecgosa's Rest",85,397,LEGENDARY,71086);
	
	-- Tier 16
	c = AddCollection(WARLOCK,ALL,CASTER,"Tier 16: Regalia of the Horned Nightmare",90);
	AddSet(WARLOCK,ALL,c,CASTER,"Heroic Raid Set",90,566,EPIC,99424,99425,99426,99416,99417);
	AddSet(WARLOCK,ALL,c,CASTER,"Normal Raid Set",90,553,EPIC,99096,99097,99098,99204,99205);
	AddSet(WARLOCK,ALL,c,CASTER,"Flexible Raid Set",90,540,EPIC,99567,99568,99569,99570,99601);
	AddSet(WARLOCK,ALL,c,CASTER,"Raid Finder Set",90,528,EPIC,99053,99054,99055,99056,99045);
	-- Tier 15
	c = AddCollection(WARLOCK,ALL,CASTER,"Tier 15: Regalia of the Thousandfold Hells",90);
	AddSet(WARLOCK,ALL,c,CASTER,"Heroic Raid Set",90,535,EPIC,96725,96726,96727,96728,96729);
	AddSet(WARLOCK,ALL,c,CASTER,"Normal Raid Set",90,522,EPIC,95325,95326,95327,95328,95329);
	AddSet(WARLOCK,ALL,c,CASTER,"Raid Finder Set",90,502,EPIC,95981,95982,95983,95984,95985);
	-- Tier 14
	c = AddCollection(WARLOCK,ALL,CASTER,"Tier 14: Sha-Skin Regalia",90);
	AddSet(WARLOCK,ALL,c,CASTER,"Heroic Raid Set",90,509,EPIC,87188,87191,87190,87189,87187);
	AddSet(WARLOCK,ALL,c,CASTER,"Normal Raid Set",90,496,EPIC,85370,85373,85372,85371,85369);
	AddSet(WARLOCK,ALL,c,CASTER,"Raid Finder Set",90,483,EPIC,86710,86713,86712,86711,86709);
	-- Tier 13
	c = AddCollection(WARLOCK,ALL,CASTER,"Tier 13: Vestments of the Faceless Shroud",85);
	AddSet(WARLOCK,ALL,c,CASTER,"Heroic Raid Set",85,410,EPIC,78702,78749,78730,78681,78721);
	AddSet(WARLOCK,ALL,c,CASTER,"Normal Raid Set",85,397,EPIC,76342,76339,76340,76343,76341);
	AddSet(WARLOCK,ALL,c,CASTER,"Raid Finder Set",85,384,EPIC,78797,78844,78825,78776,78816);
	-- Tier 12
	c = AddCollection(WARLOCK,ALL,CASTER,"Tier 12: Balespider's Burning Vestments",85);
	AddSet(WARLOCK,ALL,c,CASTER,"Heroic Raid Set",85,391,EPIC,71595,71598,71597,71594,71596);
	AddSet(WARLOCK,ALL,c,CASTER,"Normal Raid Set",85,378,EPIC,71282,71285,71284,71281,71283);
	-- Tier 11
	c = AddCollection(WARLOCK,ALL,CASTER,"Tier 11: Shadowflame Regalia",85);
	AddSet(WARLOCK,ALL,c,CASTER,"Heroic Raid Set",85,372,EPIC,65259,65260,65261,65262,65263);
	AddSet(WARLOCK,ALL,c,CASTER,"Normal Raid Set",85,359,EPIC,60249,60250,60251,60252,60248);
	-- Tier 10
	c = AddCollection(WARLOCK,ALL,CASTER,"Tier 10: Dark Coven's Regalia",80);
	AddSet(WARLOCK,ALL,c,CASTER,"Heroic Raid Set",80,277,EPIC,51231,51234,51233,51230,51232);
	AddSet(WARLOCK,ALL,c,CASTER,"Normal Raid Set",80,264,EPIC,51208,51205,51206,51209,51207);
	AddSet(WARLOCK,ALL,c,CASTER,"Justice Points Set",80,251,EPIC,50241,50244,50243,50240,50242);
	-- Tier 9
	c = AddCollection(WARLOCK,ALLIANCE,CASTER,"Tier 9: Kel'Thuzad's Regalia",80);
	AddSet(WARLOCK,ALLIANCE,c,CASTER,"Heroic Raid Set",80,258,EPIC,47789,47792,47791,47788,47790);
	AddSet(WARLOCK,ALLIANCE,c,CASTER,"Normal Raid Set",80,245,EPIC,47778,47781,47779,47782,47780);
	AddSet(WARLOCK,ALLIANCE,c,CASTER,"Justice Points Set",80,232,EPIC,47784,47787,47786,47783,47785);
	c = AddCollection(WARLOCK,HORDE,CASTER,"Tier 9: Gul'dan's Regalia",80);
	AddSet(WARLOCK,HORDE,c,CASTER,"Heroic Raid Set",80,258,EPIC,47796,47793,47794,47797,47795);
	AddSet(WARLOCK,HORDE,c,CASTER,"Normal Raid Set",80,245,EPIC,47804,47807,47806,47803,47805);
	AddSet(WARLOCK,HORDE,c,CASTER,"Justice Points Set",80,232,EPIC,47801,47798,47799,47802,47800);
	-- Tier 8
	c = AddCollection(WARLOCK,ALL,CASTER,"Tier 8: Deathbringer Garb",80)
	AddSet(WARLOCK,ALL,c,CASTER,"25-Player Raid Set",80,226,EPIC,46140,46136,46137,46135,46139)
	AddSet(WARLOCK,ALL,c,CASTER,"10-Player Raid Set",80,219,EPIC,45417,45422,45421,45419,45420)
	-- Tier 7
	c = AddCollection(WARLOCK,ALL,CASTER,"Tier 7: Plagueheart Garb",80)
	AddSet(WARLOCK,ALL,c,CASTER,"25-Player Raid Set",80,213,EPIC,40421,40424,40423,40420,40422);	
	AddSet(WARLOCK,ALL,c,CASTER,"10-Player Raid Set",80,200,EPIC,39496,39499,39497,39500,39498);
	-- Tier 6
	c = AddCollection(WARLOCK,ALL,CASTER,"Tier 6: Malefic Collection",70)
	AddSet(WARLOCK,ALL,c,CASTER,"Malefic Raiment",70,146,EPIC,31051,31054,31052,34436,31050,34541,31053,34564)
	-- Tier 5
	c = AddCollection(WARLOCK,ALL,CASTER,"Tier 5: Corruptor Collection",70)
	AddSet(WARLOCK,ALL,c,CASTER,"Corruptor Raiment",70,133,EPIC,30212,30215,30214,30211,30213)
	-- Tier 4
	c = AddCollection(WARLOCK,ALL,CASTER,"Tier 4: Voidheart Collection",70)
	AddSet(WARLOCK,ALL,c,CASTER,"Voidheart Raiment",70,120,EPIC,28963,28967,28964,28968,28966)
	-- Tier 3
	c = AddCollection(WARLOCK,ALL,CASTER,"Tier 3: Plagueheart Collection",60)
	AddSet(WARLOCK,ALL,c,CASTER,"Plagueheart Raiment",60,86,EPIC,22506,22507,22504,22511,22509,22510,22505,22508,23063)
	-- Tier 2
	c = AddCollection(WARLOCK,ALL,CASTER,"Tier 2: Nemesis Collection",60)
	AddSet(WARLOCK,ALL,c,CASTER,"Nemesis Raiment",60,76,EPIC,16929,16932,16931,16934,16928,16933,16930,16927)
	-- Tier 1
	c = AddCollection(WARLOCK,ALL,CASTER,"Tier 1: Felheart Collection",60)
	AddSet(WARLOCK,ALL,c,CASTER,"Felheart Raiment",60,66,EPIC,16808,16807,16809,16804,16805,16806,16810,16803)

end

local function AddWarriorCollections()
	local c = 0
	
  -- Legendaries
	c = AddCollection(WARRIOR,ALL,ALL,"Legendary",90);
	AddSet(WARRIOR,ALL,c,MELEE,"Gong-Lu, Strength of Xuen",90,608,LEGENDARY,102249);
	AddSet(WARRIOR,ALL,c,TANK,"Qian-Ying, Fortitude of Niuzao",90,608,LEGENDARY,102250);	

	-- Tier 16
	c = AddCollection(WARRIOR,ALL,MELEE,"Tier 16: Battleplate of the Prehistoric Marauder",90);
	AddSet(WARRIOR,ALL,c,MELEE,"Heroic Raid Set",90,566,EPIC,99418,99414,99411,99413,99412)
	AddSet(WARRIOR,ALL,c,MELEE,"Normal Raid Set",90,553,EPIC,99206,99200,99197,99199,99198)
	AddSet(WARRIOR,ALL,c,MELEE,"Flexible Raid Set",90,540,EPIC,99602,99561,99603,99560,99559)
	AddSet(WARRIOR,ALL,c,MELEE,"Raid Finder Set",90,528,EPIC,99046,99036,99047,99035,99034)

	c = AddCollection(WARRIOR,ALL,TANK,"Tier 16: Plate of the Prehistoric Marauder",90);
	AddSet(WARRIOR,ALL,c,TANK,"Heroic Raid Set",90,566,EPIC,99032,99030,99037,99033,99038)
	AddSet(WARRIOR,ALL,c,TANK,"Normal Raid Set",90,553,EPIC,99557,99597,99562,99558,99563)
	AddSet(WARRIOR,ALL,c,TANK,"Flexible Raid Set",90,540,EPIC,99203,99196,99201,99195,99202)
	AddSet(WARRIOR,ALL,c,TANK,"Raid Finder Set",90,528,EPIC,99409,99407,99415,99410,99408)	
	
	-- Tier 15
	c = AddCollection(WARRIOR,ALL,MELEE,"Tier 15: Battleplate of the Last Mogu",90);
	AddSet(WARRIOR,ALL,c,MELEE,"Heroic Raid Set",90,535,EPIC,96731,96732,96730,96733,96734)
	AddSet(WARRIOR,ALL,c,MELEE,"Normal Raid Set",90,522,EPIC,95331,95332,95330,95333,95334)
	AddSet(WARRIOR,ALL,c,MELEE,"Raid Finder Set",90,502,EPIC,95987,95988,95986,95989,95990)

	c = AddCollection(WARRIOR,ALL,TANK,"Tier 15: Plate of the Last Mogu",90);
	AddSet(WARRIOR,ALL,c,TANK,"Heroic Raid Set",90,535,EPIC,96735,96737,96736,96738,96739)
	AddSet(WARRIOR,ALL,c,TANK,"Normal Raid Set",90,522,EPIC,95335,95337,95336,95338,95339)
	AddSet(WARRIOR,ALL,c,TANK,"Raid Finder Set",90,502,EPIC,95991,95993,95992,95994,95995)
	
	-- Tier 14
	c = AddCollection(WARRIOR,ALL,MELEE,"Tier 14: Battleplate of Resounding Rings",90);
	AddSet(WARRIOR,ALL,c,MELEE,"Heroic Raid Set",90,509,EPIC,87192,87196,87193,87195,87194);
	AddSet(WARRIOR,ALL,c,MELEE,"Normal Raid Set",90,496,EPIC,85333,85329,85332,85330,85331);
	AddSet(WARRIOR,ALL,c,MELEE,"Raid Finder Set",90,483,EPIC,86673,86669,86672,86670,86671);

	c = AddCollection(WARRIOR,ALL,TANK,"Tier 14: Plate of Resounding Rings",90);
	AddSet(WARRIOR,ALL,c,TANK,"Heroic Raid Set",90,535,EPIC,87199,87201,87197,87200,87198);
	AddSet(WARRIOR,ALL,c,TANK,"Normal Raid Set",90,522,EPIC,85326,85324,85328,85325,85327);
	AddSet(WARRIOR,ALL,c,TANK,"Raid Finder Set",90,502,EPIC,86666,86664,86668,86665,86667);
	
	-- Tier 13
	c = AddCollection(WARRIOR,ALL,MELEE,"Tier 13: Colossal Dragonplate Battlegear",85);
	AddSet(WARRIOR,ALL,c,MELEE,"Heroic Raid Set",85,410,EPIC,78688,78735,78657,78668,78706);
	AddSet(WARRIOR,ALL,c,MELEE,"Normal Raid Set",85,397,EPIC,76983,76987,76984,76985,76986);
	AddSet(WARRIOR,ALL,c,MELEE,"Raid Finder Set",85,384,EPIC,78783,78830,78752,78763,78801);

	c = AddCollection(WARRIOR,ALL,TANK,"Tier 13: Colossal Dragonplate Armor",85);
	AddSet(WARRIOR,ALL,c,TANK,"Heroic Raid Set",85,410,EPIC,78784,78829,78753,78764,78800);
	AddSet(WARRIOR,ALL,c,TANK,"Normal Raid Set",85,397,EPIC,76990,76992,76988,76989,76991);
	AddSet(WARRIOR,ALL,c,TANK,"Raid Finder Set",85,384,EPIC,78689,78734,78658,78669,78705);
	
	-- Tier 12
	c = AddCollection(WARRIOR,ALL,MELEE,"Tier 12: Molten Giant Warplate",85);
	AddSet(WARRIOR,ALL,c,MELEE,"Heroic Raid Set",85,391,EPIC,71599,71603,71600,71601,71602);
	AddSet(WARRIOR,ALL,c,MELEE,"Normal Raid Set",85,378,EPIC,71070,71072,71068,71069,71071);

	c = AddCollection(WARRIOR,ALL,TANK,"Tier 12: Molten Giant Battleplate",85);
	AddSet(WARRIOR,ALL,c,TANK,"Heroic Raid Set",85,391,EPIC,71606,71608,71604,71605,71607);	
	AddSet(WARRIOR,ALL,c,TANK,"Normal Raid Set",85,378,EPIC,70944,70941,70945,70943,70942);
	
	-- Tier 11
	c = AddCollection(WARRIOR,ALL,MELEE,"Tier 11: Molten Giant Warplate",85);
	AddSet(WARRIOR,ALL,c,MELEE,"Heroic Raid Set",85,372,EPIC,65264,65265,65266,65267,65268);
	AddSet(WARRIOR,ALL,c,MELEE,"Normal Raid Set",85,359,EPIC,60323,60324,60325,60326,60327);

	c = AddCollection(WARRIOR,ALL,TANK,"Tier 11: Molten Giant Battleplate",85);
	AddSet(WARRIOR,ALL,c,TANK,"Heroic Raid Set",85,372,EPIC,65269,65270,65271,65272,65273);
	AddSet(WARRIOR,ALL,c,TANK,"Normal Raid Set",85,359,EPIC,60328,60329,60330,60331,60332);
	
	-- Tier 10
	c = AddCollection(WARRIOR,ALL,MELEE,"Tier 10: Ymirjar Warlord's Battlegear",80);
	AddSet(WARRIOR,ALL,c,MELEE,"Heroic Raid Set",80,277,EPIC,51227,51229,51225,51226,51228);
	AddSet(WARRIOR,ALL,c,MELEE,"Normal Raid Set",80,264,EPIC,51212,51210,51214,51213,51211);
	AddSet(WARRIOR,ALL,c,MELEE,"Justice Points Set",80,251,EPIC,50080,50082,50078,50079,50081);

	c = AddCollection(WARRIOR,ALL,TANK,"Tier 10: Ymirjar Warlord's Plate",80);
	AddSet(WARRIOR,ALL,c,TANK,"Heroic Raid Set",80,277,EPIC,51221,51224,51220,51222,51223);
	AddSet(WARRIOR,ALL,c,TANK,"Normal Raid Set",80,264,EPIC,51218,51215,51219,51217,51216);
	AddSet(WARRIOR,ALL,c,TANK,"Justice Points Set",80,251,EPIC,50848,50846,50850,50849,50847);

	-- Tier 9
	c = AddCollection(WARRIOR,ALLIANCE,MELEE,"Tier 9: Wrynn's Battlegear",80);
	AddSet(WARRIOR,ALLIANCE,c,MELEE,"Heroic Raid Set",80,258,EPIC,48383,48381,48385,48384,48382);
	AddSet(WARRIOR,ALLIANCE,c,MELEE,"Normal Raid Set",80,245,EPIC,48378,48380,48376,48377,48379);
	AddSet(WARRIOR,ALLIANCE,c,MELEE,"Justice Points Set",80,232,EPIC,48371,48374,48372,48375,48373);
	
	c = AddCollection(WARRIOR,ALLIANCE,TANK,"Tier 9: Wrynn's Plate",80);
	AddSet(WARRIOR,ALLIANCE,c,TANK,"Heroic Raid Set",80,258,EPIC,48433,48455,48451,48453,48447);
	AddSet(WARRIOR,ALLIANCE,c,TANK,"Normal Raid Set",80,248,EPIC,48430,48454,48450,48452,48446);
	AddSet(WARRIOR,ALLIANCE,c,TANK,"Justice Points Set",80,232,EPIC,48429,48448,48436,48449,48445);

	c = AddCollection(WARRIOR,HORDE,MELEE,"Tier 9: Hellscream's Battlegear",80);
	AddSet(WARRIOR,HORDE,c,MELEE,"Heroic Raid Set",80,258,EPIC,48398,48400,48396,48397,48399);
	AddSet(WARRIOR,HORDE,c,MELEE,"Normal Raid Set",80,245,EPIC,48393,48395,48391,48392,48394);
	AddSet(WARRIOR,HORDE,c,MELEE,"Justice Points Set",80,232,EPIC,48388,48390,48386,48387,48389);

	c = AddCollection(WARRIOR,HORDE,TANK,"Tier 9: Hellscream's Plate",80);
	AddSet(WARRIOR,HORDE,c,TANK,"Heroic Raid Set",80,258,EPIC,48468,48470,48466,48467,48469);
	AddSet(WARRIOR,HORDE,c,TANK,"Normal Raid Set",80,245,EPIC,48463,48465,48461,48462,48464);
	AddSet(WARRIOR,HORDE,c,TANK,"Justice Points Set",80,232,EPIC,48458,48460,48456,48457,48459);
	
	-- Tier 8
	c = AddCollection(WARRIOR,ALL,MELEE,"Tier 8: Ymirjar Warlord's Battlegear",80)
	AddSet(WARRIOR,ALL,c,MELEE,"25-Player Raid Set",80,226,EPIC,46151,46149,46146,46148,46150)
	AddSet(WARRIOR,ALL,c,MELEE,"10-Player Raid Set",80,219,EPIC,45431,45433,45429,45430,45432)

	c = AddCollection(WARRIOR,ALL,TANK,"Tier 8: Ymirjar Warlord's Plate",80)
	AddSet(WARRIOR,ALL,c,TANK,"25-Player Raid Set",80,226,EPIC,46166,46167,46164,46162,46169)
	AddSet(WARRIOR,ALL,c,TANK,"10-Player Raid Set",80,219,EPIC,45425,45428,45424,45426,45427)

	-- Tier 7
	c = AddCollection(WARRIOR,ALL,MELEE,"Tier 7: Dreadnaught Battlegear",80)
	AddSet(WARRIOR,ALL,c,MELEE,"25-Player Raid Set",80,213,EPIC,40528,40530,40525,40527,40529)
	AddSet(WARRIOR,ALL,c,MELEE,"10-Player Raid Set",80,200,EPIC,39605,39608,39606,39609,39607)
	
	c = AddCollection(WARRIOR,ALL,TANK,"Tier 7: Dreadnaught Plate",80)
	AddSet(WARRIOR,ALL,c,TANK,"25-Player Raid Set",80,213,EPIC,40546,40548,40544,40545,40547)
	AddSet(WARRIOR,ALL,c,TANK,"10-Player Raid Set",80,200,EPIC,39610,39613,39611,39622,39612)
	
	-- Tier 6
	c = AddCollection(WARRIOR,ALL,ALL,"Tier 6: Onslaught Collection",70)
	AddSet(WARRIOR,ALL,c,MELEE,"Onslaught Battlegear",70,146,EPIC,30972,30979,30975,34441,30969,34546,30977,34569)
	AddSet(WARRIOR,ALL,c,TANK,"Onslaught Armor",70,146,EPIC,30974,30980,30976,34442,30970,34547,30978,34568)
	
	-- Tier 5
	c = AddCollection(WARRIOR,ALL,ALL,"Tier 5: Destroyer Collection",70)
	AddSet(WARRIOR,ALL,c,MELEE,"Destroyer Battlegear",70,133,EPIC,30120,30122,30118,30119,30121)
	AddSet(WARRIOR,ALL,c,TANK,"Destroyer Armor",70,133,EPIC,30115,30117,30113,30114,30116)
	
	-- Tier 4
	c = AddCollection(WARRIOR,ALL,ALL,"Tier 4: Warbringer Collection",70)
	AddSet(WARRIOR,ALL,c,MELEE,"Warbringer Battlegear",70,120,EPIC,29021,29023,29019,29020,29022)
	AddSet(WARRIOR,ALL,c,TANK,"Warbringer Armor",70,120,EPIC,29011,29016,29012,29017,29015)
	
	-- Tier 3
	c = AddCollection(WARRIOR,ALL,ALL,"Tier 3: Dreadnaught Collection",60)
	AddSet(WARRIOR,ALL,c,ALL,"Dreadnaught's Battlegear",60,86,EPIC,22418,22419,22416,22423,22421,22422,22417,22420,23059)
	
	-- Tier 2
	c = AddCollection(WARRIOR,ALL,ALL,"Tier 2: Wrath Collection",60)
	AddSet(WARRIOR,ALL,c,ALL,"Battlegear of Wrath",60,76,EPIC,16963,16961,16966,16959,16964,16960,16962,16965)
	
	-- Tier 1
	c = AddCollection(WARRIOR,ALL,ALL,"Tier 1: Might Collection",60)
	AddSet(WARRIOR,ALL,c,ALL,"Battlegear of Might",60,66,EPIC,16866,16868,16865,16861,16863,16864,16867,16862)
	
end



--
-- Setup Database
--

function SetCollectorSetupDB()
	if SetCollectorDB.version ~= DB_VERSION then
		-- Clear previous DB to avoid duplicate entries
		SetCollectorDB = { }
		
		-- Set DB VERSION
		SetCollectorDB["version"] = DB_VERSION
		
		-- Initialize Classes (with Metadata)
		SetCollectorDB[DEATHKNIGHT] = {	Name = DEATHKNIGHT, Collections = { } }
		SetCollectorDB[DRUID] 			= {	Name = DRUID, 			Collections = { }	}
		SetCollectorDB[HUNTER] 			= {	Name = HUNTER, 			Collections = { } }
		SetCollectorDB[MAGE] 				= {	Name = MAGE, 				Collections = { } }
		SetCollectorDB[MONK] 				= {	Name = MONK, 				Collections = { } }
		SetCollectorDB[PALADIN] 		= {	Name = PALADIN, 		Collections = { } }
		SetCollectorDB[PRIEST] 			= {	Name = PRIEST, 			Collections = { } }
		SetCollectorDB[ROGUE] 			= {	Name = ROGUE, 			Collections = { } }
		SetCollectorDB[SHAMAN] 			= {	Name = SHAMAN, 			Collections = { } }
		SetCollectorDB[WARLOCK] 		= {	Name = WARLOCK, 		Collections = { } }
		SetCollectorDB[WARRIOR] 		= {	Name = WARRIOR, 		Collections = { } }
	
		-- Add Collections
		AddDeathKnightCollections()
		AddDruidCollections()
		AddHunterCollections()
		AddMageCollections()
		AddMonkCollections()
		AddPaladinCollections()
		AddPriestCollections()
		AddRogueCollections()
		AddShamanCollections()
		AddWarlockCollections()
		AddWarriorCollections()
	end
end