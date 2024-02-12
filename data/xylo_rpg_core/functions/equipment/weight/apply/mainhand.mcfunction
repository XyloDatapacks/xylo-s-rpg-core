#> xylo_rpg_core:equipment/weight/apply/mainhand
# @context: parent context
# @within: xylo_rpg_core:equipment/weight/check/mainhand


attribute @s minecraft:generic.movement_speed modifier add 1234-1234-10-1-4 "xylo_rpg_core:equipment.weight.mainhand.movement_speed" -0.1 multiply_base
attribute @s minecraft:generic.jump_strength modifier add 1234-1234-10-1-4 "xylo_rpg_core:equipment.weight.mainhand.jump_strength" -0.1 multiply_base
attribute @s minecraft:generic.safe_fall_distance modifier add 1234-1234-10-1-4 "xylo_rpg_core:equipment.weight.mainhand.safe_fall_distance" -0.1 multiply_base
attribute @s minecraft:generic.attack_speed modifier add 1234-1234-10-1-4 "xylo_rpg_core:equipment.weight.mainhand.attack_speed" -0.1 multiply_base
attribute @s minecraft:player.block_break_speed modifier add 1234-1234-10-1-4 "xylo_rpg_core:equipment.weight.mainhand.block_break_speed" -0.1 multiply_base
scoreboard players add @s xrpgc.equipment.weight 10
