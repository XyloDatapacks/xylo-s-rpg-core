#> xylo_rpg_core:items/charm/extract/_get_charm/start
# @context: any
# @within: any call
# @input: "#xrpgc.items.charm.extract.socket xrpgc.op"
# @input: put item in container.0 of block "in minecraft:overworld positioned 29999999 0 12341232"
#
# @output: put charm in container.1 of block "in minecraft:overworld positioned 29999999 0 12341232"
# prepares the storages and scores to call the xylo_rpg_core:items/charm/extract/_get_charm/set modifier


# get charm
data modify storage xylo_rpg_core:op temp_charm set value {}
execute if score #xrpgc.items.charm.extract.socket xrpgc.op matches 1 in minecraft:overworld run data modify storage xylo_rpg_core:op temp_charm set from block 29999999 0 12341232 Items[{Slot:0b}].tag.xylo_rpg_core.sockets[0].item
execute if score #xrpgc.items.charm.extract.socket xrpgc.op matches 2 in minecraft:overworld run data modify storage xylo_rpg_core:op temp_charm set from block 29999999 0 12341232 Items[{Slot:0b}].tag.xylo_rpg_core.sockets[1].item
execute if score #xrpgc.items.charm.extract.socket xrpgc.op matches 3 in minecraft:overworld run data modify storage xylo_rpg_core:op temp_charm set from block 29999999 0 12341232 Items[{Slot:0b}].tag.xylo_rpg_core.sockets[2].item

# set charm in container.1
execute in minecraft:overworld run item replace block 29999999 0 12341232 container.1 with paper
execute in minecraft:overworld run data modify block 29999999 0 12341232 Items[{Slot:1b}] set from storage xylo_rpg_core:op temp_charm

# create empty storage
data modify storage xylo_rpg_core:op empty_compound set value {}