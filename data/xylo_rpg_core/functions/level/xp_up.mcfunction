#> xylo_rpg_core:level/xp_up
# @context: entity with level
# @within: any call
# @input: "#xrpgc.level.xp_up xrpgc.op"

scoreboard players operation #xrpgc.xp_plus xrpgc.op = #xrpgc.level.xp_up xrpgc.op
scoreboard players operation #xrpgc.xp_plus xrpgc.op > #1 xconst
scoreboard players operation @s xrpgc.xp += #xrpgc.xp_plus xrpgc.op
execute if score @s xrpgc.xp >= @s xrpgc.xp_to_next_level run function xylo_rpg_core:level/level_up