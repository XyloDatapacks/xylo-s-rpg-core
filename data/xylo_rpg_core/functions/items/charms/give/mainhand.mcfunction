#> xylo_rpg_core:items/charms/give/mainhand
# @context: entity with mainhand slot
# @within: any call
# @input: "#xrpgc.items.equipment.generate.level xrpgc.op"


function xylo_rpg_core:items/charms/generate/start
execute in minecraft:overworld run item replace entity @s weapon.mainhand from block 29999999 0 12341232 container.0 xylo_rpg_core:items/charms/generate/set
