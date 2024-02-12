#> xylo_rpg_core:skills/_internal/fix_projectiles/type/arrows
# @context: arrow 
# @within: #xylo_items:item/shoot_bow_arrow, #xylo_items:item/shoot_bow_spectral_arrow, #xylo_items:item/shoot_crossbow_arrow, #xylo_items:item/shoot_crossbow_spectral_arrow

#==<function tag function>==#
execute if score $xylo_rpg_core xvc.load_status matches 0 run return 0
#---------------------------#

function xylo_rpg_core:skills/_internal/fix_projectiles/apply_weight

# damage multiplier
scoreboard players set #xrpgc.skills._internal.fix_projectiles.type.arrows.damage_mult xrpgc.op 0
execute on origin run scoreboard players operation #xrpgc.skills._internal.fix_projectiles.type.arrows.damage_mult xrpgc.op = @s xrpgc.skills.dexterity.range_damage
scoreboard players add #xrpgc.skills._internal.fix_projectiles.type.arrows.damage_mult xrpgc.op 100

execute store result score #xrpgc.skills._internal.fix_projectiles.type.arrows.damage xrpgc.op run data get entity @s damage 1000
execute store result entity @s damage double 0.00001 run scoreboard players operation #xrpgc.skills._internal.fix_projectiles.type.arrows.damage xrpgc.op *= #xrpgc.skills._internal.fix_projectiles.type.arrows.damage_mult xrpgc.op

