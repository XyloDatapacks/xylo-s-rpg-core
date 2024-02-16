#> xylo_rpg_core:level/level_up
# @context: entity with level
# @within: any call

#limiti ingresso
scoreboard players operation @s xrpgc.level > #-1 xconst

#level
scoreboard players operation @s xrpgc.xp -= @s xrpgc.xp_to_next_level
scoreboard players operation @s xrpgc.xp > #0 xconst
scoreboard players add @s xrpgc.level 1

#xp_to_next_level = ((level+7)/10+1)*(level+7) + (level+7)^2/16 
scoreboard players operation #xrpgc.level.base_lvl xrpgc.op = @s xrpgc.level
scoreboard players add #xrpgc.level.base_lvl xrpgc.op 7
scoreboard players operation @s xrpgc.xp_to_next_level = #xrpgc.level.base_lvl xrpgc.op
scoreboard players operation @s xrpgc.xp_to_next_level /= #10 xconst
scoreboard players add @s xrpgc.xp_to_next_level 1
scoreboard players operation @s xrpgc.xp_to_next_level *= #xrpgc.level.base_lvl xrpgc.op
scoreboard players operation #xrpgc.level.xp_const xrpgc.op = #xrpgc.level.base_lvl xrpgc.op
scoreboard players operation #xrpgc.level.xp_const xrpgc.op *= #xrpgc.level.xp_const xrpgc.op
scoreboard players operation #xrpgc.level.xp_const xrpgc.op /= #14 xconst
scoreboard players operation @s xrpgc.xp_to_next_level += #xrpgc.level.xp_const xrpgc.op

#se livello > 0 dai reward
execute if score @s xrpgc.level matches 1..200 run function xylo_rpg_core:level/reward
execute if score @s xrpgc.level matches 201.. run function xylo_rpg_core:level/text

execute if score @s xrpgc.xp >= @s xrpgc.xp_to_next_level run function xylo_rpg_core:level/level_up
