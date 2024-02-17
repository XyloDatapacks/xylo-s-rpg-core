#> xylo_rpg_core:skills/get/charm/start
# @context: parent context
# @within: xylo_rpg_core:skills/get/equipment/...
# @input: "xylo_rpg_core:op temp_sockets"

scoreboard players set #xrpgc.skills.get.charm.socket.1.ability_id xrpgc.op 0
scoreboard players set #xrpgc.skills.get.charm.socket.2.ability_id xrpgc.op 0
scoreboard players set #xrpgc.skills.get.charm.socket.3.ability_id xrpgc.op 0

scoreboard players set #xrpgc.skills.get.charm.strength xrpgc.op 0
scoreboard players set #xrpgc.skills.get.charm.dexterity xrpgc.op 0
scoreboard players set #xrpgc.skills.get.charm.agility xrpgc.op 0
scoreboard players set #xrpgc.skills.get.charm.constitution xrpgc.op 0
scoreboard players set #xrpgc.skills.get.charm.intelligence xrpgc.op 0

execute if data storage xylo_rpg_core:op temp_sockets[0].icon run function xylo_rpg_core:skills/get/charm/socket1
execute if data storage xylo_rpg_core:op temp_sockets[1].icon run function xylo_rpg_core:skills/get/charm/socket2
execute if data storage xylo_rpg_core:op temp_sockets[2].icon run function xylo_rpg_core:skills/get/charm/socket3

