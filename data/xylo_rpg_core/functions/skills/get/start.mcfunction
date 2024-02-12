#> xylo_rpg_core:skills/get/start
# @context: as any entity with skills
# @within: any call


#==<Base Value>==#
scoreboard players operation @s xrpgc.skills.strength = @s xrpgc.skills.strength_base
scoreboard players operation @s xrpgc.skills.dexterity = @s xrpgc.skills.dexterity_base
scoreboard players operation @s xrpgc.skills.agility = @s xrpgc.skills.agility_base
scoreboard players operation @s xrpgc.skills.constitution = @s xrpgc.skills.constitution_base
scoreboard players operation @s xrpgc.skills.intelligence = @s xrpgc.skills.intelligence_base

#==<Additional Value>==#
scoreboard players operation @s xrpgc.skills.strength += @s xrpgc.skills.strength_additional
scoreboard players operation @s xrpgc.skills.dexterity += @s xrpgc.skills.dexterity_additional
scoreboard players operation @s xrpgc.skills.agility += @s xrpgc.skills.agility_additional
scoreboard players operation @s xrpgc.skills.constitution += @s xrpgc.skills.constitution_additional
scoreboard players operation @s xrpgc.skills.intelligence += @s xrpgc.skills.intelligence_additional

#==<Equipment Value>==#

# reset scores
scoreboard players set @s xrpgc.skills.strength_equipment 0
scoreboard players set @s xrpgc.skills.dexterity_equipment 0
scoreboard players set @s xrpgc.skills.agility_equipment 0
scoreboard players set @s xrpgc.skills.constitution_equipment 0
scoreboard players set @s xrpgc.skills.intelligence_equipment 0

# get scores by adding equipment
execute in minecraft:overworld run function xylo_rpg_core:skills/get/load_equipment
function xylo_rpg_core:equipment/weight/reset/score

function xylo_rpg_core:skills/get/equipment/head
function xylo_rpg_core:skills/get/equipment/chest
function xylo_rpg_core:skills/get/equipment/legs
function xylo_rpg_core:skills/get/equipment/feet
function xylo_rpg_core:skills/get/equipment/mainhand
function xylo_rpg_core:skills/get/equipment/offhand

# add equipment score to total
scoreboard players operation @s xrpgc.skills.strength += @s xrpgc.skills.strength_equipment
scoreboard players operation @s xrpgc.skills.dexterity += @s xrpgc.skills.dexterity_equipment
scoreboard players operation @s xrpgc.skills.agility += @s xrpgc.skills.agility_equipment
scoreboard players operation @s xrpgc.skills.constitution += @s xrpgc.skills.constitution_equipment
scoreboard players operation @s xrpgc.skills.intelligence += @s xrpgc.skills.intelligence_equipment

#==<Class Bonus>==#
scoreboard players operation @s xrpgc.skills.strength *= @s xrpgc.skills.strength_class
scoreboard players operation @s xrpgc.skills.dexterity *= @s xrpgc.skills.dexterity_class
scoreboard players operation @s xrpgc.skills.agility *= @s xrpgc.skills.agility_class
scoreboard players operation @s xrpgc.skills.constitution *= @s xrpgc.skills.constitution_class
scoreboard players operation @s xrpgc.skills.intelligence *= @s xrpgc.skills.intelligence_class
scoreboard players operation @s xrpgc.skills.strength /= #100 xconst
scoreboard players operation @s xrpgc.skills.dexterity /= #100 xconst
scoreboard players operation @s xrpgc.skills.agility /= #100 xconst
scoreboard players operation @s xrpgc.skills.constitution /= #100 xconst
scoreboard players operation @s xrpgc.skills.intelligence /= #100 xconst

# debug
tellraw @s[tag=xrpgc.debug.skills] ["--------------------------\nStrength: ",{"score":{"objective":"xrpgc.skills.strength","name":"@s"}},"\nDexterity: ",{"score":{"objective":"xrpgc.skills.dexterity","name":"@s"}},"\nAgility: ",{"score":{"objective":"xrpgc.skills.agility","name":"@s"}},"\nConstitution: ",{"score":{"objective":"xrpgc.skills.constitution","name":"@s"}},"\nIntelligence: ",{"score":{"objective":"xrpgc.skills.intelligence","name":"@s"}},"\n--------------------------"]

