-- Appearances from Shadowlands (v.9.x)

--
-- LOCAL VARIABLES
--

local ALL		    = SetCollector.ALL
local ANY		    = SetCollector.ANY

-- Armor Type
local CLOTH		    = SetCollector.CLOTH
local LEATHER		= SetCollector.LEATHER
local MAIL		    = SetCollector.MAIL
local PLATE		    = SetCollector.PLATE

-- Classes
local DEATHKNIGHT	= SetCollector.DEATHKNIGHT
local DEMONHUNTER	= SetCollector.DEMONHUNTER
local DRUID 		= SetCollector.DRUID
local HUNTER 		= SetCollector.HUNTER
local MAGE 		    = SetCollector.MAGE
local MONK 		    = SetCollector.MONK
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
local TANK 		    = SetCollector.TANK
local HEALER 		= SetCollector.HEALER
local CASTER 		= SetCollector.CASTER
local RANGED 		= SetCollector.RANGED
local MELEE 		= SetCollector.MELEE

-- Collection Types
local OUTFITS 		= SetCollector.OUTFITS
local ARTIFACT 		= SetCollector.ARTIFACT
local LEGENDARY 	= SetCollector.LEGENDARY
local RAID 		    = SetCollector.RAID
local DUNGEON 		= SetCollector.DUNGEON
local CHALLENGE 	= SetCollector.CHALLENGE
local PVP 		    = SetCollector.PVP
local EXPANSION		= SetCollector.EXPANSION
local CRAFTED 		= SetCollector.CRAFTED
local OTHER		    = SetCollector.OTHER
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


local function GetCraftedAppearances()
    local col = SetCollector.CRAFTED
    local set = ""
    
    -- Specialized/Legendary
    set = SetCollector:AddSet(90000,nil,col,10903,"CR_CLOTH_0903",CLOTH,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_CLOTH_0903",TRANSMOG,A(43079),A(43154),A(43165),A(42984),A(42979),A(42983),A(42981),A(42978))
    --[[set = SetCollector:AddSet(90000,nil,col,10903,"CR_LEATHER_0903",LEATHER,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_LEATHER_0903",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())]]
    set = SetCollector:AddSet(90000,nil,col,10903,"CR_MAIL_0903",MAIL,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_MAIL_0903",TRANSMOG,A(43090),A(43089),A(43080),A(43088),A(43083),A(43087),A(43085),A(43082))
    set = SetCollector:AddSet(90000,nil,col,10903,"CR_PLATE_0903",PLATE,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_PLATE_0903",TRANSMOG,A(42829),A(42823),A(42760),A(42808),A(42835),A(42818),A(42790),A(42841))
    --[[    Same as Alliance PvP Aspirant Season 1
    set = SetCollector:AddSet(90000,nil,col,10902,"CR_CLOTH_0902",CLOTH,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_CLOTH_0902",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10902,"CR_LEATHER_0902",LEATHER,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_LEATHER_0902",TRANSMOG,A(42702),A(42704),A(42698),A(42706),A(42701),A(42705),A(42703),A(42700))
    set = SetCollector:AddSet(90000,nil,col,10902,"CR_MAIL_0902",MAIL,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_MAIL_0902",TRANSMOG,A(43201),A(43203),A(43197),A(43205),A(43200),A(43204),A(43202),A(43199))
    set = SetCollector:AddSet(90000,nil,col,10902,"CR_PLATE_0902",PLATE,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_PLATE_0902",TRANSMOG,A(42226),A(42227),A(42229),A(42233),A(42230),A(42231),A(42227),A(42228))]]
    
    set = SetCollector:AddSet(90000,nil,col,10901,"CR_CLOTH_0901",CLOTH,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_CLOTH_0901",TRANSMOG,A(42985),A(41987),A(41980),A(41989),A(41984),A(41988),A(41986),A(41983))
    set = SetCollector:AddSet(90000,nil,col,10901,"CR_LEATHER_0901",LEATHER,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_LEATHER_0901",TRANSMOG,A(42261),A(42158),A(42153),A(42160),A(42156),A(42159),A(42157),A(42155))
    set = SetCollector:AddSet(90000,nil,col,10901,"CR_MAIL_0901",MAIL,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_MAIL_0901",TRANSMOG,A(42440),A(42450),A(42420),A(42460),A(42435),A(42455),A(42445),A(42430))
    set = SetCollector:AddSet(90000,nil,col,10901,"CR_PLATE_0901",PLATE,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_PLATE_0901",TRANSMOG,A(42044),A(42046),A(42040),A(42048),A(42043),A(42047),A(42045),A(42042))
end


local function GetPvPAppearances()
    local col = SetCollector.PVP
    local set = ""
    
    -- Season 1
    --[[
    set = SetCollector:AddSet(90000,nil,col,10902,"PVP_CLOTH_A_0902",CLOTH,ANY,ANY,ALLIANCE)
            SetCollector:AddVariant(90000,nil,col,set,"ASPIRANT",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())]]
            --SetCollector:AddVariant(90000,nil,col,set,"GLADIATOR",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10902,"PVP_LEATHER_A_0902",LEATHER,ANY,ANY,ALLIANCE)
            SetCollector:AddVariant(90000,nil,col,set,"ASPIRANT",TRANSMOG,A(42702),A(42704),A(42698),A(42706),A(42701),A(42705),A(42703),A(42700))
            --SetCollector:AddVariant(90000,nil,col,set,"GLADIATOR",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10902,"PVP_MAIL_A_0902",MAIL,ANY,ANY,ALLIANCE)
            SetCollector:AddVariant(90000,nil,col,set,"ASPIRANT",TRANSMOG,A(43201),A(43203),A(43197),A(43205),A(43200),A(43204),A(43202),A(43199))
            --SetCollector:AddVariant(90000,nil,col,set,"GLADIATOR",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10902,"PVP_PLATE_A_0902",PLATE,ANY,ANY,ALLIANCE)
            SetCollector:AddVariant(90000,nil,col,set,"APIRANT",TRANSMOG,A(42226),A(42227),A(42229),A(42233),A(42230),A(42231),A(42227),A(42228))
            --SetCollector:AddVariant(90000,nil,col,set,"GLADIATOR",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
end


--
--	GLOBAL FUNCTIONS
--

function SetCollector:GetVersion09Appearances(expansion)
    if expansion.v09 then
        GetRaidAppearances()
        GetCraftedAppearances()
    end
end


function SetCollector:GetVersion09Status()
	return SetCollector:GetExpansionStatus("9")
end


function SetCollector:SetVersion09Status()
	SetCollector:SetExpansionStatus("9")
end