#> xylo_rpg_core:skills/apply/agility/set
# @context: parent context
# @within: xylo_rpg_core:skills/apply/agility/start
# @macro: speed, jump

$attribute @s minecraft:generic.movement_speed modifier add 1234-1234-1234-10-0 "xylo_rpg_core:skills.agility.movement_speed" $(speed) multiply_base
$attribute @s minecraft:generic.jump_strength modifier add 1234-1234-1234-10-0 "xylo_rpg_core:skills.agility.jump_strength" $(jump) multiply_base
$attribute @s minecraft:generic.safe_fall_distance modifier add 1234-1234-1234-10-0 "xylo_rpg_core:skills.agility.safe_fall_distance" $(jump) multiply_base
