#> xylo_rpg_core:skills/get/load_equipment
# @context: parent context, in overworld
# @within: xylo_rpg_core:skills/get/start

data modify block 29999999 0 12341232 Items set value []
item replace block 29999999 0 12341232 container.0 from entity @s armor.feet
item replace block 29999999 0 12341232 container.1 from entity @s armor.legs
item replace block 29999999 0 12341232 container.2 from entity @s armor.chest
item replace block 29999999 0 12341232 container.3 from entity @s armor.head
item replace block 29999999 0 12341232 container.4 from entity @s weapon.mainhand
item replace block 29999999 0 12341232 container.5 from entity @s weapon.offhand
data modify storage xylo_rpg_core:op equipment set from block 29999999 0 12341232 Items
