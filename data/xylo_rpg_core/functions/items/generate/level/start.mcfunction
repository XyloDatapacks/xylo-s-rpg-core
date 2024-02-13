#> xylo_rpg_core:items/generate/level/start
# @context: any
# @within: any call
# @input: "#xrpgc.items.generate.level xrpgc.op"
#
# prepares the storages and scores to call the xylo_rpg_core:items/generate/level/set modifier


# create output
execute store result storage xylo_rpg_core:op level int 1 run scoreboard players get #xrpgc.items.generate.level xrpgc.op

