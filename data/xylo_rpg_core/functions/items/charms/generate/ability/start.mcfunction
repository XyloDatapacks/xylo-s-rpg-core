#> xylo_rpg_core:items/charms/generate/ability/start
# @context: any
# @within: any call
# @input: "#xrpgc.items.equipment.generate.level xrpgc.op", "#xrpgc.items.equipment.generate.rarity xrpgc.op", "#xrpgc.items.equipment.generate.proficiency xrpgc.op"
#
# prepares the storages and scores to call the xylo_rpg_core:items/charms/generate/ability/set modifier

# clear storage
data remove storage xylo_rpg_core:op ability
data remove storage xylo_rpg_core:op matching_abilities_list

#==<Get Ability>==#

data modify storage xylo_rpg_core:op macro_data set value {min:0}
# get number of abilities with the matching rarity
execute store result storage xylo_rpg_core:op macro_data.rarity int 1 run scoreboard players get #xrpgc.items.equipment.generate.rarity xrpgc.op
execute store result score #xrpgc.items.charms.generate.ability.max_index xrpgc.op run function xylo_rpg_core:items/charms/generate/ability/get_range with storage xylo_rpg_core:op macro_data
# use the number of matching abilites -1 ad max value for a random command
execute store result storage xylo_rpg_core:op macro_data.max int 1 run scoreboard players remove #xrpgc.items.charms.generate.ability.max_index xrpgc.op 1
execute store result storage xylo_rpg_core:op macro_data.id int 1 run function xylo_rpg_core:items/equipment/generate/skills/random with storage xylo_rpg_core:op macro_data
# get ability
function xylo_rpg_core:items/charms/generate/ability/get_data with storage xylo_rpg_core:op macro_data

