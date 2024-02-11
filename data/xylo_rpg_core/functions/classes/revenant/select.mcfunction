#> xylo_rpg_core:classes/revenant/select
# @context: as any entity with skills
# @within: any call


# reset class
function xylo_rpg_core:classes/reset

# set skills
scoreboard players set @s xrpgc.skills.agility_class 133
scoreboard players set @s xrpgc.skills.constitution_class 133
scoreboard players set @s xrpgc.skills.intelligence_class 50

# add class tag
scoreboard players set @s xrpgc.class.revenant 1

# refresh skills
function xylo_rpg_core:skills/refresh

