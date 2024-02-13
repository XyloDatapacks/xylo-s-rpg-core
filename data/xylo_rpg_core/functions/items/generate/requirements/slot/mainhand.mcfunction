#> xylo_rpg_core:items/generate/requirements/slot/mainhand
# @context: player
# @within: any call
# @input: "#xrpgc.items.generate.skills.level xrpgc.op"


function xylo_rpg_core:items/generate/requirements/start
item modify entity @s weapon.mainhand xylo_rpg_core:items/generate/requirements/set
