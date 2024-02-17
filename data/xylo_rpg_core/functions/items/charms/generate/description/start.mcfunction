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
execute if data storage xylo_rpg_core:op skills run function xylo_rpg_core:items/charms/generate/description/skills with storage xylo_rpg_core:op macro_data

# description if it has ability instead
# TODO: add description for ability charm