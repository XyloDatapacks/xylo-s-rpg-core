#> xylo_rpg_core:classes/paladin/select
# @context: as any entity with skills
# @within: any call


# reset class
function xylo_rpg_core:classes/reset

# set skills
scoreboard players set @s xrpgc.skills.strength_class 133
scoreboard players set @s xrpgc.skills.dexterity_class 50
scoreboard players set @s xrpgc.skills.intelligence_class 133

# add class tag
scoreboard players set @s xrpgc.class.paladin 1

# refresh skills
function xylo_rpg_core:skills/refresh

