#> xylo_rpg_core:items/charm/generate/data
# @context: any
# @within: any call
# @input: "#xrpgc.items.generate.level xrpgc.op", "#xrpgc.items.generate.proficiency xrpgc.op"


function xylo_rpg_core:items/generate/level/start
function xylo_rpg_core:items/generate/rarity/start

scoreboard players operation #xrpgc.items.generate.level_copy xrpgc.op = #xrpgc.items.generate.level xrpgc.op
scoreboard players operation #xrpgc.items.generate.rarity_copy xrpgc.op = #xrpgc.items.generate.rarity xrpgc.op
scoreboard players set #xrpgc.items.generate.level xrpgc.op 50
scoreboard players operation #xrpgc.items.generate.level xrpgc.op > #1 xconst
scoreboard players set #xrpgc.items.generate.rarity xrpgc.op 0
function xylo_rpg_core:items/generate/skills/start
function xylo_rpg_core:items/generate/requirements/start
scoreboard players operation #xrpgc.items.generate.level xrpgc.op = #xrpgc.items.generate.level_copy xrpgc.op
scoreboard players operation #xrpgc.items.generate.rarity xrpgc.op = #xrpgc.items.generate.rarity_copy xrpgc.op

data remove storage xylo_rpg_core:op sockets
function xylo_rpg_core:items/generate/lore/start

