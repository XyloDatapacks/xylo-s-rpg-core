#> xylo_rpg_core:classes/assassin/select
# @context: as any entity with skills
# @within: any call


# reset class
function xylo_rpg_core:classes/reset

# set skills
scoreboard players set @s xrpgc.skills.strength_class 133
scoreboard players set @s xrpgc.skills.dexterity_class 133
scoreboard players set @s xrpgc.skills.constitution_class 50

# add class tag
scoreboard players set @s xrpgc.class.assassin 1

# refresh skills
function xylo_rpg_core:skills/refresh

