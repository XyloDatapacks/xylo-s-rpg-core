#> xylo_rpg_core:skills/apply/intelligence/start
# @context: parent context
# @within: xylo_rpg_core:skills/apply/start


# remove stats
function xylo_rpg_core:skills/apply/intelligence/reset

# apply stats
#data remove storage xylo_rpg_core:op macro_data 
#execute store result storage xylo_rpg_core:op macro_data.input double 0.05 run scoreboard players get @s xrpgc.skills.intelligence
#function xylo_rpg_core:skills/apply/intelligence/set with storage xylo_rpg_core:op macro_data 

# max focus
scoreboard players operation @s xem.mind.focus.max_base = #xem.mind.focus.max xem.op
scoreboard players operation @s xem.mind.focus.max_base *= @s xrpgc.skills.intelligence
scoreboard players operation @s xem.mind.focus.max_base /= #100 xconst
execute unless score @s xem.mind.focus = @s xem.mind.focus run scoreboard players operation @s xem.mind.focus = @s xem.mind.focus.max_base

# mind attack power
scoreboard players operation @s xem.mind.meditation.power_multiplier_base = #xem.mind.meditation.power_multiplier_default xem.op
scoreboard players operation @s xem.mind.meditation.power_multiplier_base *= #3 xconst
scoreboard players operation @s xem.mind.meditation.power_multiplier_base *= @s xrpgc.skills.intelligence
scoreboard players operation @s xem.mind.meditation.power_multiplier_base /= #100 xconst
