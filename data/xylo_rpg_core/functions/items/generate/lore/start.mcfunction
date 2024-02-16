#> xylo_rpg_core:items/generate/lore/start
# @context: any
# @within: any call
# @input: same outputs as function: xylo_rpg_core:items/generate/lore/get_data
#
# prepares the storages and scores to call the xylo_rpg_core:items/generate/lore/set modifier


data remove storage xylo_rpg_core:op lore

execute store result score #xrpgc.items.generate.rarity xrpgc.op run data get storage xylo_rpg_core:op rarity
execute if score #xrpgc.items.generate.rarity xrpgc.op matches 1 run data modify storage xylo_rpg_core:op lore.rarity set value {"translate":"item.xylo_rpg_core.generic.lore.rarity.common","color":"white"}
execute if score #xrpgc.items.generate.rarity xrpgc.op matches 2 run data modify storage xylo_rpg_core:op lore.rarity set value {"translate":"item.xylo_rpg_core.generic.lore.rarity.uncommon","color":"green"}
execute if score #xrpgc.items.generate.rarity xrpgc.op matches 3 run data modify storage xylo_rpg_core:op lore.rarity set value {"translate":"item.xylo_rpg_core.generic.lore.rarity.rare","color":"blue"}
execute if score #xrpgc.items.generate.rarity xrpgc.op matches 4 run data modify storage xylo_rpg_core:op lore.rarity set value {"translate":"item.xylo_rpg_core.generic.lore.rarity.epic","color":"light_purple"}
execute if score #xrpgc.items.generate.rarity xrpgc.op matches 5 run data modify storage xylo_rpg_core:op lore.rarity set value {"translate":"item.xylo_rpg_core.generic.lore.rarity.legendary","color":"gold"}
execute if score #xrpgc.items.generate.rarity xrpgc.op matches 6 run data modify storage xylo_rpg_core:op lore.rarity set value {"translate":"item.xylo_rpg_core.generic.lore.rarity.mystical","color":"red"}

execute if data storage xylo_rpg_core:op skills.strength run data modify storage xylo_rpg_core:op lore.skills append value [{"text":"S: ","color":"dark_red"},{"storage":"xylo_rpg_core:op","nbt":"skills.strength","interpret": true,"color":"red"},{"text":" "}]
execute if data storage xylo_rpg_core:op skills.dexterity run data modify storage xylo_rpg_core:op lore.skills append value [{"text":"D: ","color":"dark_green"},{"storage":"xylo_rpg_core:op","nbt":"skills.dexterity","interpret": true,"color":"green"},{"text":" "}]
execute if data storage xylo_rpg_core:op skills.agility run data modify storage xylo_rpg_core:op lore.skills append value [{"text":"A: ","color":"dark_aqua"},{"storage":"xylo_rpg_core:op","nbt":"skills.agility","interpret": true,"color":"aqua"},{"text":" "}]
execute if data storage xylo_rpg_core:op skills.constitution run data modify storage xylo_rpg_core:op lore.skills append value [{"text":"C: ","color":"gold"},{"storage":"xylo_rpg_core:op","nbt":"skills.constitution","interpret": true,"color":"yellow"},{"text":" "}]
execute if data storage xylo_rpg_core:op skills.intelligence run data modify storage xylo_rpg_core:op lore.skills append value [{"text":"I: ","color":"dark_purple"},{"storage":"xylo_rpg_core:op","nbt":"skills.intelligence","interpret": true,"color":"light_purple"},{"text":" "}]

execute if data storage xylo_rpg_core:op requirements.strength run data modify storage xylo_rpg_core:op lore.requirements append value [{"text":"S: ","color":"dark_red"},{"storage":"xylo_rpg_core:op","nbt":"requirements.strength","interpret": true,"color":"red"},{"text":" "}]
execute if data storage xylo_rpg_core:op requirements.dexterity run data modify storage xylo_rpg_core:op lore.requirements append value [{"text":"D: ","color":"dark_green"},{"storage":"xylo_rpg_core:op","nbt":"requirements.dexterity","interpret": true,"color":"green"},{"text":" "}]
execute if data storage xylo_rpg_core:op requirements.agility run data modify storage xylo_rpg_core:op lore.requirements append value [{"text":"A: ","color":"dark_aqua"},{"storage":"xylo_rpg_core:op","nbt":"requirements.agility","interpret": true,"color":"aqua"},{"text":" "}]
execute if data storage xylo_rpg_core:op requirements.constitution run data modify storage xylo_rpg_core:op lore.requirements append value [{"text":"C: ","color":"gold"},{"storage":"xylo_rpg_core:op","nbt":"requirements.constitution","interpret": true,"color":"yellow"},{"text":" "}]
execute if data storage xylo_rpg_core:op requirements.intelligence run data modify storage xylo_rpg_core:op lore.requirements append value [{"text":"I: ","color":"dark_purple"},{"storage":"xylo_rpg_core:op","nbt":"requirements.intelligence","interpret": true,"color":"light_purple"},{"text":" "}]

execute store result score #xrpgc.items.generate.lore.sockets xrpgc.op run data get storage xylo_rpg_core:op sockets
execute if score #xrpgc.items.generate.lore.sockets xrpgc.op matches 1.. run data modify storage xylo_rpg_core:op lore.socket1 set value [{"text":"[","color":"gray"},{"storage":"xylo_rpg_core:op","nbt":"sockets[0].icon","interpret": true,"color":"white"},{"text":"] ","color":"gray"}]
execute if score #xrpgc.items.generate.lore.sockets xrpgc.op matches 2.. run data modify storage xylo_rpg_core:op lore.socket2 set value [{"text":"[","color":"gray"},{"storage":"xylo_rpg_core:op","nbt":"sockets[1].icon","interpret": true,"color":"white"},{"text":"] ","color":"gray"}]
execute if score #xrpgc.items.generate.lore.sockets xrpgc.op matches 3.. run data modify storage xylo_rpg_core:op lore.socket3 set value [{"text":"[","color":"gray"},{"storage":"xylo_rpg_core:op","nbt":"sockets[2].icon","interpret": true,"color":"white"},{"text":"] ","color":"gray"}]


execute store success score #xrpgc.items.generate.lore.has_skills xrpgc.op if data storage xylo_rpg_core:op lore.skills[0]
execute store success score #xrpgc.items.generate.lore.has_requirements xrpgc.op if data storage xylo_rpg_core:op lore.requirements[0]


