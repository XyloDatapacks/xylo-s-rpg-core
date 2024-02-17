#> xylo_rpg_core:items/equipment/generate/_item/start
# @context: any
# @within: any call
# @input: "#xrpgc.items.equipment.generate.level xrpgc.op"
#
# @output: "xylo_rpg_core:op temp_item"
# set item in container.0 of block "in minecraft:overworld positioned 29999999 0 12341232"

execute in minecraft:overworld run function xylo_rpg_core:items/equipment/generate/_item/insert
