#> xylo_rpg_core:items/equipment/generate/skills/start
# @context: any
# @within: any call
# @input: "#xrpgc.items.equipment.generate.level xrpgc.op", "#xrpgc.items.equipment.generate.rarity xrpgc.op"
#
# prepares the storages and scores to call the xylo_rpg_core:items/equipment/generate/skills/set modifier

tellraw @s[tag=xrpgc.debug.items.equipment.generate] "---------------------------"


# get rolls
data modify storage xylo_rpg_core:op macro_data set value {min:1}
execute store result storage xylo_rpg_core:op macro_data.max int 2 run scoreboard players get #xrpgc.items.equipment.generate.rarity xrpgc.op
execute store result score #xrpgc.items.equipment.generate.skills.rolls xrpgc.op run function xylo_rpg_core:items/equipment/generate/skills/random with storage xylo_rpg_core:op macro_data
tellraw @s[tag=xrpgc.debug.items.equipment.generate] ["rolls: ",{"score":{"objective":"xrpgc.op","name":"#xrpgc.items.equipment.generate.skills.rolls"}}]

# get total points
scoreboard players operation #xrpgc.items.equipment.generate.skills.total_points xrpgc.op = #xrpgc.items.equipment.generate.level xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.skills.total_points xrpgc.op /= #2 xconst
scoreboard players operation #xrpgc.items.equipment.generate.skills.total_points xrpgc.op > #1 xconst
tellraw @s[tag=xrpgc.debug.items.equipment.generate] ["total_points: ",{"score":{"objective":"xrpgc.op","name":"#xrpgc.items.equipment.generate.skills.total_points"}}]

# average
scoreboard players operation #xrpgc.items.equipment.generate.skills.average xrpgc.op = #xrpgc.items.equipment.generate.skills.total_points xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.skills.average xrpgc.op /= #xrpgc.items.equipment.generate.skills.rolls xrpgc.op
tellraw @s[tag=xrpgc.debug.items.equipment.generate] ["average: ",{"score":{"objective":"xrpgc.op","name":"#xrpgc.items.equipment.generate.skills.average"}}]

# variance
scoreboard players operation #xrpgc.items.equipment.generate.skills.variance xrpgc.op = #xrpgc.items.equipment.generate.skills.total_points xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.skills.variance xrpgc.op *= #2 xconst
scoreboard players operation #xrpgc.items.equipment.generate.skills.variance xrpgc.op /= #xrpgc.items.equipment.generate.skills.rolls xrpgc.op
tellraw @s[tag=xrpgc.debug.items.equipment.generate] ["variance: ",{"score":{"objective":"xrpgc.op","name":"#xrpgc.items.equipment.generate.skills.variance"}}]

# reset skills
scoreboard players set #xrpgc.items.equipment.generate.skills.assigned.strength xrpgc.op 0
scoreboard players set #xrpgc.items.equipment.generate.skills.assigned.dexterity xrpgc.op 0
scoreboard players set #xrpgc.items.equipment.generate.skills.assigned.agility xrpgc.op 0
scoreboard players set #xrpgc.items.equipment.generate.skills.assigned.constitution xrpgc.op 0
scoreboard players set #xrpgc.items.equipment.generate.skills.assigned.intelligence xrpgc.op 0

# generate random skills
data remove storage xylo_rpg_core:op macro_data
scoreboard players operation #xrpgc.items.equipment.generate.skills.assign_min xrpgc.op = #xrpgc.items.equipment.generate.skills.average xrpgc.op
execute store result storage xylo_rpg_core:op macro_data.min int 1 run scoreboard players operation #xrpgc.items.equipment.generate.skills.assign_min xrpgc.op -= #xrpgc.items.equipment.generate.skills.variance xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.skills.assign_max xrpgc.op = #xrpgc.items.equipment.generate.skills.average xrpgc.op
execute store result storage xylo_rpg_core:op macro_data.max int 1 run scoreboard players operation #xrpgc.items.equipment.generate.skills.assign_max xrpgc.op += #xrpgc.items.equipment.generate.skills.variance xrpgc.op
execute if score #xrpgc.items.equipment.generate.skills.rolls xrpgc.op matches 1.. run function xylo_rpg_core:items/equipment/generate/skills/loop

# total assigned points
scoreboard players operation #xrpgc.items.equipment.generate.skills.assigned xrpgc.op = #xrpgc.items.equipment.generate.skills.assigned.strength xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.skills.assigned xrpgc.op += #xrpgc.items.equipment.generate.skills.assigned.dexterity xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.skills.assigned xrpgc.op += #xrpgc.items.equipment.generate.skills.assigned.agility xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.skills.assigned xrpgc.op += #xrpgc.items.equipment.generate.skills.assigned.constitution xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.skills.assigned xrpgc.op += #xrpgc.items.equipment.generate.skills.assigned.intelligence xrpgc.op

# missing points
scoreboard players operation #xrpgc.items.equipment.generate.skills.missing xrpgc.op = #xrpgc.items.equipment.generate.skills.total_points xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.skills.missing xrpgc.op -= #xrpgc.items.equipment.generate.skills.assigned xrpgc.op
tellraw @s[tag=xrpgc.debug.items.equipment.generate] ["missing: ",{"score":{"objective":"xrpgc.op","name":"#xrpgc.items.equipment.generate.skills.missing"}}]

# assign missing points to a random skill
execute store result score #xrpgc.items.equipment.generate.skills.selection xrpgc.op run random value 1..5
execute if score #xrpgc.items.equipment.generate.skills.selection xrpgc.op matches 1 run scoreboard players operation #xrpgc.items.equipment.generate.skills.assigned.strength xrpgc.op += #xrpgc.items.equipment.generate.skills.missing xrpgc.op
execute if score #xrpgc.items.equipment.generate.skills.selection xrpgc.op matches 2 run scoreboard players operation #xrpgc.items.equipment.generate.skills.assigned.dexterity xrpgc.op += #xrpgc.items.equipment.generate.skills.missing xrpgc.op
execute if score #xrpgc.items.equipment.generate.skills.selection xrpgc.op matches 3 run scoreboard players operation #xrpgc.items.equipment.generate.skills.assigned.agility xrpgc.op += #xrpgc.items.equipment.generate.skills.missing xrpgc.op
execute if score #xrpgc.items.equipment.generate.skills.selection xrpgc.op matches 4 run scoreboard players operation #xrpgc.items.equipment.generate.skills.assigned.constitution xrpgc.op += #xrpgc.items.equipment.generate.skills.missing xrpgc.op
execute if score #xrpgc.items.equipment.generate.skills.selection xrpgc.op matches 5 run scoreboard players operation #xrpgc.items.equipment.generate.skills.assigned.intelligence xrpgc.op += #xrpgc.items.equipment.generate.skills.missing xrpgc.op

# create output
data remove storage xylo_rpg_core:op skills
execute unless score #xrpgc.items.equipment.generate.skills.assigned.strength xrpgc.op matches 0 store result storage xylo_rpg_core:op skills.strength int 1 run scoreboard players get #xrpgc.items.equipment.generate.skills.assigned.strength xrpgc.op 
execute unless score #xrpgc.items.equipment.generate.skills.assigned.dexterity xrpgc.op matches 0 store result storage xylo_rpg_core:op skills.dexterity int 1 run scoreboard players get #xrpgc.items.equipment.generate.skills.assigned.dexterity xrpgc.op
execute unless score #xrpgc.items.equipment.generate.skills.assigned.agility xrpgc.op matches 0 store result storage xylo_rpg_core:op skills.agility int 1 run scoreboard players get #xrpgc.items.equipment.generate.skills.assigned.agility xrpgc.op 
execute unless score #xrpgc.items.equipment.generate.skills.assigned.constitution xrpgc.op matches 0 store result storage xylo_rpg_core:op skills.constitution int 1 run scoreboard players get #xrpgc.items.equipment.generate.skills.assigned.constitution xrpgc.op 
execute unless score #xrpgc.items.equipment.generate.skills.assigned.intelligence xrpgc.op matches 0 store result storage xylo_rpg_core:op skills.intelligence int 1 run scoreboard players get #xrpgc.items.equipment.generate.skills.assigned.intelligence xrpgc.op 
