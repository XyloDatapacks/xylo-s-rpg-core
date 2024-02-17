#> xylo_rpg_core:items/equipment/generate/level/start
# @context: any
# @within: any call
# @input: "#xrpgc.items.equipment.generate.level xrpgc.op"
#
# prepares the storages and scores to call the xylo_rpg_core:items/equipment/generate/level/set modifier


# create output
execute store result storage xylo_rpg_core:op level int 1 run scoreboard players get #xrpgc.items.equipment.generate.level xrpgc.op

