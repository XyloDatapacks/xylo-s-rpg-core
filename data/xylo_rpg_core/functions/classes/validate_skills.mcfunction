#> xylo_rpg_core:classes/validate_skills
# @context: as any entity with skills
# @within: any call

# make sure all values are initialized
execute unless score @s xrpgc.skills.strength_class = @s xrpgc.skills.strength_class run scoreboard players set @s xrpgc.skills.strength_class 100
execute unless score @s xrpgc.skills.dexterity_class = @s xrpgc.skills.dexterity_class run scoreboard players set @s xrpgc.skills.dexterity_class 100
execute unless score @s xrpgc.skills.agility_class = @s xrpgc.skills.agility_class run scoreboard players set @s xrpgc.skills.agility_class 100
execute unless score @s xrpgc.skills.constitution_class = @s xrpgc.skills.constitution_class run scoreboard players set @s xrpgc.skills.constitution_class 100
execute unless score @s xrpgc.skills.intelligence_class = @s xrpgc.skills.intelligence_class run scoreboard players set @s xrpgc.skills.intelligence_class 100

