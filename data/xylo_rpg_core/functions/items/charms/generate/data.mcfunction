#> xylo_rpg_core:items/charms/generate/data
# @context: any
# @within: any call
# @input: "#xrpgc.items.equipment.generate.level xrpgc.op", "#xrpgc.items.equipment.generate.proficiency xrpgc.op"


function xylo_rpg_core:items/equipment/generate/level/start
function xylo_rpg_core:items/equipment/generate/rarity/start

data remove storage xylo_rpg_core:op ability
execute if data storage xylo_rpg_core:op temp_item.tag.xylo{id:"xylo_rpg_core:ability_charm"} run function xylo_rpg_core:items/charms/generate/ability/start

scoreboard players operation #xrpgc.items.equipment.generate.level_copy xrpgc.op = #xrpgc.items.equipment.generate.level xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.rarity_copy xrpgc.op = #xrpgc.items.equipment.generate.rarity xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.level xrpgc.op *= #xrpgc.items.equipment.generate.rarity xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.level xrpgc.op /= #6 xconst
scoreboard players operation #xrpgc.items.equipment.generate.level xrpgc.op > #1 xconst
scoreboard players set #xrpgc.items.equipment.generate.rarity xrpgc.op 0
data remove storage xylo_rpg_core:op skills
execute if data storage xylo_rpg_core:op temp_item.tag.xylo{id:"xylo_rpg_core:skill_charm"} run function xylo_rpg_core:items/equipment/generate/skills/start
function xylo_rpg_core:items/equipment/generate/requirements/start
scoreboard players operation #xrpgc.items.equipment.generate.level xrpgc.op = #xrpgc.items.equipment.generate.level_copy xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.rarity xrpgc.op = #xrpgc.items.equipment.generate.rarity_copy xrpgc.op

data remove storage xylo_rpg_core:op sockets
function xylo_rpg_core:items/equipment/generate/lore/start
function xylo_rpg_core:items/charms/generate/description/start

