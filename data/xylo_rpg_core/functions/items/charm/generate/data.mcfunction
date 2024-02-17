#> xylo_rpg_core:items/charm/generate/data
# @context: any
# @within: any call
# @input: "#xrpgc.items.equipment.generate.level xrpgc.op", "#xrpgc.items.equipment.generate.proficiency xrpgc.op"


function xylo_rpg_core:items/equipment/generate/level/start
function xylo_rpg_core:items/equipment/generate/rarity/start

#==<Skill-Enhancing Charms>==#
# only if it is a skill-charm
scoreboard players operation #xrpgc.items.equipment.generate.level_copy xrpgc.op = #xrpgc.items.equipment.generate.level xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.rarity_copy xrpgc.op = #xrpgc.items.equipment.generate.rarity xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.level xrpgc.op *= #xrpgc.items.equipment.generate.rarity xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.level xrpgc.op /= #6 xconst
scoreboard players operation #xrpgc.items.equipment.generate.level xrpgc.op > #1 xconst
scoreboard players set #xrpgc.items.equipment.generate.rarity xrpgc.op 0
function xylo_rpg_core:items/equipment/generate/skills/start
function xylo_rpg_core:items/equipment/generate/requirements/start
scoreboard players operation #xrpgc.items.equipment.generate.level xrpgc.op = #xrpgc.items.equipment.generate.level_copy xrpgc.op
scoreboard players operation #xrpgc.items.equipment.generate.rarity xrpgc.op = #xrpgc.items.equipment.generate.rarity_copy xrpgc.op
#----------------------------#

# TODO: alternative data

data remove storage xylo_rpg_core:op sockets
function xylo_rpg_core:items/equipment/generate/lore/start
function xylo_rpg_core:items/charm/generate/description/start

