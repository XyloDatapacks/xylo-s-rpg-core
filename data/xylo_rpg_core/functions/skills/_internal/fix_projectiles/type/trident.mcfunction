#> xylo_rpg_core:skills/_internal/fix_projectiles/type/trident
# @context: trident 
# @within: #xylo_items:item/shoot_trident

#==<function tag function>==#
execute if score $xylo_rpg_core xvc.load_status matches 0 run return 0
#---------------------------#

function xylo_rpg_core:skills/_internal/fix_projectiles/apply_weight

