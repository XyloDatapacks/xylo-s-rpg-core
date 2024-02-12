#> xylo_rpg_core:equipment/weight/apply/legs
# @context: parent context
# @within: xylo_rpg_core:equipment/weight/check/legs


attribute @s minecraft:generic.movement_speed modifier add 1234-1234-10-1-1 "xylo_rpg_core:equipment.weight.legs.movement_speed" -0.1 multiply_base
attribute @s minecraft:generic.jump_strength modifier add 1234-1234-10-1-1 "xylo_rpg_core:equipment.weight.legs.jump_strength" -0.1 multiply_base
attribute @s minecraft:generic.safe_fall_distance modifier add 1234-1234-10-1-1 "xylo_rpg_core:equipment.weight.legs.safe_fall_distance" -0.1 multiply_base
attribute @s minecraft:generic.attack_speed modifier add 1234-1234-10-1-1 "xylo_rpg_core:equipment.weight.legs.attack_speed" -0.1 multiply_base
attribute @s minecraft:player.block_break_speed modifier add 1234-1234-10-1-1 "xylo_rpg_core:equipment.weight.legs.block_break_speed" -0.1 multiply_base
scoreboard players add @s xrpgc.equipment.weight 10
