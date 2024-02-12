#> xylo_rpg_core:skills/_internal/fix_projectiles/type/trident
# @context: trident 
# @within: #xylo_items:item/shoot_trident

#==<function tag function>==#
execute if score $xylo_rpg_core xvc.load_status matches 0 run return 0
#---------------------------#

function xylo_rpg_core:skills/_internal/fix_projectiles/apply_weight


# damage multiplier
scoreboard players set #xrpgc.skills._internal.fix_projectiles.type.trident.damage_mult xrpgc.op 0
execute on origin run scoreboard players operation #xrpgc.skills._internal.fix_projectiles.type.trident.damage_mult xrpgc.op = @s xrpgc.skills.dexterity.range_damage
scoreboard players add #xrpgc.skills._internal.fix_projectiles.type.trident.damage_mult xrpgc.op 100

scoreboard players set #xproj.position_correction.convert.damage xproj.op 8000
scoreboard players operation #xproj.position_correction.convert.damage xproj.op *= #xrpgc.skills._internal.fix_projectiles.type.trident.damage_mult xrpgc.op
scoreboard players operation #xproj.position_correction.convert.damage xproj.op /= #100 xconst
function xylo_projectiles:position_correction/convert/start
