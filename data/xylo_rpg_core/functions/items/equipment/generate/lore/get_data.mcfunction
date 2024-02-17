#> xylo_rpg_core:items/equipment/generate/lore/get_data
# @context: any
# @within: any call
# @input: "xylo_rpg_core:op temp_item"
#
# gets data from a storage containing item data

data modify storage xylo_rpg_core:op rarity set from storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.rarity
data modify storage xylo_rpg_core:op level set from storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.level
data modify storage xylo_rpg_core:op skills set from storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.skills
data modify storage xylo_rpg_core:op requirements set from storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.requirements
data modify storage xylo_rpg_core:op sockets set from storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.sockets
