#> xylo_rpg_core:equipment/weight/apply/head
# @context: parent context
# @within: xylo_rpg_core:equipment/weight/check/head


attribute @s minecraft:generic.movement_speed modifier add 1234-1234-10-1-3 "xylo_rpg_core:equipment.weight.head.movement_speed" -0.1 multiply_base
attribute @s minecraft:generic.jump_strength modifier add 1234-1234-10-1-3 "xylo_rpg_core:equipment.weight.head.jump_strength" -0.1 multiply_base
attribute @s minecraft:generic.safe_fall_distance modifier add 1234-1234-10-1-3 "xylo_rpg_core:equipment.weight.head.safe_fall_distance" -0.1 multiply_base
attribute @s minecraft:generic.attack_speed modifier add 1234-1234-10-1-3 "xylo_rpg_core:equipment.weight.head.attack_speed" -0.1 multiply_base
attribute @s minecraft:player.block_break_speed modifier add 1234-1234-10-1-3 "xylo_rpg_core:equipment.weight.head.block_break_speed" -0.1 multiply_base
scoreboard players add @s xrpgc.equipment.weight 10
