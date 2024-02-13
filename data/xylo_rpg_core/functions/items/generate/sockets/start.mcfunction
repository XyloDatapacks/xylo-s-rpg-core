#> xylo_rpg_core:items/generate/sockets/start
# @context: any
# @within: any call
# @input: "#xrpgc.items.generate.rarity xrpgc.op"
#
# prepares the storages and scores to call the xylo_rpg_core:items/generate/sockets/set modifier


# create output
execute if score #xrpgc.items.generate.rarity xrpgc.op matches 1..2 run data modify storage xylo_rpg_core:op sockets set value [{}]
execute if score #xrpgc.items.generate.rarity xrpgc.op matches 3..4 run data modify storage xylo_rpg_core:op sockets set value [{},{}]
execute if score #xrpgc.items.generate.rarity xrpgc.op matches 5..6 run data modify storage xylo_rpg_core:op sockets set value [{},{},{}]
