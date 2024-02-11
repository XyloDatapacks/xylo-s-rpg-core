#> xylo_rpg_core:skills/apply/strength/start
# @context: parent context
# @within: xylo_rpg_core:skills/apply/start


# remove stats
function xylo_rpg_core:skills/apply/strength/reset

# apply stats
data remove storage xylo_rpg_core:op macro_data 
execute store result storage xylo_rpg_core:op macro_data.damage double 0.05 run scoreboard players get @s xrpgc.skills.strength
function xylo_rpg_core:skills/apply/strength/set with storage xylo_rpg_core:op macro_data 

