#> xylo_rpg_core:items/charms/generate/ability/get_data
# @context: any
# @within: xylo_rpg_core:items/charms/generate/ability/start
# @macro: id, rarity


$data modify storage xylo_rpg_core:op matching_abilities_list append from storage xylo_rpg_core:data abilities[{rarity:[$(rarity)]}]
$data modify storage xylo_rpg_core:op ability set from storage xylo_rpg_core:op matching_abilities_list[$(id)]
