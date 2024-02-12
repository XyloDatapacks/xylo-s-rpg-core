#> xylo_rpg_core:skills/_internal/fix_projectiles/apply_weight
# @context: projectile 
# @within: xylo_rpg_core:skills/_internal/fix_projectiles/type/arrows, xylo_rpg_core:skills/_internal/fix_projectiles/type/no_damage, xylo_rpg_core:skills/_internal/fix_projectiles/type/trident

# apply motion reduction based on weight
scoreboard players set #xrpgc.skills._internal.fix_projectiles.apply_weight xrpgc.op 0
execute on origin run scoreboard players operation #xrpgc.skills._internal.fix_projectiles.apply_weight xrpgc.op = @s xrpgc.equipment.weight
scoreboard players add #xrpgc.skills._internal.fix_projectiles.apply_weight xrpgc.op 10

data modify storage xylo_rpg_core:op temp_motion set from entity @s Motion
execute store result score #xrpgc.skills._internal.fix_projectiles.apply_weight.motion_x xrpgc.op run data get storage xylo_rpg_core:op temp_motion[0] 10000
execute store result score #xrpgc.skills._internal.fix_projectiles.apply_weight.motion_y xrpgc.op run data get storage xylo_rpg_core:op temp_motion[1] 10000
execute store result score #xrpgc.skills._internal.fix_projectiles.apply_weight.motion_z xrpgc.op run data get storage xylo_rpg_core:op temp_motion[2] 10000
execute store result storage xylo_rpg_core:op temp_motion[0] double 0.001 run scoreboard players operation #xrpgc.skills._internal.fix_projectiles.apply_weight.motion_x xrpgc.op /= #xrpgc.skills._internal.fix_projectiles.apply_weight xrpgc.op
execute store result storage xylo_rpg_core:op temp_motion[1] double 0.001 run scoreboard players operation #xrpgc.skills._internal.fix_projectiles.apply_weight.motion_y xrpgc.op /= #xrpgc.skills._internal.fix_projectiles.apply_weight xrpgc.op
execute store result storage xylo_rpg_core:op temp_motion[2] double 0.001 run scoreboard players operation #xrpgc.skills._internal.fix_projectiles.apply_weight.motion_z xrpgc.op /= #xrpgc.skills._internal.fix_projectiles.apply_weight xrpgc.op
data modify entity @s Motion set from storage xylo_rpg_core:op temp_motion


