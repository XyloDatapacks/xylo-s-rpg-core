# advancement reward function
execute if score $xylo_rpg_core xvc.load_status matches 0 run return 0
#---------------------------

# message
execute unless score @s xrpgc.player_version = @s xrpgc.player_version run tellraw @s {"text":"Wellcome to Xylo's RPG Core. By Xylo_Datapacks","color":"dark_aqua"}
# update version
scoreboard players operation @s xrpgc.player_version = #xrpgc.pack_version xrpgc.op

#==<Skills>==#

# make class skills values valid
function xylo_rpg_core:classes/validate_skills
