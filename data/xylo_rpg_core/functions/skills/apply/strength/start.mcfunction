#> xylo_rpg_core:skills/apply/strength/start
# @context: parent context
# @within: xylo_rpg_core:skills/apply/start


# remove stats
function xylo_rpg_core:skills/apply/strength/reset

# calculate apply value
scoreboard players operation #xrpgc.skills.skill_value xrpgc.op = @s xrpgc.skills.strength
execute if entity @s[type=!minecraft:player] run function xylo_rpg_core:skills/_internal/mob_scaling

# apply stats
data remove storage xylo_rpg_core:op macro_data 
execute store result storage xylo_rpg_core:op macro_data.damage double 0.05 run scoreboard players get #xrpgc.skills.skill_value xrpgc.op
function xylo_rpg_core:skills/apply/strength/set with storage xylo_rpg_core:op macro_data 

