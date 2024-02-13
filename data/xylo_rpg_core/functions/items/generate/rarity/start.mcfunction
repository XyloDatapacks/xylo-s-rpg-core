#> xylo_rpg_core:items/generate/rarity/start
# @context: any
# @within: any call
# @input: "#xrpgc.items.generate.level xrpgc.op"
#
# @output: "#xrpgc.items.generate.rarity xrpgc.op"
# prepares the storages and scores to call the xylo_rpg_core:items/generate/rarity/set modifier

tellraw @s[tag=xrpgc.debug.items.generate] "---------------------------"

# get rarity
data remove storage xylo_rpg_core:op macro_data 
scoreboard players operation #xrpgc.items.generate.rarity.min_rarity xrpgc.op = #xrpgc.items.generate.level xrpgc.op
scoreboard players operation #xrpgc.items.generate.rarity.min_rarity xrpgc.op *= #2 xconst
scoreboard players operation #xrpgc.items.generate.rarity.min_rarity xrpgc.op /= #3 xconst
scoreboard players add #xrpgc.items.generate.rarity.min_rarity xrpgc.op 1
execute store result storage xylo_rpg_core:op macro_data.min int 1 run scoreboard players operation #xrpgc.items.generate.rarity.min_rarity xrpgc.op < #99 xconst
scoreboard players operation #xrpgc.items.generate.rarity.max_rarity xrpgc.op = #xrpgc.items.generate.level xrpgc.op
scoreboard players operation #xrpgc.items.generate.rarity.max_rarity xrpgc.op *= #2 xconst
scoreboard players add #xrpgc.items.generate.rarity.max_rarity xrpgc.op 1
execute store result storage xylo_rpg_core:op macro_data.max int 1 run scoreboard players operation #xrpgc.items.generate.rarity.max_rarity xrpgc.op < #100 xconst
execute store result score #xrpgc.items.generate.rarity.output xrpgc.op run function xylo_rpg_core:items/generate/skills/random with storage xylo_rpg_core:op macro_data
tellraw @s[tag=xrpgc.debug.items.generate] ["rarity: ",{"score":{"objective":"xrpgc.op","name":"#xrpgc.items.generate.rarity"}}]

# create output (30, 25, 20, 10, 10, 5)
execute if score #xrpgc.items.generate.rarity.output xrpgc.op matches 1..30 store result storage xylo_rpg_core:op rarity int 1 run scoreboard players set #xrpgc.items.generate.rarity xrpgc.op 1
execute if score #xrpgc.items.generate.rarity.output xrpgc.op matches 31..55 store result storage xylo_rpg_core:op rarity int 1 run scoreboard players set #xrpgc.items.generate.rarity xrpgc.op 2
execute if score #xrpgc.items.generate.rarity.output xrpgc.op matches 56..75 store result storage xylo_rpg_core:op rarity int 1 run scoreboard players set #xrpgc.items.generate.rarity xrpgc.op 3
execute if score #xrpgc.items.generate.rarity.output xrpgc.op matches 76..85 store result storage xylo_rpg_core:op rarity int 1 run scoreboard players set #xrpgc.items.generate.rarity xrpgc.op 4
execute if score #xrpgc.items.generate.rarity.output xrpgc.op matches 86..95 store result storage xylo_rpg_core:op rarity int 1 run scoreboard players set #xrpgc.items.generate.rarity xrpgc.op 5
execute if score #xrpgc.items.generate.rarity.output xrpgc.op matches 96.. store result storage xylo_rpg_core:op rarity int 1 run scoreboard players set #xrpgc.items.generate.rarity xrpgc.op 6

