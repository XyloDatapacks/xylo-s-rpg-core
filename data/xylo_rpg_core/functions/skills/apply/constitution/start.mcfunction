#> xylo_rpg_core:skills/apply/constitution/start
# @context: parent context
# @within: xylo_rpg_core:skills/apply/start


# remove stats
function xylo_rpg_core:skills/apply/constitution/reset

# apply stats
data remove storage xylo_rpg_core:op macro_data 
execute store result storage xylo_rpg_core:op macro_data.health double 0.03 run scoreboard players get @s xrpgc.skills.constitution
function xylo_rpg_core:skills/apply/constitution/set with storage xylo_rpg_core:op macro_data 

