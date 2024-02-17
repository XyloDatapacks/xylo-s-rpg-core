#> xylo_rpg_core:items/charm/extract/start
# @context: any
# @within: any call
# @input: "#xrpgc.items.charm.extract.socket xrpgc.op"
# @input: put item in container.0 of block "in minecraft:overworld positioned 29999999 0 12341232"
#
# @output: put charm in container.1 of block "in minecraft:overworld positioned 29999999 0 12341232"
# prepares the storages and scores to call the xylo_rpg_core:items/charm/extract/set modifier


# get charm data (and set in container.1)
function xylo_rpg_core:items/charm/extract/_get_charm/start
# get item data
execute in minecraft:overworld run data modify storage xylo_rpg_core:op temp_item set from block 29999999 0 12341232 Items[{Slot:0b}]
# update charm's socket in temp_item for lore
execute if score #xrpgc.items.charm.extract.socket xrpgc.op matches 1 run data modify storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.sockets[0] set value {}
execute if score #xrpgc.items.charm.extract.socket xrpgc.op matches 2 run data modify storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.sockets[1] set value {}
execute if score #xrpgc.items.charm.extract.socket xrpgc.op matches 3 run data modify storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.sockets[2] set value {}
# generate data for lore
function xylo_rpg_core:items/equipment/generate/lore/get_data
function xylo_rpg_core:items/equipment/generate/lore/start

