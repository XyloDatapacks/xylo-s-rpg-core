#> xylo_rpg_core:items/charms/generate/ability/get_range
# @context: any
# @within: xylo_rpg_core:items/charms/generate/ability/start
# @macro: rarity


$return run execute if data storage xylo_rpg_core:data abilities[{rarity:[$(rarity)]}]