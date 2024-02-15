#> xylo_rpg_core:equipment/weight/apply/feet
# @context: parent context
# @within: xylo_rpg_core:skills/get/equipment/feet


attribute @s minecraft:generic.movement_speed modifier add 1234-1234-10-1-0 "xylo_rpg_core:equipment.weight.feet.movement_speed" -0.1 multiply_base
attribute @s minecraft:generic.jump_strength modifier add 1234-1234-10-1-0 "xylo_rpg_core:equipment.weight.feet.jump_strength" -0.1 multiply_base
attribute @s minecraft:generic.safe_fall_distance modifier add 1234-1234-10-1-0 "xylo_rpg_core:equipment.weight.feet.safe_fall_distance" -0.1 multiply_base
attribute @s minecraft:generic.attack_speed modifier add 1234-1234-10-1-0 "xylo_rpg_core:equipment.weight.feet.attack_speed" -0.1 multiply_base
attribute @s minecraft:player.block_break_speed modifier add 1234-1234-10-1-0 "xylo_rpg_core:equipment.weight.feet.block_break_speed" -0.1 multiply_base
scoreboard players add @s xrpgc.equipment.weight 10

