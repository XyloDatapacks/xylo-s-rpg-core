#> xylo_rpg_core:skills/apply/constitution/start
# @context: parent context
# @within: xylo_rpg_core:skills/apply/start


# remove stats
function xylo_rpg_core:skills/apply/constitution/reset

# apply stats
data remove storage xylo_rpg_core:op macro_data 
execute store result storage xylo_rpg_core:op macro_data.health double 0.1 run scoreboard players get @s xrpgc.skills.constitution
function xylo_rpg_core:skills/apply/constitution/set with storage xylo_rpg_core:op macro_data 


# max raw energy
scoreboard players operation @s xem.spell.raw_energy.max = #xem.spell.raw_energy.max xem.op
scoreboard players operation @s xem.spell.raw_energy.max *= #10 xconst
scoreboard players operation @s xem.spell.raw_energy.max *= @s xrpgc.skills.constitution
scoreboard players operation @s xem.spell.raw_energy.max /= #100 xconst