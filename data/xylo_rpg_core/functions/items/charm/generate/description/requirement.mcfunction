#> xylo_rpg_core:items/charm/generate/description/requirement
# @context: any
# @within: xylo_rpg_core:items/charm/generate/description/start
# @macro: intelligence

$data modify storage xylo_rpg_core:op description set value [{"text":"<"},{"text":"$(intelligence)","color":"light_purple"},{"text":"I","color":"dark_purple"},{"text":"> : "}]
