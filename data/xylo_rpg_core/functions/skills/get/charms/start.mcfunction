#> xylo_rpg_core:skills/get/charms/start
# @context: parent context
# @within: xylo_rpg_core:skills/get/equipment/...
# @input: "xylo_rpg_core:op temp_sockets"

scoreboard players set #xrpgc.skills.get.charms.socket.1.ability_id xrpgc.op 0
scoreboard players set #xrpgc.skills.get.charms.socket.2.ability_id xrpgc.op 0
scoreboard players set #xrpgc.skills.get.charms.socket.3.ability_id xrpgc.op 0

scoreboard players set #xrpgc.skills.get.charms.strength xrpgc.op 0
scoreboard players set #xrpgc.skills.get.charms.dexterity xrpgc.op 0
scoreboard players set #xrpgc.skills.get.charms.agility xrpgc.op 0
scoreboard players set #xrpgc.skills.get.charms.constitution xrpgc.op 0
scoreboard players set #xrpgc.skills.get.charms.intelligence xrpgc.op 0

execute if data storage xylo_rpg_core:op temp_sockets[0].icon run function xylo_rpg_core:skills/get/charms/socket1
execute if data storage xylo_rpg_core:op temp_sockets[1].icon run function xylo_rpg_core:skills/get/charms/socket2
execute if data storage xylo_rpg_core:op temp_sockets[2].icon run function xylo_rpg_core:skills/get/charms/socket3

