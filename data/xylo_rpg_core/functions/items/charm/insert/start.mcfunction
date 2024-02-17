#> xylo_rpg_core:items/charm/insert/start
# @context: any
# @within: any call
# @input: "#xrpgc.items.charm.insert.socket xrpgc.op"
# @input: put charm in container.1 of block "in minecraft:overworld positioned 29999999 0 12341232"
# @input: put item in container.0 of block "in minecraft:overworld positioned 29999999 0 12341232"
#
# prepares the storages and scores to call the xylo_rpg_core:items/charm/insert/start modifier

# get charm data
function xylo_rpg_core:items/charm/insert/_get_charm/start

# get item data for lore
execute in minecraft:overworld run data modify storage xylo_rpg_core:op temp_item set from block 29999999 0 12341232 Items[{Slot:0b}]
# update charm's socket in temp_item for lore
execute if score #xrpgc.items.charm.insert.socket xrpgc.op matches 1 run data modify storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.sockets[0] set from storage xylo_rpg_core:op temp_charm
execute if score #xrpgc.items.charm.insert.socket xrpgc.op matches 2 run data modify storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.sockets[1] set from storage xylo_rpg_core:op temp_charm
execute if score #xrpgc.items.charm.insert.socket xrpgc.op matches 3 run data modify storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.sockets[2] set from storage xylo_rpg_core:op temp_charm
# generate data for lore
function xylo_rpg_core:items/equipment/generate/lore/get_data
function xylo_rpg_core:items/equipment/generate/lore/start

