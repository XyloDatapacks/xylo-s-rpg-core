#> xylo_rpg_core:items/equipment/generate/_get_proficiency/start
# @context: any
# @within: any call
# @input: "xylo_rpg_core:op temp_item"
#
# @output: "#xrpgc.items.equipment.generate.proficiency xrpgc.op"


# get through nbt
scoreboard players reset #xrpgc.items.equipment.generate.proficiency xrpgc.op
execute if data storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.proficiency.index store result score #xrpgc.items.equipment.generate.proficiency xrpgc.op run return run data get storage xylo_rpg_core:op temp_item.tag.xylo_rpg_core.proficiency.index

# get through id
data remove storage xylo_rpg_core:op item_id
data modify storage xylo_rpg_core:op item_id.id set from storage xylo_rpg_core:op temp_item.id
data modify storage xylo_rpg_core:op item_id.id set from storage xylo_rpg_core:op temp_item.tag.xylo.id
execute store result score #xrpgc.items.equipment.generate.proficiency xrpgc.op run return run function xylo_rpg_core:items/equipment/generate/_get_proficiency/get with storage xylo_rpg_core:op item_id

