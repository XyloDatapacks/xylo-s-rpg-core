#> xylo_rpg_core:items/generate/skills/loop
# @context: any
# @within: xylo_rpg_core:items/generate/skills/start, xylo_rpg_core:items/generate/requirements/start


execute store result score #xrpgc.items.generate.skills.selection xrpgc.op run random value 1..5
execute if score #xrpgc.items.generate.skills.selection xrpgc.op matches 1 store result score #xrpgc.items.generate.skills.assign.strength xrpgc.op run function xylo_rpg_core:items/generate/skills/random with storage xylo_rpg_core:op macro_data
execute if score #xrpgc.items.generate.skills.selection xrpgc.op matches 2 store result score #xrpgc.items.generate.skills.assign.dexterity xrpgc.op run function xylo_rpg_core:items/generate/skills/random with storage xylo_rpg_core:op macro_data
execute if score #xrpgc.items.generate.skills.selection xrpgc.op matches 3 store result score #xrpgc.items.generate.skills.assign.agility xrpgc.op run function xylo_rpg_core:items/generate/skills/random with storage xylo_rpg_core:op macro_data
execute if score #xrpgc.items.generate.skills.selection xrpgc.op matches 4 store result score #xrpgc.items.generate.skills.assign.constitution xrpgc.op run function xylo_rpg_core:items/generate/skills/random with storage xylo_rpg_core:op macro_data
execute if score #xrpgc.items.generate.skills.selection xrpgc.op matches 5 store result score #xrpgc.items.generate.skills.assign.intelligence xrpgc.op run function xylo_rpg_core:items/generate/skills/random with storage xylo_rpg_core:op macro_data

execute if score #xrpgc.items.generate.skills.selection xrpgc.op matches 1 run scoreboard players operation #xrpgc.items.generate.skills.assigned.strength xrpgc.op += #xrpgc.items.generate.skills.assign.strength xrpgc.op
execute if score #xrpgc.items.generate.skills.selection xrpgc.op matches 2 run scoreboard players operation #xrpgc.items.generate.skills.assigned.dexterity xrpgc.op += #xrpgc.items.generate.skills.assign.dexterity xrpgc.op
execute if score #xrpgc.items.generate.skills.selection xrpgc.op matches 3 run scoreboard players operation #xrpgc.items.generate.skills.assigned.agility xrpgc.op += #xrpgc.items.generate.skills.assign.agility xrpgc.op
execute if score #xrpgc.items.generate.skills.selection xrpgc.op matches 4 run scoreboard players operation #xrpgc.items.generate.skills.assigned.constitution xrpgc.op += #xrpgc.items.generate.skills.assign.constitution xrpgc.op
execute if score #xrpgc.items.generate.skills.selection xrpgc.op matches 5 run scoreboard players operation #xrpgc.items.generate.skills.assigned.intelligence xrpgc.op += #xrpgc.items.generate.skills.assign.intelligence xrpgc.op

scoreboard players remove #xrpgc.items.generate.skills.rolls xrpgc.op 1
execute if score #xrpgc.items.generate.skills.rolls xrpgc.op matches 1.. run function xylo_rpg_core:items/generate/skills/loop