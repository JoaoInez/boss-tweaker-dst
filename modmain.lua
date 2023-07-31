if TUNING == nil then
	local TUNING = GLOBAL.TUNING
end

-- Ancient Guardian
TUNING.MINOTAUR_HEALTH = TUNING.MINOTAUR_HEALTH * GetModConfigData("minotaur_health_mult")
TUNING.MINOTAUR_DAMAGE = TUNING.MINOTAUR_DAMAGE * GetModConfigData("minotaur_damage_mult")

-- Antlion
TUNING.ANTLION_HEALTH = TUNING.ANTLION_HEALTH * GetModConfigData("antlion_health_mult")
TUNING.SANDSPIKE.DAMAGE.SHORT = TUNING.SANDSPIKE.DAMAGE.SHORT * GetModConfigData("antlion_damage_mult")
TUNING.SANDSPIKE.DAMAGE.MED = TUNING.SANDSPIKE.DAMAGE.MED * GetModConfigData("antlion_damage_mult")
TUNING.SANDSPIKE.DAMAGE.TALL = TUNING.SANDSPIKE.DAMAGE.TALL * GetModConfigData("antlion_damage_mult")

-- Bearger
TUNING.BEARGER_HEALTH = TUNING.BEARGER_HEALTH * GetModConfigData("bearger_health_mult")
TUNING.BEARGER_DAMAGE = TUNING.BEARGER_DAMAGE * GetModConfigData("bearger_damage_mult")

-- Bee Queen
TUNING.BEEQUEEN_HEALTH = TUNING.BEEQUEEN_HEALTH * GetModConfigData("beequeen_health_mult")
TUNING.BEEQUEEN_DAMAGE = TUNING.BEEQUEEN_DAMAGE * GetModConfigData("beequeen_damage_mult")
TUNING.BEEGUARD_HEALTH = TUNING.BEEGUARD_HEALTH * GetModConfigData("beeguard_health_mult")
TUNING.BEEGUARD_DAMAGE = TUNING.BEEGUARD_DAMAGE * GetModConfigData("beeguard_damage_mult")

-- Celestial Champion
TUNING.ALTERGUARDIAN_PHASE1_HEALTH = TUNING.ALTERGUARDIAN_PHASE1_HEALTH * GetModConfigData("alterguardian_health_mult")
TUNING.ALTERGUARDIAN_PHASE1_ROLLDAMAGE = TUNING.ALTERGUARDIAN_PHASE1_ROLLDAMAGE * GetModConfigData("alterguardian_damage_mult")
TUNING.ALTERGUARDIAN_PHASE2_MAXHEALTH = TUNING.ALTERGUARDIAN_PHASE2_MAXHEALTH * GetModConfigData("alterguardian_health_mult")
TUNING.ALTERGUARDIAN_PHASE2_STARTHEALTH = TUNING.ALTERGUARDIAN_PHASE2_STARTHEALTH * GetModConfigData("alterguardian_health_mult")
TUNING.ALTERGUARDIAN_PHASE2_DAMAGE = TUNING.ALTERGUARDIAN_PHASE2_DAMAGE * GetModConfigData("alterguardian_damage_mult")
TUNING.ALTERGUARDIAN_PHASE2_SPIKEDAMAGE = TUNING.ALTERGUARDIAN_PHASE2_SPIKEDAMAGE * GetModConfigData("alterguardian_damage_mult")
TUNING.ALTERGUARDIAN_PHASE3_MAXHEALTH = TUNING.ALTERGUARDIAN_PHASE3_MAXHEALTH * GetModConfigData("alterguardian_health_mult")
TUNING.ALTERGUARDIAN_PHASE3_STARTHEALTH = TUNING.ALTERGUARDIAN_PHASE3_STARTHEALTH * GetModConfigData("alterguardian_health_mult")
TUNING.ALTERGUARDIAN_PHASE3_DAMAGE = TUNING.ALTERGUARDIAN_PHASE3_DAMAGE * GetModConfigData("alterguardian_damage_mult")
TUNING.ALTERGUARDIAN_PHASE3_LASERDAMAGE = TUNING.ALTERGUARDIAN_PHASE3_LASERDAMAGE * GetModConfigData("alterguardian_damage_mult")
TUNING.ALTERGUARDIAN_PHASE3_TRAP_LANDEDDAMAGE = TUNING.ALTERGUARDIAN_PHASE3_TRAP_LANDEDDAMAGE * GetModConfigData("alterguardian_damage_mult")

-- Crab King

-- Deerclops
TUNING.DEERCLOPS_HEALTH = TUNING.DEERCLOPS_HEALTH * GetModConfigData("deerclops_health_mult")
TUNING.DEERCLOPS_DAMAGE = TUNING.DEERCLOPS_DAMAGE * GetModConfigData("deerclops_damage_mult")

-- Dragonfly
TUNING.DRAGONFLY_HEALTH = TUNING.DRAGONFLY_HEALTH * GetModConfigData("dragonfly_health_mult")
TUNING.DRAGONFLY_DAMAGE = TUNING.DRAGONFLY_DAMAGE * GetModConfigData("dragonfly_damage_mult")
TUNING.DRAGONFLY_FIRE_DAMAGE = TUNING.DRAGONFLY_FIRE_DAMAGE * GetModConfigData("dragonfly_damage_mult")

local function OnDragonflyTransform(inst, data)
	if data.transformstate == "fire" then
		inst:RemoveComponent("sleeper")
	else
		inst:AddComponent("sleeper")
	end
end

local function DragonflyPostInit(inst)
	inst:ListenForEvent("transform", OnDragonflyTransform)
end

if GetModConfigData("dragonfly_sleep_immunity") then
	AddPrefabPostInit("dragonfly", DragonflyPostInit)
end

-- Eye of Terror

-- Klaus

-- Lord of the Fruit Flies

-- Malbatross

-- Moose/Goose
TUNING.MOOSE_HEALTH = TUNING.MOOSE_HEALTH * GetModConfigData("moose_health_mult")
TUNING.MOOSE_DAMAGE = TUNING.MOOSE_DAMAGE * GetModConfigData("moose_damage_mult")

-- Nightmare Werepig

-- Reanimated Skeleton

-- Shadow Pieces

-- Spider Queen

-- Toadstool

-- Treeguard