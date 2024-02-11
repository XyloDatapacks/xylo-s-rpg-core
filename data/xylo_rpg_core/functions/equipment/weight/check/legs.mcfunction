#> xylo_rpg_core:equipment/weight/check/legs
# @context: parent context
# @within: xylo_rpg_core:skills/get/equipment/legs

# only check constitution (since armor slot items' proficiency is always only based on constitution)
execute if score @s xrpgc.skills.constitution >= #xrpgc.skills.get.equipment.generic.constitution.requirement xrpgc.op run return 0

# apply weight
function xylo_rpg_core:equipment/weight/apply/legs

