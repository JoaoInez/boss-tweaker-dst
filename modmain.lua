if TUNING == nil then
	local TUNING = GLOBAL.TUNING
end

-- Deerclops
TUNING.DEERCLOPS_HEALTH = TUNING.DEERCLOPS_HEALTH * GetModConfigData("deerclops_health_mult")
TUNING.DEERCLOPS_DAMAGE = TUNING.DEERCLOPS_DAMAGE * GetModConfigData("deerclops_damage_mult")

-- Goose/Moose
TUNING.MOOSE_HEALTH = TUNING.MOOSE_HEALTH * GetModConfigData("moose_health_mult")
TUNING.MOOSE_DAMAGE = TUNING.MOOSE_DAMAGE * GetModConfigData("moose_damage_mult")

-- Antlion
TUNING.ANTLION_HEALTH = TUNING.ANTLION_HEALTH * GetModConfigData("antlion_health_mult")
TUNING.SANDSPIKE.DAMAGE.SHORT = TUNING.SANDSPIKE.DAMAGE.SHORT * GetModConfigData("antlion_damage_mult")
TUNING.SANDSPIKE.DAMAGE.MED = TUNING.SANDSPIKE.DAMAGE.MED * GetModConfigData("antlion_damage_mult")
TUNING.SANDSPIKE.DAMAGE.TALL = TUNING.SANDSPIKE.DAMAGE.TALL * GetModConfigData("antlion_damage_mult")

-- Bearger
TUNING.BEARGER_HEALTH = TUNING.BEARGER_HEALTH * GetModConfigData("bearger_health_mult")
TUNING.BEARGER_DAMAGE = TUNING.BEARGER_DAMAGE * GetModConfigData("bearger_damage_mult")

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

-- Ancient Guardian
TUNING.MINOTAUR_HEALTH = TUNING.MINOTAUR_HEALTH * GetModConfigData("minotaur_health_mult")
TUNING.MINOTAUR_DAMAGE = TUNING.MINOTAUR_DAMAGE * GetModConfigData("minotaur_damage_mult")