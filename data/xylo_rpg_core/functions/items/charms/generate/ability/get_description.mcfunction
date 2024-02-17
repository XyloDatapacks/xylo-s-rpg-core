#> xylo_rpg_core:items/charms/generate/ability/get_description
# @context: any
# @within: xylo_rpg_core:items/charms/generate/ability/start
# @macro: id


$data modify storage xylo_rpg_core:op ability set from storage xylo_rpg_core:data abilities[{id:$(id)}]

