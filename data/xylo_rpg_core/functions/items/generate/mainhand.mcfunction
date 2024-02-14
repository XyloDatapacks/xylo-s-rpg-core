#> xylo_rpg_core:items/generate/mainhand
# @context: entity with item in mainhand
# @within: any call
# @input: "#xrpgc.items.generate.level xrpgc.op"

scoreboard players reset #xrpgc.items.generate.proficiency xrpgc.op
execute if predicate xylo_rpg_core:equipment/proficiency_type/mainhand/strength run scoreboard players set #xrpgc.items.generate.proficiency xrpgc.op 1
execute if predicate xylo_rpg_core:equipment/proficiency_type/mainhand/dexterity run scoreboard players set #xrpgc.items.generate.proficiency xrpgc.op 2
execute if predicate xylo_rpg_core:equipment/proficiency_type/mainhand/agility run scoreboard players set #xrpgc.items.generate.proficiency xrpgc.op 3
execute if predicate xylo_rpg_core:equipment/proficiency_type/mainhand/constitution run scoreboard players set #xrpgc.items.generate.proficiency xrpgc.op 4
execute if predicate xylo_rpg_core:equipment/proficiency_type/mainhand/intelligence run scoreboard players set #xrpgc.items.generate.proficiency xrpgc.op 5
execute unless score #xrpgc.items.generate.proficiency xrpgc.op = #xrpgc.items.generate.proficiency xrpgc.op run scoreboard players set #xrpgc.items.generate.proficiency xrpgc.op 5

function xylo_rpg_core:items/generate/all

item modify entity @s weapon.mainhand xylo_rpg_core:items/generate/set
