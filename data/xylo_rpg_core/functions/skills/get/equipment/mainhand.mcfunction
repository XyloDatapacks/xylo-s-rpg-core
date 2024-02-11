#> xylo_rpg_core:skills/get/equipment/mainhand
# @context: parent context
# @within: xylo_rpg_core:skills/get/start

# requirements check
execute store result score #xrpgc.skills.get.equipment.generic.strength.requirement xrpgc.op run data get storage xylo_rpg_core:op player_data.SelectedItem.tag.xylo_rpg_core.requirement.strength
execute store result score #xrpgc.skills.get.equipment.generic.dexterity.requirement xrpgc.op run data get storage xylo_rpg_core:op player_data.SelectedItem.tag.xylo_rpg_core.requirement.dexterity
execute store result score #xrpgc.skills.get.equipment.generic.agility.requirement xrpgc.op run data get storage xylo_rpg_core:op player_data.SelectedItem.tag.xylo_rpg_core.requirement.agility
execute store result score #xrpgc.skills.get.equipment.generic.constitution.requirement xrpgc.op run data get storage xylo_rpg_core:op player_data.SelectedItem.tag.xylo_rpg_core.requirement.constitution
execute store result score #xrpgc.skills.get.equipment.generic.intelligence.requirement xrpgc.op run data get storage xylo_rpg_core:op player_data.SelectedItem.tag.xylo_rpg_core.requirement.intelligence
execute unless predicate xylo_rpg_core:skills/get/equipment/requirements_check run return 0

# get skills
execute store result score #xrpgc.skills.get.equipment.mainhand.strength xrpgc.op run data get storage xylo_rpg_core:op player_data.SelectedItem.tag.xylo_rpg_core.skills.strength
execute store result score #xrpgc.skills.get.equipment.mainhand.dexterity xrpgc.op run data get storage xylo_rpg_core:op player_data.SelectedItem.tag.xylo_rpg_core.skills.dexterity
execute store result score #xrpgc.skills.get.equipment.mainhand.agility xrpgc.op run data get storage xylo_rpg_core:op player_data.SelectedItem.tag.xylo_rpg_core.skills.agility
execute store result score #xrpgc.skills.get.equipment.mainhand.constitution xrpgc.op run data get storage xylo_rpg_core:op player_data.SelectedItem.tag.xylo_rpg_core.skills.constitution
execute store result score #xrpgc.skills.get.equipment.mainhand.intelligence xrpgc.op run data get storage xylo_rpg_core:op player_data.SelectedItem.tag.xylo_rpg_core.skills.intelligence

# add
scoreboard players operation @s xrpgc.skills.strength_equipment += #xrpgc.skills.get.equipment.mainhand.strength xrpgc.op
scoreboard players operation @s xrpgc.skills.dexterity_equipment += #xrpgc.skills.get.equipment.mainhand.dexterity xrpgc.op
scoreboard players operation @s xrpgc.skills.agility_equipment += #xrpgc.skills.get.equipment.mainhand.agility xrpgc.op
scoreboard players operation @s xrpgc.skills.constitution_equipment += #xrpgc.skills.get.equipment.mainhand.constitution xrpgc.op
scoreboard players operation @s xrpgc.skills.intelligence_equipment += #xrpgc.skills.get.equipment.mainhand.intelligence xrpgc.op

