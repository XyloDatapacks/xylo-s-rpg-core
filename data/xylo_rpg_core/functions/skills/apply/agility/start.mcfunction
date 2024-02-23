#> xylo_rpg_core:skills/apply/agility/start
# @context: parent context
# @within: xylo_rpg_core:skills/apply/start


# remove stats
function xylo_rpg_core:skills/apply/agility/reset

# apply stats
data remove storage xylo_rpg_core:op macro_data 
execute store result storage xylo_rpg_core:op macro_data.speed double 0.03 run scoreboard players get @s xrpgc.skills.agility
execute store result storage xylo_rpg_core:op macro_data.jump double 0.0075 run scoreboard players get @s xrpgc.skills.agility
execute store result storage xylo_rpg_core:op macro_data.fall double 0.008 run scoreboard players get @s xrpgc.skills.agility
function xylo_rpg_core:skills/apply/agility/set with storage xylo_rpg_core:op macro_data 


# jump_correction multiplier (*10)
scoreboard players operation @s xrpgc.skills.agility.jump_correction = #xrpgc.skills.agility.jump_correction.max xrpgc.op
scoreboard players operation @s xrpgc.skills.agility.jump_correction *= #10 xconst
scoreboard players operation @s xrpgc.skills.agility.jump_correction *= @s xrpgc.skills.agility
scoreboard players operation @s xrpgc.skills.agility.jump_correction /= #100 xconst