#> xylo_rpg_core:items/charm/generate/description/skills
# @context: any
# @within: xylo_rpg_core:items/charm/generate/description/start
# @input: "xylo_rpg_core:op skills"
# @macro: strength, dexterity, agility, constitution, intelligence


$execute if data storage xylo_rpg_core:op skills.strength run data modify storage xylo_rpg_core:op description_skill set value [{"text":"+$(strength)","color":"red"},{"text":"S","color":"dark_red"}]
$execute if data storage xylo_rpg_core:op skills.dexterity run data modify storage xylo_rpg_core:op description_skill set value [{"text":"+$(dexterity)","color":"green"},{"text":"D","color":"dark_green"}]
$execute if data storage xylo_rpg_core:op skills.agility run data modify storage xylo_rpg_core:op description_skill set value [{"text":"+$(agility)","color":"aqua"},{"text":"A","color":"dark_aqua"}]
$execute if data storage xylo_rpg_core:op skills.constitution run data modify storage xylo_rpg_core:op description_skill set value [{"text":"+$(constitution)","color":"yellow"},{"text":"C","color":"gold"}]
$execute if data storage xylo_rpg_core:op skills.intelligence run data modify storage xylo_rpg_core:op description_skill set value [{"text":"+$(intelligence)","color":"light_purple"},{"text":"I","color":"dark_purple"}]

data modify storage xylo_rpg_core:op description append from storage xylo_rpg_core:op description_skill[]