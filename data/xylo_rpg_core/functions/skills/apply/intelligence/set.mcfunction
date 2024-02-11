#> xylo_rpg_core:skills/apply/intelligence/set
# @context: parent context
# @within: xylo_rpg_core:skills/apply/intelligence/start
# @macro: speed, jump

$attribute @s minecraft:generic.movement_speed modifier add 1234-1234-10-0-0 "xylo_rpg_core:skills.intelligence.movement_speed" $(speed) multiply_base
$attribute @s minecraft:generic.jump_strength modifier add 1234-1234-10-0-0 "xylo_rpg_core:skills.intelligence.jump_strength" $(jump) multiply_base

