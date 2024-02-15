#> xylo_rpg_core:_database
# @context: any
# @within: any

# item list with apropriate proficiency
data modify storage xylo_rpg_core:data items.list set value []
data modify storage xylo_rpg_core:op temp_list set value [{id:"minecraft:shield"},{id:"minecraft:wooden_axe"},{id:"minecraft:stone_axe"},{id:"minecraft:iron_axe"},{id:"minecraft:golden_axe"},{id:"minecraft:diamond_axe"},{id:"minecraft:netherite_axe"}]
data modify storage xylo_rpg_core:op temp_list[].tag.xylo_rpg_core.proficiency set value {index:1,name:"strength"}
data modify storage xylo_rpg_core:data items.list append from storage xylo_rpg_core:op temp_list[]

data modify storage xylo_rpg_core:op temp_list set value [{id:"minecraft:bow"},{id:"minecraft:crossbow"},{id:"minecraft:trident"}]
data modify storage xylo_rpg_core:op temp_list[].tag.xylo_rpg_core.proficiency set value {index:2,name:"dexterity"}
data modify storage xylo_rpg_core:data items.list append from storage xylo_rpg_core:op temp_list[]

data modify storage xylo_rpg_core:op temp_list set value [{id:"minecraft:wooden_sword"},{id:"minecraft:stone_sword"},{id:"minecraft:iron_sword"},{id:"minecraft:golden_sword"},{id:"minecraft:diamond_sword"},{id:"minecraft:netherite_sword"}]
data modify storage xylo_rpg_core:op temp_list[].tag.xylo_rpg_core.proficiency set value {index:3,name:"agility"}
data modify storage xylo_rpg_core:data items.list append from storage xylo_rpg_core:op temp_list[]

data modify storage xylo_rpg_core:op temp_list set value [{id:"minecraft:leather_helmet"},{id:"minecraft:leather_chestplate"},{id:"minecraft:leather_leggings"},{id:"minecraft:leather_boots"},{id:"minecraft:iron_helmet"},{id:"minecraft:iron_chestplate"},{id:"minecraft:iron_leggings"},{id:"minecraft:iron_boots"},{id:"minecraft:chainmail_helmet"},{id:"minecraft:chainmail_chestplate"},{id:"minecraft:chainmail_leggings"},{id:"minecraft:chainmail_boots"},{id:"minecraft:golden_helmet"},{id:"minecraft:golden_chestplate"},{id:"minecraft:golden_leggings"},{id:"minecraft:golden_boots"},{id:"minecraft:diamond_helmet"},{id:"minecraft:diamond_chestplate"},{id:"minecraft:diamond_leggings"},{id:"minecraft:diamond_boots"},{id:"minecraft:netherite_helmet"},{id:"minecraft:netherite_chestplate"},{id:"minecraft:netherite_leggings"},{id:"minecraft:netherite_boots"}]
data modify storage xylo_rpg_core:op temp_list[].tag.xylo_rpg_core.proficiency set value {index:4,name:"constitution"}
data modify storage xylo_rpg_core:data items.list append from storage xylo_rpg_core:op temp_list[]