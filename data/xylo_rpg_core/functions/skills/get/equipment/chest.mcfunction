#> xylo_rpg_core:skills/get/equipment/chest
# @context: parent context
# @within: xylo_rpg_core:skills/get/start

# reset weight
function xylo_rpg_core:equipment/weight/reset/chest

# requirements check
execute store result score #xrpgc.skills.get.equipment.generic.strength.requirement xrpgc.op run data get storage xylo_rpg_core:op equipment[{Slot:2b}].tag.xylo_rpg_core.requirements.strength
execute store result score #xrpgc.skills.get.equipment.generic.dexterity.requirement xrpgc.op run data get storage xylo_rpg_core:op equipment[{Slot:2b}].tag.xylo_rpg_core.requirements.dexterity
execute store result score #xrpgc.skills.get.equipment.generic.agility.requirement xrpgc.op run data get storage xylo_rpg_core:op equipment[{Slot:2b}].tag.xylo_rpg_core.requirements.agility
execute store result score #xrpgc.skills.get.equipment.generic.constitution.requirement xrpgc.op run data get storage xylo_rpg_core:op equipment[{Slot:2b}].tag.xylo_rpg_core.requirements.constitution
execute store result score #xrpgc.skills.get.equipment.generic.intelligence.requirement xrpgc.op run data get storage xylo_rpg_core:op equipment[{Slot:2b}].tag.xylo_rpg_core.requirements.intelligence
execute unless predicate xylo_rpg_core:skills/get/equipment/requirements_check run return run function xylo_rpg_core:equipment/weight/apply/chest

# get skills
execute store result score #xrpgc.skills.get.equipment.chest.strength xrpgc.op run data get storage xylo_rpg_core:op equipment[{Slot:2b}].tag.xylo_rpg_core.skills.strength
execute store result score #xrpgc.skills.get.equipment.chest.dexterity xrpgc.op run data get storage xylo_rpg_core:op equipment[{Slot:2b}].tag.xylo_rpg_core.skills.dexterity
execute store result score #xrpgc.skills.get.equipment.chest.agility xrpgc.op run data get storage xylo_rpg_core:op equipment[{Slot:2b}].tag.xylo_rpg_core.skills.agility
execute store result score #xrpgc.skills.get.equipment.chest.constitution xrpgc.op run data get storage xylo_rpg_core:op equipment[{Slot:2b}].tag.xylo_rpg_core.skills.constitution
execute store result score #xrpgc.skills.get.equipment.chest.intelligence xrpgc.op run data get storage xylo_rpg_core:op equipment[{Slot:2b}].tag.xylo_rpg_core.skills.intelligence

# charms
data remove storage xylo_rpg_core:op temp_sockets 
data modify storage xylo_rpg_core:op temp_sockets set from storage xylo_rpg_core:op equipment[{Slot:2b}].tag.xylo_rpg_core.sockets
function xylo_rpg_core:skills/get/charm/start
# set charm ability id
scoreboard players operation @s xrpgc.charms.chest.1 = #xrpgc.skills.get.charm.socket.1.ability_id xrpgc.op
scoreboard players operation @s xrpgc.charms.chest.2 = #xrpgc.skills.get.charm.socket.2.ability_id xrpgc.op
scoreboard players operation @s xrpgc.charms.chest.3 = #xrpgc.skills.get.charm.socket.3.ability_id xrpgc.op
# add charm skills
scoreboard players operation #xrpgc.skills.get.equipment.chest.strength xrpgc.op += #xrpgc.skills.get.charm.strength xrpgc.op
scoreboard players operation #xrpgc.skills.get.equipment.chest.dexterity xrpgc.op += #xrpgc.skills.get.charm.dexterity xrpgc.op
scoreboard players operation #xrpgc.skills.get.equipment.chest.agility xrpgc.op += #xrpgc.skills.get.charm.agility xrpgc.op
scoreboard players operation #xrpgc.skills.get.equipment.chest.constitution xrpgc.op += #xrpgc.skills.get.charm.constitution xrpgc.op
scoreboard players operation #xrpgc.skills.get.equipment.chest.intelligence xrpgc.op += #xrpgc.skills.get.charm.intelligence xrpgc.op

# add
scoreboard players operation @s xrpgc.skills.strength_equipment += #xrpgc.skills.get.equipment.chest.strength xrpgc.op
scoreboard players operation @s xrpgc.skills.dexterity_equipment += #xrpgc.skills.get.equipment.chest.dexterity xrpgc.op
scoreboard players operation @s xrpgc.skills.agility_equipment += #xrpgc.skills.get.equipment.chest.agility xrpgc.op
scoreboard players operation @s xrpgc.skills.constitution_equipment += #xrpgc.skills.get.equipment.chest.constitution xrpgc.op
scoreboard players operation @s xrpgc.skills.intelligence_equipment += #xrpgc.skills.get.equipment.chest.intelligence xrpgc.op

