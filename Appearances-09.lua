-- Appearances from Shadowlands (v.9.x)

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

-- Collection Types
local OUTFITS 		= SetCollector.OUTFITS
local ARTIFACT 		= SetCollector.ARTIFACT
local LEGENDARY 	= SetCollector.LEGENDARY
local RAID 			= SetCollector.RAID
local DUNGEON 		= SetCollector.DUNGEON
local CHALLENGE 	= SetCollector.CHALLENGE
local PVP 			= SetCollector.PVP
local GARRISON 		= SetCollector.GARRISON
local CRAFTED 		= SetCollector.CRAFTED
local OTHER			= SetCollector.OTHER
local CUSTOM		= SetCollector.CUSTOM
local HOLIDAY		= SetCollector.HOLIDAY

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
        
    -- Castle Nathria
    set = SetCollector:AddSet(90000,nil,col,250,"TR_CLOTH_26",CLOTH,ANY,ANY,ANY)
            --SetCollector:AddVariant(90000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
            SetCollector:AddVariant(90000,nil,col,set,"NORMAL",TRANSMOG,A(42601),A(42603),A(42597),A(42623),A(42618),A(42604),A(42602),A(42608))
            --SetCollector:AddVariant(90000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
            --SetCollector:AddVariant(90000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,250,"TR_LEATHER_26",LEATHER,ANY,ANY,ANY)
            --SetCollector:AddVariant(90000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
            SetCollector:AddVariant(90000,nil,col,set,"NORMAL",TRANSMOG,A(42711),A(42686),A(42707),A(42697),A(42683),A(42714),A(42712),A(42682))
            --SetCollector:AddVariant(90000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
            --SetCollector:AddVariant(90000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,250,"TR_MAIL_26",MAIL,ANY,ANY,ANY)
            --SetCollector:AddVariant(90000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
            SetCollector:AddVariant(90000,nil,col,set,"NORMAL",TRANSMOG,A(42438),A(42448),A(42418),A(41916),A(42433),A(42453),A(42443),A(42428))
            --SetCollector:AddVariant(90000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
            --SetCollector:AddVariant(90000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,250,"TR_PLATE_26",PLATE,ANY,ANY,ANY)
            --SetCollector:AddVariant(90000,nil,col,set,"RAIDFINDER",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
            SetCollector:AddVariant(90000,nil,col,set,"NORMAL",TRANSMOG,A(42235),A(42068),A(42238),A(42242),A(42211),A(42240),A(42241),A(42219))
            --SetCollector:AddVariant(90000,nil,col,set,"HEROIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
			--SetCollector:AddVariant(90000,nil,col,set,"MYTHIC",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
end



--
--	GLOBAL FUNCTIONS
--

function SetCollector:GetVersion09Appearances()
	GetRaidAppearances()
end