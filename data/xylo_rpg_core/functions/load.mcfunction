#validation
execute if score $xylo_rpg_core xvc.load_status matches 0 run return 0
scoreboard players set $xylo_rpg_core xvc.load_status 1


# ...