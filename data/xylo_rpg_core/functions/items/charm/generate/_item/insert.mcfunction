#> xylo_rpg_core:items/charm/generate/_item/insert
# @context: any
# @within: xylo_rpg_core:items/charm/generate/item/start
# @input: "#xrpgc.items.generate.level xrpgc.op"
#

data modify block 29999999 0 12341232 Items set value []
#loot insert 29999999 0 12341232 loot xylo_rpg_core:items/charm/generate/item/random
item replace block 29999999 0 12341232 container.0 with minecraft:paper{display:{Name:'{"translate": "item.xylo_rpg_core.charm.base_name","italic":false}'},xylo_rpg_core:{charm:{icon:"+",description:'{"text":" + Skills","color":"green"}'}}}
data modify block 29999999 0 12341232 Items[0].Slot set value 0b

# save to storage
data modify storage xylo_rpg_core:op temp_item set from block 29999999 0 12341232 Items[0]
