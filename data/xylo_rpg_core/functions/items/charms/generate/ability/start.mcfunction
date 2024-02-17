#> xylo_rpg_core:items/charms/generate/ability/start
# @context: any
# @within: any call
# @input: "#xrpgc.items.equipment.generate.level xrpgc.op", "#xrpgc.items.equipment.generate.proficiency xrpgc.op"
#
# prepares the storages and scores to call the xylo_rpg_core:items/charms/generate/ability/set modifier


execute store result storage xylo_rpg_core:op ability.id int 1 run random value 1..3
function xylo_rpg_core:items/charms/generate/ability/get_description with storage xylo_rpg_core:op ability
