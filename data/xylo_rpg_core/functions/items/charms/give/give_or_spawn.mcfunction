#> xylo_rpg_core:items/charms/give/give_or_spawn
# @context: entity with inventory
# @within: any call
# @input: "#xrpgc.items.equipment.generate.level xrpgc.op"


execute store result score #xrpgc.items.charms.give.give_or_spawn.gave xrpgc.op run function xylo_rpg_core:items/charms/give/give
execute unless score #xrpgc.items.charms.give.give_or_spawn.gave xrpgc.op matches 0 run return 1

execute in minecraft:overworld positioned 29999999.0 0.0 12341232.0 run function xylo_rpg_core:items/charms/give/_spawn
tp @e[type=minecraft:item,tag=xrpgc.items.charms.give.spawn.target] ~ ~ ~
tag @e[type=minecraft:item,distance=..0.01] remove xrpgc.items.charms.give.spawn.target
