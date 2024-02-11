#> xylo_rpg_core:skills/apply/strength/set
# @context: parent context
# @within: xylo_rpg_core:skills/apply/strength/start
# @macro: damage

$attribute @s minecraft:generic.attack_damage modifier add 1234-1234-10-0-0 "xylo_rpg_core:skills.strength.attack_damage" $(damage) multiply_base
