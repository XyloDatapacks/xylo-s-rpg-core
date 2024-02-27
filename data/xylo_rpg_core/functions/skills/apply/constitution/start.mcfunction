#> xylo_rpg_core:skills/apply/constitution/start
# @context: parent context
# @within: xylo_rpg_core:skills/apply/start


# remove stats
function xylo_rpg_core:skills/apply/constitution/reset

# calculate apply value
scoreboard players operation #xrpgc.skills.skill_value xrpgc.op = @s xrpgc.skills.constitution
execute if entity @s[type=!minecraft:player] run function xylo_rpg_core:skills/_internal/mob_scaling

# apply stats
data remove storage xylo_rpg_core:op macro_data 
execute store result storage xylo_rpg_core:op macro_data.health double 0.1 run scoreboard players get #xrpgc.skills.skill_value xrpgc.op
function xylo_rpg_core:skills/apply/constitution/set with storage xylo_rpg_core:op macro_data 


# max raw energy
scoreboard players operation @s xem.spell.raw_energy.max_base = #xem.spell.raw_energy.max xem.const
scoreboard players operation @s xem.spell.raw_energy.max_base *= #10 xconst
scoreboard players operation @s xem.spell.raw_energy.max_base *= #xrpgc.skills.skill_value xrpgc.op
scoreboard players operation @s xem.spell.raw_energy.max_base /= #100 xconst