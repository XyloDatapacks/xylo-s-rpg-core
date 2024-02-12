#==<function tag function>==#
execute if score $xylo_rpg_core xvc.load_status matches 0 run return 0
#---------------------------#

# UPDATE VERSION
execute unless score @s xrpgc.player_version = #xrpgc.pack_version xrpgc.op run function xylo_rpg_core:player_init