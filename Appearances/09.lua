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
    local loc = ""
        
    -- Castle Nathria
    loc = "LOC_RAID_0901"
    set = SetCollector:AddSet(90000,nil,col,10901,"TR_CLOTH_26",CLOTH,ANY,ANY,ANY,loc)
        SetCollector:AddVariant(90000,nil,col,set,"RAIDFINDER",TRANSMOG,A(44035),A(44037),A(44031),A(44039),A(44034),A(44038),A(44036),A(44033))
        SetCollector:AddVariant(90000,nil,col,set,"NORMAL",TRANSMOG,A(44024),A(44026),A(44020),A(44028),A(44023),A(44027),A(44025),A(44022))
        SetCollector:AddVariant(90000,nil,col,set,"HEROIC",TRANSMOG,A(44002),A(44004),A(43998),A(44006),A(44001),A(44005),A(44003),A(44000))
        SetCollector:AddVariant(90000,nil,col,set,"MYTHIC",TRANSMOG,A(43845),A(43846),A(43836),A(43844),A(43838),A(43843),A(43840),A(43837))
    set = SetCollector:AddSet(90000,nil,col,10901,"TR_LEATHER_26",LEATHER,ANY,ANY,ANY,loc)
        SetCollector:AddVariant(90000,nil,col,set,"RAIDFINDER",TRANSMOG,A(44096),A(44121),A(44094),A(44099),A(44124),A(44098),A(44097),A(44095))
        SetCollector:AddVariant(90000,nil,col,set,"NORMAL",TRANSMOG,A(44075),A(44077),A(44072),A(44079),A(44074),A(44078),A(44076),A(44073))
        SetCollector:AddVariant(90000,nil,col,set,"HEROIC",TRANSMOG,A(44105),A(44122),A(44103),A(44108),A(44125),A(44107),A(44106),A(44104))
        SetCollector:AddVariant(90000,nil,col,set,"MYTHIC",TRANSMOG,A(43884),A(43883),A(43853),A(43860),A(43855),A(43859),A(43857),A(43854))
    set = SetCollector:AddSet(90000,nil,col,10901,"TR_MAIL_26",MAIL,ANY,ANY,ANY,loc)
        SetCollector:AddVariant(90000,nil,col,set,"RAIDFINDER",TRANSMOG,A(43977),A(43978),A(43973),A(43981),A(43976),A(43979),A(43982),A(43975))
        SetCollector:AddVariant(90000,nil,col,set,"NORMAL",TRANSMOG,A(43989),A(43990),A(43985),A(43993),A(43988),A(43991),A(43994),A(43987))
        SetCollector:AddVariant(90000,nil,col,set,"HEROIC",TRANSMOG,A(43965),A(43966),A(43961),A(43969),A(43964),A(43967),A(43970),A(43963))
        SetCollector:AddVariant(90000,nil,col,set,"MYTHIC",TRANSMOG,A(43948),A(43947),A(43937),A(43945),A(43940),A(43943),A(43946),A(43939))
    set = SetCollector:AddSet(90000,nil,col,10901,"TR_PLATE_26",PLATE,ANY,ANY,ANY,loc)
        SetCollector:AddVariant(90000,nil,col,set,"RAIDFINDER",TRANSMOG,A(43910),A(43912),A(43907),A(43914),A(43909),A(43913),A(43911),A(43908))
        SetCollector:AddVariant(90000,nil,col,set,"NORMAL",TRANSMOG,A(43920),A(43922),A(43917),A(43924),A(43919),A(43923),A(43921),A(43918))
        SetCollector:AddVariant(90000,nil,col,set,"HEROIC",TRANSMOG,A(43890),A(43892),A(43887),A(43894),A(43889),A(43893),A(43891),A(43888))
        SetCollector:AddVariant(90000,nil,col,set,"MYTHIC",TRANSMOG,A(43880),A(43879),A(43871),A(43878),A(43873),A(43877),A(43875),A(43872))
end


local function GetCraftedAppearances()
    local col = SetCollector.CRAFTED
    local set = ""
    
    -- Specialized/Legendary
    set = SetCollector:AddSet(90000,nil,col,10903,"CR_CLOTH_0903",CLOTH,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_CLOTH_0903",TRANSMOG,A(43079),A(43154),A(43165),A(42984),A(42979),A(42983),A(42981),A(42978))
    --set = SetCollector:AddSet(90000,nil,col,10903,"CR_LEATHER_0903",LEATHER,ANY,ANY,ANY)
    --        SetCollector:AddVariant(90000,nil,col,set,"CR_LEATHER_0903",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10903,"CR_MAIL_0903",MAIL,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_MAIL_0903",TRANSMOG,A(43090),A(43089),A(43080),A(43088),A(43083),A(43087),A(43085),A(43082))
    set = SetCollector:AddSet(90000,nil,col,10903,"CR_PLATE_0903",PLATE,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_PLATE_0903",TRANSMOG,A(42829),A(42823),A(42760),A(42808),A(42835),A(42818),A(42790),A(42841))
    --[[    Same as Alliance PvP Aspirant Season 1
    set = SetCollector:AddSet(90000,nil,col,10902,"CR_CLOTH_0902",CLOTH,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_CLOTH_0902",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10902,"CR_LEATHER_0902",LEATHER,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_LEATHER_0902",TRANSMOG,A(42702),A(42704),A(42698),A(42706),A(42701),A(42705),A(42703),A(42700))]]
    set = SetCollector:AddSet(90000,nil,col,10902,"CR_MAIL_0902",MAIL,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_MAIL_0902",TRANSMOG,A(41921),A(41923),A(41917),A(41925),A(41920),A(41924),A(41922),A(41919))
    --[[set = SetCollector:AddSet(90000,nil,col,10902,"CR_PLATE_0902",PLATE,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_PLATE_0902",TRANSMOG,A(42226),A(42227),A(42229),A(42233),A(42230),A(42231),A(42227),A(42228))]]
    
    set = SetCollector:AddSet(90000,nil,col,10901,"CR_CLOTH_0901",CLOTH,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_CLOTH_0901",TRANSMOG,A(42985),A(41987),A(41980),A(41989),A(41984),A(41988),A(41986),A(41983))
    set = SetCollector:AddSet(90000,nil,col,10901,"CR_LEATHER_0901",LEATHER,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_LEATHER_0901",TRANSMOG,A(42262),A(42166),A(42161),A(42168),A(42164),A(42167),A(42165),A(42163))
    set = SetCollector:AddSet(90000,nil,col,10901,"CR_MAIL_0901",MAIL,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_MAIL_0901",TRANSMOG,A(42440),A(42450),A(42420),A(42460),A(42435),A(42455),A(42445),A(42430))
    set = SetCollector:AddSet(90000,nil,col,10901,"CR_PLATE_0901",PLATE,ANY,ANY,ANY)
            SetCollector:AddVariant(90000,nil,col,set,"CR_PLATE_0901",TRANSMOG,A(42044),A(42046),A(42040),A(42048),A(42043),A(42047),A(42045),A(42042))
end


local function GetPvPAppearances()
    local col = SetCollector.PVP
    local set = ""
    
    -- Season 1
    loc = "LOC_PVP_0901"
    set = SetCollector:AddSet(90000,nil,col,10901,"PVP_0901",CLOTH,ANY,ANY,ANY,loc)
        SetCollector:AddVariant(90000,nil,col,set,"ASPIRANT",TRANSMOG,A(42592,109374),A(42594,109383),A(42588,109362),A(42956,109389),A(42591,109372),A(42595,109386),A(42593,109378),A(42590,109367))
        SetCollector:AddVariant(90000,nil,col,set,"GLADIATOR",TRANSMOG,A(44013,109407),A(44015,109416),A(44009,109395),A(44017,109422),A(44012,109405),A(44016,109419),A(44014,109411),A(44011,109400))
    set = SetCollector:AddSet(90000,nil,col,10901,"PVP_0901",LEATHER,ANY,ANY,ANY,loc)
        SetCollector:AddVariant(90000,nil,col,set,"ASPIRANT",TRANSMOG,A(42702,109376),A(42704,109381),A(42698,109365),A(42706,109392),A(42701,109370),A(42705,109388),A(42703,109380),A(42700,109369))
        SetCollector:AddVariant(90000,nil,col,set,"GLADIATOR",TRANSMOG,A(4414,109409),A(44123,109414),A(44112,109398),A(44117,109425),A(44126,109403),A(44116,109421),A(44115,109413),A(44113,109402))
    set = SetCollector:AddSet(90000,nil,col,10901,"PVP_0901",MAIL,ANY,ANY,ANY,loc)
        SetCollector:AddVariant(90000,nil,col,set,"ASPIRANT",TRANSMOG,A(41921,109375),A(41923,109384),A(41917,109364),A(41925,109391),A(41920,109373),A(41924,109387),A(41922,109379),A(41919,109368))
        SetCollector:AddVariant(90000,nil,col,set,"GLADIATOR",TRANSMOG,A(43953,109408),A(43954,109417),A(43949,109397),A(43957,109424),A(43952,109406),A(43955,109420),A(43958,109412),A(43951,109401))
    set = SetCollector:AddSet(90000,nil,col,10901,"PVP_0901",PLATE,ANY,ANY,ANY,loc)
        SetCollector:AddVariant(90000,nil,col,set,"ASPIRANT",TRANSMOG,A(42226,109360),A(42227,109382),A(42229,109363),A(42233,109390),A(42230,109371),A(42231,109385),A(42232,109377),A(42228,109366))
        SetCollector:AddVariant(90000,nil,col,set,"GLADIATOR",TRANSMOG,A(43936,109393),A(43935,109415),A(43927,109396),A(43934,109423),A(43929,109404),A(43933,109418),A(43931,109410),A(43928,109399))
end


local function GetExpansionAppearances()
    local col = SetCollector.EXPANSION
    local set = ""

    -- Covenants
    -- Kyrian
    --set = SetCollector:AddSet(90000,nil,col,10904,"EX_CLOTH_0904",CLOTH,ANY,ANY,ANY)
    --    SetCollector:AddVariant(90000,nil,col,set,"EX_CLOTH_0904",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    --set = SetCollector:AddSet(90000,nil,col,10904,"EX_LEATHER_0904",LEATHER,ANY,ANY,ANY)
    --    SetCollector:AddVariant(90000,nil,col,set,"EX_LEATHER_0904",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10904,"EX_MAIL_0904",MAIL,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_MAIL_0904",TRANSMOG,A(42906),A(42907),A(42908),A(42909),A(42910),A(42911),A(42912),A(42913),A(42914))
    --set = SetCollector:AddSet(90000,nil,col,10904,"EX_PLATE_0904",PLATE,ANY,ANY,ANY)
    --c    SetCollector:AddVariant(90000,nil,col,set,"EX_PLATE_0904",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    -- Venthyr
    --[[set = SetCollector:AddSet(90000,nil,col,10903,"EX_CLOTH_0903",CLOTH,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_CLOTH_0903",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10903,"EX_LEATHER_0903",LEATHER,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_LEATHER_0903",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10903,"EX_MAIL_0903",MAIL,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_MAIL_0903",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10903,"EX_PLATE_0903",PLATE,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_PLATE_0903",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    -- Necrolord
    --set = SetCollector:AddSet(90000,nil,col,10902,"EX_CLOTH_0902",CLOTH,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_CLOTH_0902",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10902,"EX_LEATHER_0902",LEATHER,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_LEATHER_0902",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10902,"EX_MAIL_0902",MAIL,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_MAIL_0902",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10902,"EX_PLATE_0902",PLATE,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_PLATE_0902",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    -- Nightfae
    --set = SetCollector:AddSet(90000,nil,col,10901,"EX_CLOTH_0901",CLOTH,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_CLOTH_0901",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10901,"EX_LEATHER_0901",LEATHER,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_LEATHER_0901",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10901,"EX_MAIL_0901",MAIL,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_MAIL_0901",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())
    set = SetCollector:AddSet(90000,nil,col,10901,"EX_PLATE_0901",PLATE,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_PLATE_0901",TRANSMOG,A(),A(),A(),A(),A(),A(),A(),A(),A())]]
    
    -- Pre-patch Set
    set = SetCollector:AddSet(90000,nil,col,10900,"EX_CLOTH_A_0900",CLOTH,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_CLOTH_A_0900",TRANSMOG,A(37358),A(37230),A(37227),A(37202),A(37200),A(37204),A(37226),A(27205),A(37199))
    set = SetCollector:AddSet(90000,nil,col,10900,"EX_LEATHER_A_0900",LEATHER,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_LEATHER_A_0900",TRANSMOG,A(36816),A(36818),A(36813),A(36814),A(36812),A(36815),A(36810),A(36817),A(36811))
    set = SetCollector:AddSet(90000,nil,col,10900,"EX_MAIL_A_0900",MAIL,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_MAIL_A_0900",TRANSMOG,A(37262),A(37265),A(37260),A(37259),A(37256),A(37261),A(37257),A(27263),A(27258))
    set = SetCollector:AddSet(90000,nil,col,10900,"EX_PLATE_A_0900",PLATE,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_PLATE_A_0900",TRANSMOG,A(37802),A(37804),A(37855),A(37800),A(37805),A(37801),A(37798),A(37803),A(37799))

    set = SetCollector:AddSet(90000,nil,col,10900,"EX_CLOTH_H_0900",CLOTH,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_CLOTH_H_0900",TRANSMOG,A(36756),A(36760),A(36958),A(36754),A(36770),A(37071),A(36745),A(36783),A(36767))
    set = SetCollector:AddSet(90000,nil,col,10900,"EX_LEATHER_H_0900",LEATHER,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_LEATHER_H_0900",TRANSMOG,A(37424),A(37425),A(36794),A(37396),A(37401),A(37423),A(37421),A(37379),A(37422))
    set = SetCollector:AddSet(90000,nil,col,10900,"EX_MAIL_H_0900",MAIL,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_MAIL_H_0900",TRANSMOG,A(38075),A(38077),A(36794),A(38013),A(38078),A(38074),A(38071),A(38076),A(38072))
    set = SetCollector:AddSet(90000,nil,col,10900,"EX_PLATE_H_0900",PLATE,ANY,ANY,ANY)
        SetCollector:AddVariant(90000,nil,col,set,"EX_PLATE_H_0900",TRANSMOG,A(36850),A(36808),A(38337),A(36849),A(36793),A(37082),A(36847),A(37094),A(36848))
end


--
--	GLOBAL FUNCTIONS
--

function SetCollector:GetVersion09Appearances(expansion)
    if expansion.v09 then
        GetRaidAppearances()
        GetPvPAppearances()
        GetCraftedAppearances()
        GetExpansionAppearances()
    end
end


function SetCollector:GetVersion09Status()
	return SetCollector:GetExpansionStatus("9")
end


function SetCollector:SetVersion09Status()
	SetCollector:SetExpansionStatus("9")
end