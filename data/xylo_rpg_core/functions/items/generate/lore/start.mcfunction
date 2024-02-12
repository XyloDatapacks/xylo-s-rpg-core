#> xylo_rpg_core:items/generate/lore/start
# @context: any
# @within: any call
# @input: "xylo_rpg_core:op temp_item"
#
# prepares the storages and scores to call the xylo_rpg_core:items/generate/lore/set modifier


data modify storage xylo_rpg_core:op skills set from storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.skills
data modify storage xylo_rpg_core:op requirements set from storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.requirements
data modify storage xylo_rpg_core:op sockets set from storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.sockets

data remove storage xylo_rpg_core:op lore
execute if data storage xylo_rpg_core:op skills.strength run data modify storage xylo_rpg_core:op lore.skills append value [{"text":"S: ","color":"dark_red"},{"storage":"xylo_rpg_core:op","nbt":"skills.strength","interpret": true},{"text":" "}]
execute if data storage xylo_rpg_core:op skills.dexterity run data modify storage xylo_rpg_core:op lore.skills append value [{"text":"D: ","color":"green"},{"storage":"xylo_rpg_core:op","nbt":"skills.dexterity","interpret": true},{"text":" "}]
execute if data storage xylo_rpg_core:op skills.agility run data modify storage xylo_rpg_core:op lore.skills append value [{"text":"A: ","color":"aqua"},{"storage":"xylo_rpg_core:op","nbt":"skills.agility","interpret": true},{"text":" "}]
execute if data storage xylo_rpg_core:op skills.constitution run data modify storage xylo_rpg_core:op lore.skills append value [{"text":"C: ","color":"gold"},{"storage":"xylo_rpg_core:op","nbt":"skills.constitution","interpret": true},{"text":" "}]
execute if data storage xylo_rpg_core:op skills.intelligence run data modify storage xylo_rpg_core:op lore.skills append value [{"text":"I: ","color":"light_purple"},{"storage":"xylo_rpg_core:op","nbt":"skills.intelligence","interpret": true},{"text":" "}]

execute if data storage xylo_rpg_core:op requirements.strength run data modify storage xylo_rpg_core:op lore.requirements append value [{"text":"S: ","color":"dark_red"},{"storage":"xylo_rpg_core:op","nbt":"requirements.strength","interpret": true},{"text":" "}]
execute if data storage xylo_rpg_core:op requirements.dexterity run data modify storage xylo_rpg_core:op lore.requirements append value [{"text":"D: ","color":"green"},{"storage":"xylo_rpg_core:op","nbt":"requirements.dexterity","interpret": true},{"text":" "}]
execute if data storage xylo_rpg_core:op requirements.agility run data modify storage xylo_rpg_core:op lore.requirements append value [{"text":"A: ","color":"aqua"},{"storage":"xylo_rpg_core:op","nbt":"requirements.agility","interpret": true},{"text":" "}]
execute if data storage xylo_rpg_core:op requirements.constitution run data modify storage xylo_rpg_core:op lore.requirements append value [{"text":"C: ","color":"gold"},{"storage":"xylo_rpg_core:op","nbt":"requirements.constitution","interpret": true},{"text":" "}]
execute if data storage xylo_rpg_core:op requirements.intelligence run data modify storage xylo_rpg_core:op lore.requirements append value [{"text":"I: ","color":"light_purple"},{"storage":"xylo_rpg_core:op","nbt":"requirements.intelligence","interpret": true},{"text":" "}]

execute store success score #xrpgc.items.generate.lore.has_skills xrpgc.op if data storage xylo_rpg_core:op lore.skills[0]
execute store success score #xrpgc.items.generate.lore.has_requirements xrpgc.op if data storage xylo_rpg_core:op lore.requirements[0]


