#> xylo_rpg_core:items/charm/generate/start
# @context: any
# @within: any call
# @input: "#xrpgc.items.generate.level xrpgc.op"
#
# set item in container.0 of block "in minecraft:overworld positioned 29999999 0 12341232"
# prepares the storages and scores to call the xylo_rpg_core:items/charm/generate/set modifier

function xylo_rpg_core:items/charm/generate/_item/start
scoreboard players set #xrpgc.items.generate.proficiency xrpgc.op 5
function xylo_rpg_core:items/charm/generate/data
