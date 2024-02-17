#> xylo_rpg_core:items/equipment/generate/_get_proficiency/get
# @context: any
# @within: xylo_rpg_core:items/equipment/generate/_get_proficiency/start
# @macro: id

$return run data get storage xylo_rpg_core:data items.list[{id:"$(id)"}].tag.xylo_rpg_core.proficiency.index
