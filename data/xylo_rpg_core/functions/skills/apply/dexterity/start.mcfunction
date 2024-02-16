#> xylo_rpg_core:skills/apply/dexterity/start
# @context: parent context
# @within: xylo_rpg_core:skills/apply/start


# remove stats
function xylo_rpg_core:skills/apply/dexterity/reset

# apply stats
data remove storage xylo_rpg_core:op macro_data 
execute store result storage xylo_rpg_core:op macro_data.step double 0.015 run scoreboard players get @s xrpgc.skills.dexterity
function xylo_rpg_core:skills/apply/dexterity/set with storage xylo_rpg_core:op macro_data 

# range damage multiplier (*100)
scoreboard players set @s xrpgc.skills.dexterity.range_damage 1000
scoreboard players operation @s xrpgc.skills.dexterity.range_damage *= @s xrpgc.skills.dexterity
scoreboard players operation @s xrpgc.skills.dexterity.range_damage /= #100 xconst

# max casting fatigue
scoreboard players operation @s xem.spell.casting_fatigue.max = #xem.spell.casting_fatigue.max xem.op
scoreboard players operation @s xem.spell.casting_fatigue.max *= @s xrpgc.skills.dexterity
scoreboard players operation @s xem.spell.casting_fatigue.max /= #100 xconst

