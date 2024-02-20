#> xylo_rpg_core:items/charms/give/_spawn
# @context: in minecraft:overworld positioned 29999999.0 0.0 12341232.0
# @within: xylo_rpg_core:items/charms/give/spawn

tag @e[type=minecraft:item,dx=0] add xrpgc.items.charms.give.spawn.exclude
loot spawn ~0.5 ~0.5 ~0.5 mine ~ ~ ~ minecraft:air{drop_contents: 1b}
tag @e[type=minecraft:item,dx=0,tag=!xrpgc.items.charms.give.spawn.exclude] add xrpgc.items.charms.give.spawn.target
tag @e[type=minecraft:item,dx=0] remove xrpgc.items.charms.give.spawn.exclude
