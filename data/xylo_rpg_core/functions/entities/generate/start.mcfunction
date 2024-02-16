#> xylo_rpg_core:entities/generate/start
# @context: entity at @s
# @within: any call

tag @s add xrpgc.skills.set

# get level
execute store result score @s xrpgc.level run function xylo_rpg_core:entities/generate/get_level
tellraw @a[tag=xrpgc.debug.entities.generate] ["--------------------------\nLevel: ",{"score":{"objective":"xrpgc.level","name":"@s"}}]
# convert level to binary for advancements detection
function xylo_rpg_core:entities/generate/set_level_binary

# generate skills based on level
execute store result score @s xrpgc.skills.strength_base run random value 50..150
execute store result score @s xrpgc.skills.dexterity_base run random value 50..150
execute store result score @s xrpgc.skills.agility_base run random value 50..150
execute store result score @s xrpgc.skills.constitution_base run random value 50..150
execute store result score @s xrpgc.skills.intelligence_base run random value 50..150

scoreboard players operation @s xrpgc.skills.strength_base *= #xrpgc.entities.generate.level xrpgc.op
scoreboard players operation @s xrpgc.skills.dexterity_base *= #xrpgc.entities.generate.level xrpgc.op
scoreboard players operation @s xrpgc.skills.agility_base *= #xrpgc.entities.generate.level xrpgc.op
scoreboard players operation @s xrpgc.skills.constitution_base *= #xrpgc.entities.generate.level xrpgc.op
scoreboard players operation @s xrpgc.skills.intelligence_base *= #xrpgc.entities.generate.level xrpgc.op

scoreboard players operation @s xrpgc.skills.strength_base /= #100 xconst
scoreboard players operation @s xrpgc.skills.dexterity_base /= #100 xconst
scoreboard players operation @s xrpgc.skills.agility_base /= #100 xconst
scoreboard players operation @s xrpgc.skills.constitution_base /= #100 xconst
scoreboard players operation @s xrpgc.skills.intelligence_base /= #100 xconst

scoreboard players operation @s xrpgc.skills.strength_base > #0 xconst
scoreboard players operation @s xrpgc.skills.dexterity_base > #0 xconst
scoreboard players operation @s xrpgc.skills.agility_base > #0 xconst
scoreboard players operation @s xrpgc.skills.constitution_base > #0 xconst
scoreboard players operation @s xrpgc.skills.intelligence_base > #0 xconst

# set skills
function xylo_rpg_core:skills/refresh

execute store result entity @s Health float 1 run attribute @s generic.max_health get