#> xylo_rpg_core:items/charm/insert/start
# @context: any
# @within: any call
# @input: "#xrpgc.items.charm.insert.socket xrpgc.op"
# @input: put charm in container.1 of block "in minecraft:overworld positioned 29999999 0 12341232"
#
# prepares the storages and scores to call the xylo_rpg_core:items/charm/insert/set modifier

data modify storage xylo_rpg_core:op temp_charm set value {}
execute in minecraft:overworld run data modify storage xylo_rpg_core:op temp_charm set from block 29999999 0 12341232 Items[{Slot:1b}].tag.xylo_rpg_core.charm

