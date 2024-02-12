#==<function tag function>==#
execute if score $xylo_rpg_core xvc.load_status matches 0 run return 0
#---------------------------#


# update skills
execute as @a[predicate=xylo_rpg_core:skills/refresh] run function xylo_rpg_core:skills/refresh