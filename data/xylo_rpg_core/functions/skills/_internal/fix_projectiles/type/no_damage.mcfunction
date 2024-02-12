#> xylo_rpg_core:skills/_internal/fix_projectiles/type/no_damage
# @context: snowball, ender_pearl 
# @within: #xylo_items:item/shoot_snowball, #xylo_items:item/shoot_ender_pearl

#==<function tag function>==#
execute if score $xylo_rpg_core xvc.load_status matches 0 run return 0
#---------------------------#

function xylo_rpg_core:skills/_internal/fix_projectiles/apply_weight

tag @s add xlib.internal.air_toggle
scoreboard players operation @s xlib.internal.air_toggle = #xlib.time xlib.op
scoreboard players add @s xlib.internal.air_toggle 1
