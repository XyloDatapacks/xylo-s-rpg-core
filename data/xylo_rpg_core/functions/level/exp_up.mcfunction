#> xylo_rpg_core:level/exp_up
# @context: entity with level
# @within: any call
# @input: "#xrpg_reward xrpgc.op"

scoreboard players operation #xrpgc.xp_plus xrpgc.op = #xrpg_reward xrpgc.op
scoreboard players operation #xrpgc.xp_plus xrpgc.op > #1 xconst
scoreboard players operation @s xrpgc.exp += #xrpgc.xp_plus xrpgc.op