#> xylo_rpg_core:items/equipment/give/spawn
# @context: position
# @within: any call
# @input: "#xrpgc.items.equipment.generate.level xrpgc.op"


function xylo_rpg_core:items/equipment/generate/start
execute in minecraft:overworld run item modify block 29999999 0 12341232 container.0 xylo_rpg_core:items/equipment/generate/set

execute in minecraft:overworld positioned 29999999.0 0.0 12341232.0 run function xylo_rpg_core:items/equipment/give/_spawn
tp @e[type=minecraft:item,tag=xrpgc.items.equipment.give.spawn.target] ~ ~ ~
tag @e[type=minecraft:item,distance=..0.01] remove xrpgc.items.equipment.give.spawn.target
