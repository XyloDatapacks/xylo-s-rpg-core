#> xylo_rpg_core:entities/generate/get_level
# @context: as entity at @s
# @within: any call
#
# @output: "#xrpgc.entities.generate.level xrpgc.op"

# get distance from spawn
data modify storage xylo_rpg_core:op temp_pos set from entity @s Pos
data modify storage xylo_rpg_core:op macro_data set value {y:0.0}
data modify storage xylo_rpg_core:op macro_data.x set from storage xylo_rpg_core:op temp_pos[0]
data modify storage xylo_rpg_core:op macro_data.z set from storage xylo_rpg_core:op temp_pos[2]
function xylo_library:utilities/distance/distance with storage xylo_rpg_core:op macro_data

execute unless dimension minecraft:the_nether store result score #xrpgc.entities.generate.level xrpgc.op run return run data get storage xylo_library:op distance_out 0.01
execute if dimension minecraft:the_nether store result score #xrpgc.entities.generate.level xrpgc.op run return run data get storage xylo_library:op distance_out 0.08
