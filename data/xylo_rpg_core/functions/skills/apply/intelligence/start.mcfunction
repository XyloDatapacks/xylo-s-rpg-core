#> xylo_rpg_core:skills/apply/intelligence/start
# @context: parent context
# @within: xylo_rpg_core:skills/apply/start


# remove stats
function xylo_rpg_core:skills/apply/intelligence/reset

# calculate apply value
scoreboard players operation #xrpgc.skills.skill_value xrpgc.op = @s xrpgc.skills.intelligence
execute if entity @s[type=!minecraft:player] run function xylo_rpg_core:skills/_internal/mob_scaling

# limit to 100 for energy manipulation mind stuff
scoreboard players operation #xrpgc.skills.skill_value xrpgc.op < #100 xconst

# max focus
scoreboard players operation @s xem.mind.focus.max_base = #xem.mind.focus.max xem.const
scoreboard players operation @s xem.mind.meditation.power_multiplier_base *= #2 xconst
scoreboard players operation @s xem.mind.focus.max_base *= #xrpgc.skills.skill_value xrpgc.op
scoreboard players operation @s xem.mind.focus.max_base /= #100 xconst
execute unless score @s xem.mind.focus = @s xem.mind.focus run scoreboard players operation @s xem.mind.focus = @s xem.mind.focus.max_base

# mind attack power
scoreboard players operation @s xem.mind.meditation.power_multiplier_base = #xem.mind.meditation.power.multiplier_default xem.const
scoreboard players operation @s xem.mind.meditation.power_multiplier_base *= #5 xconst
scoreboard players operation @s xem.mind.meditation.power_multiplier_base *= #xrpgc.skills.skill_value xrpgc.op
scoreboard players operation @s xem.mind.meditation.power_multiplier_base /= #100 xconst
