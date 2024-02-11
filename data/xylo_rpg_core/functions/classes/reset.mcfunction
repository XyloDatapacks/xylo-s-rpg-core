#> xylo_rpg_core:classes/reset
# @context: as any entity with skills
# @within: any call

# reset scores
scoreboard players set @s xrpgc.skills.strength_class 100
scoreboard players set @s xrpgc.skills.dexterity_class 100
scoreboard players set @s xrpgc.skills.agility_class 100
scoreboard players set @s xrpgc.skills.constitution_class 100
scoreboard players set @s xrpgc.skills.intelligence_class 100

# remove tags
scoreboard players set @s xrpgc.class.berserker 0
scoreboard players set @s xrpgc.class.paladin 0
scoreboard players set @s xrpgc.class.sorcerer 0
scoreboard players set @s xrpgc.class.warlock 0
scoreboard players set @s xrpgc.class.hunter 0
scoreboard players set @s xrpgc.class.thief 0
scoreboard players set @s xrpgc.class.assassin 0
scoreboard players set @s xrpgc.class.monk 0
scoreboard players set @s xrpgc.class.thinker 0
scoreboard players set @s xrpgc.class.revenant 0