#> xylo_rpg_core:skills/get/equipment/legs
# @context: parent context
# @within: xylo_rpg_core:skills/get/start

# reset weight
function xylo_rpg_core:equipment/weight/reset/legs

# requirements check
execute store result score #xrpgc.skills.get.equipment.generic.strength.requirement xrpgc.op run data get storage xylo_rpg_core:op player_data.Inventory[{Slot:101b}].tag.xylo_rpg_core.requirements.strength
execute store result score #xrpgc.skills.get.equipment.generic.dexterity.requirement xrpgc.op run data get storage xylo_rpg_core:op player_data.Inventory[{Slot:101b}].tag.xylo_rpg_core.requirements.dexterity
execute store result score #xrpgc.skills.get.equipment.generic.agility.requirement xrpgc.op run data get storage xylo_rpg_core:op player_data.Inventory[{Slot:101b}].tag.xylo_rpg_core.requirements.agility
execute store result score #xrpgc.skills.get.equipment.generic.constitution.requirement xrpgc.op run data get storage xylo_rpg_core:op player_data.Inventory[{Slot:101b}].tag.xylo_rpg_core.requirements.constitution
execute store result score #xrpgc.skills.get.equipment.generic.intelligence.requirement xrpgc.op run data get storage xylo_rpg_core:op player_data.Inventory[{Slot:101b}].tag.xylo_rpg_core.requirements.intelligence
execute unless predicate xylo_rpg_core:skills/get/equipment/requirements_check run return run function xylo_rpg_core:equipment/weight/check/legs

# get skills
execute store result score #xrpgc.skills.get.equipment.legs.strength xrpgc.op run data get storage xylo_rpg_core:op player_data.Inventory[{Slot:101b}].tag.xylo_rpg_core.skills.strength
execute store result score #xrpgc.skills.get.equipment.legs.dexterity xrpgc.op run data get storage xylo_rpg_core:op player_data.Inventory[{Slot:101b}].tag.xylo_rpg_core.skills.dexterity
execute store result score #xrpgc.skills.get.equipment.legs.agility xrpgc.op run data get storage xylo_rpg_core:op player_data.Inventory[{Slot:101b}].tag.xylo_rpg_core.skills.agility
execute store result score #xrpgc.skills.get.equipment.legs.constitution xrpgc.op run data get storage xylo_rpg_core:op player_data.Inventory[{Slot:101b}].tag.xylo_rpg_core.skills.constitution
execute store result score #xrpgc.skills.get.equipment.legs.intelligence xrpgc.op run data get storage xylo_rpg_core:op player_data.Inventory[{Slot:101b}].tag.xylo_rpg_core.skills.intelligence

# add
scoreboard players operation @s xrpgc.skills.strength_equipment += #xrpgc.skills.get.equipment.legs.strength xrpgc.op
scoreboard players operation @s xrpgc.skills.dexterity_equipment += #xrpgc.skills.get.equipment.legs.dexterity xrpgc.op
scoreboard players operation @s xrpgc.skills.agility_equipment += #xrpgc.skills.get.equipment.legs.agility xrpgc.op
scoreboard players operation @s xrpgc.skills.constitution_equipment += #xrpgc.skills.get.equipment.legs.constitution xrpgc.op
scoreboard players operation @s xrpgc.skills.intelligence_equipment += #xrpgc.skills.get.equipment.legs.intelligence xrpgc.op

