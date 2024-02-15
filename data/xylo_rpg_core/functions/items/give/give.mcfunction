#> xylo_rpg_core:items/give/give
# @context: entity with inventory
# @within: any call
# @input: "#xrpgc.items.generate.level xrpgc.op"


function xylo_rpg_core:items/generate/start
execute in minecraft:overworld run item modify block 29999999 0 12341232 container.0 xylo_rpg_core:items/generate/set
execute in minecraft:overworld run loot give @s mine 29999999 0 12341232 minecraft:air{drop_contents: 1b}