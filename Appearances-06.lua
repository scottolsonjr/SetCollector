-- Appearances from Warlords of Draenor (v.6.x)

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


local function GetRaidAppearances()
	local col = SetCollector.RAID
	local set = ""

	-- Hellfire Citadel
	set = SetCollector:AddSet(70000,nil,col,180,"TR_CLOTH_18",CLOTH,ANY,ANY,ANY)
			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25845,73196),A(25847,73166),A(25849,73182),A(25844,73228),A(25846,73200),A(25842,72970))	-- Need belt
	set = SetCollector:AddSet(70000,nil,col,180,"TR_LEATHER_18",LEATHER,ANY,ANY,ANY)
			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25983,73204),A(25985,73170),A(25981,73184),A(25982,73232),A(25984,73208),A(25979,72978))		-- Need belt
	set = SetCollector:AddSet(70000,nil,col,180,"TR_MAIL_18",MAIL,ANY,ANY,ANY)
			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25949,73212),A(25950,73174),A(25947,73188),A(25952,73110),A(25948,73236),A(25945,72986),A(25951,73216),A(25946,73082))
	set = SetCollector:AddSet(70000,nil,col,180,"TR_PLATE_18",PLATE,ANY,ANY,ANY)
			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(25933,73220),A(25935,73178),A(25931,73192),A(25932,73240),A(25934,73224),A(25930,72890))		-- Need belt
	
	-- Blackrock Foundry
	set = SetCollector:AddSet(70000,nil,col,170,"TR_CLOTH_17",CLOTH,ANY,ANY,ANY)
			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(22599,67988),A(22595,68000),A(22597,67996),A(22598,67992),A(22600,68004),A(22594,68007))		-- Need belt
	set = SetCollector:AddSet(70000,nil,col,170,"TR_LEATHER_17",LEATHER,ANY,ANY,ANY)
			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(23053,68023),A(23055,68019),A(23051,68013),A(23052,68031),A(23054,68011),A(23050,68027))		-- Need belt
	set = SetCollector:AddSet(70000,nil,col,170,"TR_MAIL_17",MAIL,ANY,ANY,ANY)
			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(22684,68055),A(22686,68047),A(22682,68051),A(22683,68039),A(22680,66917),A(22685,68035),A(22681,68043))
	set = SetCollector:AddSet(70000,nil,col,170,"TR_PLATE_17",PLATE,ANY,ANY,ANY)
			SetCollector:AddVariant(70000,nil,col,set,"RAIDFINDER",TRANSMOG,A(22640,68079),A(22642,68075),A(22638,68067),A(22639,68063),A(22641,68059),A(22637,68071))		-- Need belt
end


local function GetDungeonAppearances()
	local col = SetCollector.DUNGEON
	local set = ""

	--set = SetCollector:AddSet(70000,nil,col,31,"DG_CLOTH_06",CLOTH,ANY,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"DG_CLOTH_06",TRANSMOG,A(22461),A(),A(),A(),A(),A(22455),A(),A()) -- Felflame
	--set = SetCollector:AddSet(70000,nil,col,31,"DG_LEATHER_03",LEATHER,ANY,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"DG_LEATHER_06",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
	--set = SetCollector:AddSet(70000,nil,col,31,"DG_MAIL_06",MAIL,ANY,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"DG_MAIL_06",TRANSMOG,A(22435),A(),A(22449),A(22430),A(),A(22431),A(22436),A()) -- Sharpeye
	--set = SetCollector:AddSet(70000,nil,col,31,"DG_PLATE_06",PLATE,ANY,ANY,ANY)
	--			SetCollector:AddVariant(70000,nil,col,set,"DG_PLATE_06",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
end


local function GetGarrisonAppearances()
	local col = SetCollector.GARRISON
	local set = ""
	
	set = SetCollector:AddSet(70000,nil,col,602,"GA_BWM_SET_100",CLOTH,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"CLOTH",TRANSMOG,A(23099),A(23096),A(23097),A(24893),A(23098),A(23807),A(23100),A(23806))
	set = SetCollector:AddSet(70000,nil,col,602,"GA_BWM_SET_100",LEATHER,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"LEATHER",TRANSMOG,A(22857),A(22859),A(22855),A(22852),A(22856),A(22853),A(22858),A(22854))
	set = SetCollector:AddSet(70000,nil,col,602,"GA_BWM_SET_100",MAIL,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"MAIL",TRANSMOG,A(22945),A(22944),A(22947),A(22950),A(22946),A(22949),A(23810),A(22948))
	set = SetCollector:AddSet(70000,nil,col,602,"GA_BWM_SET_100",PLATE,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"PLATE",TRANSMOG,A(23274),A(23278),A(23265),A(24323),A(23271),A(23259),A(23277),A(23262))
	
	set = SetCollector:AddSet(70000,nil,col,601,"GA_ALLIANCE_SET",ANY,ANY,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"GA_ALLIANCE_SET",TRANSMOG,A(24474),A(24476),A(24472),A(24473),A(24470),A(24475),A(24471),A(185))
	
	set = SetCollector:AddSet(70000,nil,col,601,"GA_HORDE_SET",ANY,ANY,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"GA_HORDE_SET",TRANSMOG,A(24054),A(24051),A(24052),A(24817),A(24053),A(24050),A(24854))
				
	set = SetCollector:AddSet(70000,nil,col,600,"OTH_SHIPYARD_100",ANY,ANY,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"CAPTAIN",TRANSMOG,A(26891,73444))
				SetCollector:AddVariant(70000,nil,col,set,"FLEETCOMMANDER",TRANSMOG,A(26888,73447))
	set = SetCollector:AddSet(70000,nil,col,600,"OTH_SHIPYARD_100",ANY,ANY,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"CAPTAIN",TRANSMOG,A(26892,73445))
				SetCollector:AddVariant(70000,nil,col,set,"FLEETCOMMANDER",TRANSMOG,A(26889,73446))
end


local function GetCraftedAppearances()
	local col = SetCollector.GARRISON
	local set = ""
	
	set = SetCollector:AddSet(70000,nil,col,100,"CR_PLATE_100",PLATE,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"CR_PLATE_100",TRANSMOG,A(27327,80888),A(27329,80890),A(27325,80885),A(27330,80892),A(27326,80887),A(27323,80891),A(27328,80889),A(27324,80886))
end


local function GetOtherAppearances()
	local col = SetCollector.OTHER
	local set = ""

	set = SetCollector:AddSet(70000,nil,col,1009,"OTH_CLOTH_100",CLOTH,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"OTH_CLOTH_100",TRANSMOG,A(31376,79535),A(31379,79537),A(31718,79539),A(31374,79538),A(31380,79532),A(31375,79533),A(31372,79531),A(31377,79536),A(31373,79534))
	set = SetCollector:AddSet(70000,nil,col,1009,"OTH_LEATHER_100",LEATHER,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"OTH_LEATHER_100",TRANSMOG,A(31393,79520),A(31396,79521),A(31718,79539),A(31394,79541),A(31397,79516),A(31392,79519),A(31390,79522),A(31395,79518),A(31391,79517))
	set = SetCollector:AddSet(70000,nil,col,1009,"OTH_MAIL_100",MAIL,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"OTH_MAIL_100",TRANSMOG,A(31385,79527),A(31387,79529),A(31718,79539),A(31383,79530),A(31388,79524),A(31384,79525),A(31381,79523),A(31386,79528),A(31382,79526))
	set = SetCollector:AddSet(70000,nil,col,1009,"OTH_PLATE_100",PLATE,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"OTH_PLATE_100",TRANSMOG,A(31310,79511),A(31312,79513),A(31718,79539),A(31308,79508),A(31313,79515),A(31309,79509),A(31306,79510),A(31311,79512),A(31307,79514))
	set = SetCollector:AddSet(70000,nil,col,1008,"OTH_LOCKET_100",ANY,ANY,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"OTH_LOCKET_100",TRANSMOG,A(31906,80788))
	set = SetCollector:AddSet(70000,nil,col,1008,"OTH_SHOES_100",ANY,ANY,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"OTH_SHOES_100",TRANSMOG,A(25398,51820,97901))
	set = SetCollector:AddSet(70000,nil,col,1007,"OT_ELR_100",CLOTH,ANY,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"OT_ELR_100",TRANSMOG,A(26087,69593),A(26841,69650),A(26842,73423))
end


local function GetShamanAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	-- Hellfire Citadel
	set = SetCollector:AddSet(70000,nil,col,181,"SH_TR_18",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(26019,69889),A(26021,69928),A(26023,69910),A(26022,69947),A(26018,69875),A(26016,69931),A(26020,69907),A(26472,69849))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(26036,69890),A(26038,69929),A(26040,69911),A(26039,69949),A(26035,69876),A(26033,69933),A(26037,69908),A(26474,69851))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(26000,69891),A(26002,69930),A(26004,69912),A(26003,69950),A(25999,69877),A(25996,69934),A(26001,69909),A(25997,69852))
	-- 	Blackrock Foundry
	set = SetCollector:AddSet(70000,nil,col,171,"SH_TR_17",MAIL,SHAMAN,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23360,64469),A(23361,64466),A(23363,64467),A(23367,62870),A(23368,64468),A(23364,62790),A(23365,64465),A(23366,62837))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23370,67287),A(23371,67281),A(23373,67283),A(23377,62872),A(23378,67285),A(23374,62792),A(23375,67279),A(23376,62839))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23678,67288),A(23679,67282),A(23688,67284),A(23687,67277),A(23677,67286),A(23674,67274),A(23689,67280),A(23675,67276))
	
	col = SetCollector.PVP
	-- Season
	set = SetCollector:AddSet(70000,nil,col,18,"SH_PVP_18",MAIL,SHAMAN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25957,71666),A(25958,71668),A(25955,71664),A(25956,71665),A(25959,71667))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25957,71585),A(25958,71587),A(25955,71583),A(25956,71584),A(25959,71586))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26027,71448),A(26030,71450),A(26031,71446),A(26026,71447),A(26572,71449))
	set = SetCollector:AddSet(70000,nil,col,18,"SH_PVP_18",MAIL,SHAMAN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25941,72044),A(25942,72046),A(25939,72042),A(25940,72043),A(25943,72045))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25941,71963),A(25942,71965),A(25939,71961),A(25940,71962),A(25943,71964))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26009,71826),A(26011,71828),A(26015,71824),A(26008,71825),A(26574,71827))
	-- Season
	set = SetCollector:AddSet(70000,nil,col,17,"SH_PVP_17",MAIL,SHAMAN,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25941,70755),A(25942,70757),A(25939,70753),A(25940,70754),A(25943,70756))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25941,70674),A(25942,70676),A(25939,70672),A(25940,70673),A(25943,70675))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26009,70537),A(26011,70539),A(26015,70535),A(26008,70536),A(26572,70538))
	set = SetCollector:AddSet(70000,nil,col,17,"SH_PVP_17",MAIL,SHAMAN,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25957,71133),A(25958,71135),A(25955,71131),A(25956,71132),A(25959,71134))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25957,71052),A(25958,71054),A(25955,71050),A(25956,71051),A(25959,71053))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26027,70915),A(26030,70917),A(26031,70913),A(26026,70914),A(26572,70916))
end


local function GetWarlockAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	-- Hellfire Citadel
	set = SetCollector:AddSet(70000,nil,col,181,"WK_TR_18",CLOTH,WARLOCK,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(26169,69603),A(26171,69660),A(26173,69639),A(26168,69584),A(26165,69667),A(26170,69619))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(26160,69604),A(26162,69661),A(26164,69640),A(26159,69585),A(26156,69669),A(26161,69620))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(26214,69605),A(26216,69662),A(26218,69641),A(26213,69586),A(26210,69670),A(26215,69621))
	-- Blackrock Foundry
	set = SetCollector:AddSet(70000,nil,col,171,"WK_TR_17",CLOTH,WARLOCK,CASTER,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23850,64476),A(23853,64479),A(23852,64478),A(23849,64475),A(23851,64477))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23841,67225),A(23844,67231),A(23843,67229),A(23840,67223),A(23842,67227))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23866,67226),A(23869,67232),A(23868,67230),A(23865,67224),A(23867,67228))

	col = SetCollector.PVP
	-- Season
	set = SetCollector:AddSet(70000,nil,col,18,"WK_PVP_18",CLOTH,WARLOCK,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25854,71672),A(25856,71675),A(25858,71674),A(25853,71671),A(25855,71673))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25854,71600),A(25856,71603),A(25858,71602),A(25853,71599),A(25855,71601))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26187,71463),A(26189,71466),A(26191,71465),A(26186,71462),A(26188,71464))
	set = SetCollector:AddSet(70000,nil,col,18,"WK_PVP_18",CLOTH,WARLOCK,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25835,72050),A(25837,72053),A(25839,72052),A(25834,72049),A(25836,72051))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25835,71978),A(25837,71981),A(25839,71980),A(25834,71977),A(25836,71979))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26178,71841),A(26180,71844),A(26182,71843),A(26177,71840),A(26179,71842))
	-- Season
	set = SetCollector:AddSet(70000,nil,col,17,"WK_PVP_17",CLOTH,WARLOCK,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25835,70761),A(25837,70764),A(25839,70763),A(25834,70760),A(25836,70762))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25835,70689),A(25837,70692),A(25839,70691),A(25834,70688),A(25836,70690))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26178,70552),A(26180,70555),A(26182,70554),A(26177,70551),A(26179,70553))
	set = SetCollector:AddSet(70000,nil,col,17,"WK_PVP_17",CLOTH,WARLOCK,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25854,71139),A(25856,71142),A(25858,71141),A(25853,71138),A(25855,71140))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25854,71067),A(25856,71070),A(25858,71069),A(25853,71066),A(25855,71068))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(26187,70930),A(26189,70933),A(26191,70932),A(26186,70929),A(26188,70931))

end


local function GetWarriorAppearances()
	local col = ""
	local set = ""
	
	col = SetCollector.RAID
	set = SetCollector:AddSet(70000,nil,col,181,"WR_TR_18",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(25500,70023),A(25501,70065),A(25498,69969),A(25499,70006),A(25496,70076),A(25503,70044),A(25497,69972))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(25492,70024),A(25493,70066),A(25490,69970),A(25491,70007),A(25488,70078),A(25495,70045),A(25489,69974))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(25649,70025),A(25650,70067),A(25647,69971),A(25648,70008),A(25645,70079),A(25652,70046),A(25646,69975))
	
	set = SetCollector:AddSet(70000,nil,col,171,"WR_TR_17",PLATE,WARRIOR,ANY,ANY)
				SetCollector:AddVariant(70000,nil,col,set,"NORMAL",TRANSMOG,A(23069,64474),A(23071,64471),A(23067,64472),A(23068,64473),A(23070,64470))
				SetCollector:AddVariant(70000,nil,col,set,"HEROIC",TRANSMOG,A(23113,67174),A(23115,67168),A(23111,67170),A(23112,67172),A(23114,67166))
				SetCollector:AddVariant(70000,nil,col,set,"MYTHIC",TRANSMOG,A(23151,67175),A(23152,67169),A(23156,67171),A(23157,67173),A(23158,67167))

	col = SetCollector.PVP
	set = SetCollector:AddSet(70000,nil,col,18,"WR_PVP_18",PLATE,WARRIOR,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71678),A(25919,71680),A(25915,71676),A(25916,71677),A(25918,71679))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,71606),A(25919,71608),A(25915,71604),A(25916,71605),A(25918,71607))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25518,71469),A(25519,71471),A(25516,71467),A(25517,71468),A(25521,71470))
	set = SetCollector:AddSet(70000,nil,col,18,"WR_PVP_18",PLATE,WARRIOR,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,72056),A(25927,72058),A(25923,72054),A(25924,72055),A(25926,72057))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,71984),A(25927,71986),A(25923,71982),A(25924,71983),A(25926,71985))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25508,71847),A(25509,71849),A(25506,71845),A(25507,71846),A(25511,71848))
				
	set = SetCollector:AddSet(70000,nil,col,17,"WR_PVP_17",PLATE,WARRIOR,ANY,ALLIANCE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25925,70767),A(25927,70769),A(25923,70765),A(25924,70766),A(25926,70768))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25925,70695),A(25927,70697),A(25923,70693),A(25924,70694),A(25926,70696))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25508,70558),A(25509,70560),A(25506,70556),A(25507,70557),A(25511,70559))
	set = SetCollector:AddSet(70000,nil,col,17,"WR_PVP_17",PLATE,WARRIOR,ANY,HORDE)
				SetCollector:AddVariant(70000,nil,col,set,"ASPIRANT",TRANSMOG,A(25917,71145),A(25919,71147),A(25915,71143),A(25916,71144),A(25918,71146))
				SetCollector:AddVariant(70000,nil,col,set,"COMBATANT",TRANSMOG,A(25917,71073),A(25919,71075),A(25915,71071),A(25916,71072),A(25918,71074))
				SetCollector:AddVariant(70000,nil,col,set,"GLADIATOR",TRANSMOG,A(25518,70936),A(25519,70938),A(25516,70934),A(25517,70935),A(25521,70937))
end


--
--	GLOBAL FUNCTIONS
--

function SetCollector:GetVersion02Appearances()
	GetRaidAppearances()
	GetDungeonAppearances()
	GetGarrisonAppearances()
	GetCraftedAppearances()
	GetOtherAppearances()

	GetShamanAppearances()
	GetWarlockAppearances()
	GetWarriorAppearances()
end


