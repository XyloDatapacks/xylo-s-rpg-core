#> xylo_rpg_core:items/generate/_item/insert
# @context: any
# @within: xylo_rpg_core:items/generate/item/start
# @input: "#xrpgc.items.generate.level xrpgc.op"
#

data modify block 29999999 0 12341232 Items set value []
loot insert 29999999 0 12341232 loot xylo_rpg_core:items/generate/item/random
data modify block 29999999 0 12341232 Items[0].Slot set value 0b

# save to storage
data modify storage xylo_rpg_core:op temp_item set from block 29999999 0 12341232 Items[0]
