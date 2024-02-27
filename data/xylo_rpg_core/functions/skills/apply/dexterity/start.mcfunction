#> xylo_rpg_core:skills/apply/dexterity/start
# @context: parent context
# @within: xylo_rpg_core:skills/apply/start


# remove stats
function xylo_rpg_core:skills/apply/dexterity/reset

# calculate apply value
scoreboard players operation #xrpgc.skills.skill_value xrpgc.op = @s xrpgc.skills.dexterity
execute if entity @s[type=!minecraft:player] run function xylo_rpg_core:skills/_internal/mob_scaling

# apply stats
data modify storage xylo_rpg_core:op macro_data set value {step:1.5}
execute if score #xrpgc.skills.skill_value xrpgc.op matches ..100 store result storage xylo_rpg_core:op macro_data.step double 0.015 run scoreboard players get #xrpgc.skills.skill_value xrpgc.op
function xylo_rpg_core:skills/apply/dexterity/set with storage xylo_rpg_core:op macro_data 

# range damage multiplier (*100)
scoreboard players set @s xrpgc.skills.dexterity.range_damage 1000
scoreboard players operation @s xrpgc.skills.dexterity.range_damage *= #xrpgc.skills.skill_value xrpgc.op
scoreboard players operation @s xrpgc.skills.dexterity.range_damage /= #100 xconst

# max casting fatigue
scoreboard players operation @s xem.spell.casting_fatigue.max_base = #xem.spell.casting_fatigue.max xem.const
scoreboard players operation @s xem.spell.casting_fatigue.max_base *= #xrpgc.skills.skill_value xrpgc.op
scoreboard players operation @s xem.spell.casting_fatigue.max_base /= #100 xconst

