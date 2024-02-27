#> xylo_rpg_core:skills/apply/agility/start
# @context: parent context
# @within: xylo_rpg_core:skills/apply/start


# remove stats
function xylo_rpg_core:skills/apply/agility/reset

# calculate apply value
scoreboard players operation #xrpgc.skills.skill_value xrpgc.op = @s xrpgc.skills.agility
execute if entity @s[type=!minecraft:player] run function xylo_rpg_core:skills/_internal/mob_scaling

# apply stats
data remove storage xylo_rpg_core:op macro_data
scoreboard players operation #xrpgc.skills.apply.agility.speed xrpgc.op = #xrpgc.skills.skill_value xrpgc.op
execute if entity @s[type=minecraft:player] store result storage xylo_rpg_core:op macro_data.speed double 0.02 run scoreboard players operation #xrpgc.skills.apply.agility.speed xrpgc.op < #100 xconst
execute if entity @s[type=!minecraft:player] store result storage xylo_rpg_core:op macro_data.speed double 0.01 run scoreboard players operation #xrpgc.skills.apply.agility.speed xrpgc.op < #100 xconst
execute store result storage xylo_rpg_core:op macro_data.jump double 0.0075 run scoreboard players get #xrpgc.skills.skill_value xrpgc.op
execute store result storage xylo_rpg_core:op macro_data.fall double 0.008 run scoreboard players get #xrpgc.skills.skill_value xrpgc.op
function xylo_rpg_core:skills/apply/agility/set with storage xylo_rpg_core:op macro_data 


# jump_correction multiplier (*10)
scoreboard players operation @s xrpgc.skills.agility.jump_correction = #xrpgc.skills.agility.jump_correction.max xrpgc.op
scoreboard players operation @s xrpgc.skills.agility.jump_correction *= #10 xconst
scoreboard players operation @s xrpgc.skills.agility.jump_correction *= #xrpgc.skills.skill_value xrpgc.op
scoreboard players operation @s xrpgc.skills.agility.jump_correction /= #100 xconst