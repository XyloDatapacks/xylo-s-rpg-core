#==<function tag function>==#
execute if score $xylo_rpg_core xvc.load_status matches 0 run return 0
#---------------------------#


# update skills
execute as @a[predicate=xylo_rpg_core:skills/refresh] run function xylo_rpg_core:skills/refresh

# set mobs
execute as @e[type=!#xylo_library:non_mob,type=!minecraft:player,tag=!smithed.entity,tag=!xrpgc.skills.set] at @s run function xylo_rpg_core:entities/generate/start
execute as @e[type=#xylo_library:range_dmg_mobs,tag=!smithed.entity,tag=xrpgc.skills.set] at @s anchored eyes positioned ^ ^ ^ run function xylo_rpg_core:entities/skills/dexterity/tick
