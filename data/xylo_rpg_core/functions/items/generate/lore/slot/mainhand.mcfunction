#> xylo_rpg_core:items/generate/lore/slot/mainhand
# @context: player
# @within: any call

data modify storage xylo_rpg_core:op temp_item set from entity @s SelectedItem
function xylo_rpg_core:items/generate/lore/start
item modify entity @s weapon.mainhand xylo_rpg_core:items/generate/lore/set
