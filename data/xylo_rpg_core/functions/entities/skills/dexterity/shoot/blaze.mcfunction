#> xylo_rpg_core:entities/skills/dexterity/shoot/blaze
# @context: blaze's projectile
# @within: xylo_rpg_core:entities/skills/dexterity/tick
# 
# same concept as xylo_items:item/bow/projectile/arrow

# return if not owned by the player
execute on origin unless entity @s[tag=xitm.player_tick.projectile_detection] run return 0
# add tag detected
tag @s add xitm.item.generic.projectile.detected

# execute function call
scoreboard players set #xproj.position_correction.convert.damage xproj.op 4000
function xylo_rpg_core:skills/_internal/fix_projectiles/type/fixed_damage

