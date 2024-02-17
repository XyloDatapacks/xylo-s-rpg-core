#> xylo_rpg_core:skills/get/charms/socket1
# @context: parent context
# @within: xylo_rpg_core:skills/get/charms/start


execute store result score #xrpgc.skills.get.charms.socket.requirement xrpgc.op run data get storage xylo_rpg_core:op temp_sockets[0].requirements.intelligence
execute unless score @s xrpgc.skills.intelligence_base >= #xrpgc.skills.get.charms.socket.requirement xrpgc.op run return 0

# get id
execute store result score #xrpgc.skills.get.charms.socket.1.ability_id xrpgc.op run data get storage xylo_rpg_core:op temp_sockets[0].ability.id

# get skill points
execute store result score #xrpgc.skills.get.charms.socket.strength xrpgc.op run data get storage xylo_rpg_core:op temp_sockets[0].skills.strength
execute store result score #xrpgc.skills.get.charms.socket.dexterity xrpgc.op run data get storage xylo_rpg_core:op temp_sockets[0].skills.dexterity
execute store result score #xrpgc.skills.get.charms.socket.agility xrpgc.op run data get storage xylo_rpg_core:op temp_sockets[0].skills.agility
execute store result score #xrpgc.skills.get.charms.socket.constitution xrpgc.op run data get storage xylo_rpg_core:op temp_sockets[0].skills.constitution
execute store result score #xrpgc.skills.get.charms.socket.intelligence xrpgc.op run data get storage xylo_rpg_core:op temp_sockets[0].skills.intelligence

# add charm skills
scoreboard players operation #xrpgc.skills.get.charms.strength xrpgc.op += #xrpgc.skills.get.charms.socket.strength xrpgc.op
scoreboard players operation #xrpgc.skills.get.charms.dexterity xrpgc.op += #xrpgc.skills.get.charms.socket.dexterity xrpgc.op
scoreboard players operation #xrpgc.skills.get.charms.agility xrpgc.op += #xrpgc.skills.get.charms.socket.agility xrpgc.op
scoreboard players operation #xrpgc.skills.get.charms.constitution xrpgc.op += #xrpgc.skills.get.charms.socket.constitution xrpgc.op
scoreboard players operation #xrpgc.skills.get.charms.intelligence xrpgc.op += #xrpgc.skills.get.charms.socket.intelligence xrpgc.op
