#> xylo_rpg_core:items/charms/generate/description/start
# @context: any
# @within: any call
# @input: "xylo_rpg_core:op skills", "xylo_rpg_core:op requirements"
#
# prepares the storages and scores to call the xylo_rpg_core:items/charms/generate/description/set modifier


data remove storage xylo_rpg_core:op description

# required intelligence
data modify storage xylo_rpg_core:op macro_data set value {intelligence:0}
data modify storage xylo_rpg_core:op macro_data.intelligence set from storage xylo_rpg_core:op requirements.intelligence
function xylo_rpg_core:items/charms/generate/description/requirement with storage xylo_rpg_core:op macro_data

# description if it is skills boost
data modify storage xylo_rpg_core:op macro_data set value {strength:0, dexterity:0, agility:0, constitution:0, intelligence:0}
data modify storage xylo_rpg_core:op macro_data merge from storage xylo_rpg_core:op skills
execute if data storage xylo_rpg_core:op temp_item.tag.xylo{id:"xylo_rpg_core:skill_charm"} run function xylo_rpg_core:items/charms/generate/description/skills with storage xylo_rpg_core:op macro_data

# description if ability
data remove storage xylo_rpg_core:op macro_data
data modify storage xylo_rpg_core:op macro_data.name set from storage xylo_rpg_core:op ability.name
execute if data storage xylo_rpg_core:op temp_item.tag.xylo{id:"xylo_rpg_core:ability_charm"} run function xylo_rpg_core:items/charms/generate/description/ability with storage xylo_rpg_core:op macro_data

