#> xylo_rpg_core:entities/skills/dexterity/tick
# @context: range damage entity at @s
# @within: any call

tag @s add xitm.player_tick.projectile_detection
execute if entity @s[type=#xylo_library:arrow_shooter] as @e[type=minecraft:arrow,distance=..1,tag=!xitm.item.generic.projectile.detected] run function xylo_items:item/bow/projectile/arrow
execute if entity @s[type=minecraft:blaze] as @e[type=minecraft:small_fireball,distance=..1,tag=!xitm.item.generic.projectile.detected] run function xylo_rpg_core:entities/skills/dexterity/shoot/blaze
execute if entity @s[type=minecraft:ghast] positioned ~ ~1.8 ~ positioned ^ ^ ^3.6 as @e[type=minecraft:fireball,distance=..1,tag=!xitm.item.generic.projectile.detected] run function xylo_rpg_core:entities/skills/dexterity/shoot/ghast
execute if entity @s[type=minecraft:wither] as @e[type=minecraft:wither_skull,distance=..1.5,tag=!xitm.item.generic.projectile.detected] run function xylo_rpg_core:entities/skills/dexterity/shoot/wither
execute if entity @s[type=minecraft:drowned] as @e[type=minecraft:trident,distance=..1,tag=!xitm.item.generic.projectile.detected] run function xylo_items:item/trident/projectile/trident
execute if entity @s[type=minecraft:shulker] as @e[type=minecraft:shulker_bullet,distance=..1,tag=!xitm.item.generic.projectile.detected] run function xylo_rpg_core:entities/skills/dexterity/shoot/shulker
tag @s remove xitm.player_tick.projectile_detection
