#> xylo_rpg_core:items/charms/generate/ability/start
# @context: any
# @within: any call
# @input: "#xrpgc.items.equipment.generate.level xrpgc.op", "#xrpgc.items.equipment.generate.proficiency xrpgc.op"
#
# prepares the storages and scores to call the xylo_rpg_core:items/charms/generate/ability/set modifier


data modify storage xylo_rpg_core:op macro_data set value {min:1}
execute store result storage xylo_rpg_core:op macro_data.max int 1 run data get storage xylo_rpg_core:data abilities
execute store result storage xylo_rpg_core:op macro_data.id int 1 run function xylo_rpg_core:items/equipment/generate/skills/random with storage xylo_rpg_core:op macro_data
function xylo_rpg_core:items/charms/generate/ability/get_description with storage xylo_rpg_core:op macro_data
