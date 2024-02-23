#> xylo_rpg_core:skills/apply/agility/jump_correction
# @context: player
# @within: xylo_rpg_core:player_tick


scoreboard players operation $x delta.api.launch = @s xlib.player.motion_x
scoreboard players operation $x delta.api.launch *= @s xrpgc.skills.agility.jump_correction
scoreboard players operation $x delta.api.launch /= #10 xconst
scoreboard players set $y delta.api.launch 0
scoreboard players operation $z delta.api.launch = @s xlib.player.motion_z
scoreboard players operation $z delta.api.launch *= @s xrpgc.skills.agility.jump_correction
scoreboard players operation $z delta.api.launch /= #10 xconst
function delta:api/launch_xyz
