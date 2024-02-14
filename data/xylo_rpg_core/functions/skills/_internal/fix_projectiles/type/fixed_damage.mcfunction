#> xylo_rpg_core:skills/_internal/fix_projectiles/type/fixed_damage
# @context: projectile
# @within: xylo_rpg_core:entities/skills/dexterity/shoot/...
# @input: "#xproj.position_correction.convert.damage xproj.op" (dmg *1000)

#==<function tag function>==#
execute if score $xylo_rpg_core xvc.load_status matches 0 run return 0
#---------------------------#

function xylo_rpg_core:skills/_internal/fix_projectiles/apply_weight

tag @s add xlib.internal.air_toggle
scoreboard players operation @s xlib.internal.air_toggle = #xlib.time xlib.op
scoreboard players add @s xlib.internal.air_toggle 1

# damage multiplier
scoreboard players set #xrpgc.skills._internal.fix_projectiles.type.fixed_damage.damage_mult xrpgc.op 0
execute on origin run scoreboard players operation #xrpgc.skills._internal.fix_projectiles.type.fixed_damage.damage_mult xrpgc.op = @s xrpgc.skills.dexterity.range_damage
scoreboard players add #xrpgc.skills._internal.fix_projectiles.type.fixed_damage.damage_mult xrpgc.op 100

scoreboard players operation #xproj.position_correction.convert.damage xproj.op *= #xrpgc.skills._internal.fix_projectiles.type.fixed_damage.damage_mult xrpgc.op
scoreboard players operation #xproj.position_correction.convert.damage xproj.op /= #100 xconst
function xylo_projectiles:position_correction/convert/start
