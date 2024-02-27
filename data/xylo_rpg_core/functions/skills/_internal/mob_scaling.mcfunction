#> xylo_rpg_core:skills/_internal/mob_scaling
# @context: mob 
# @within: xylo_rpg_core:skills/apply/.../start
# @input: "#xrpgc.skills.skill_value xrpgc.op"
# @output: "#xrpgc.skills.skill_value xrpgc.op"

# 2*10^4 - ( 2*10^4*100^2 / (x^2 + 100^2) ) * 0.01

# x^2 + 100^2
scoreboard players operation #xrpgc.skills._internal.mob_scaling.denominator xrpgc.op = #xrpgc.skills.skill_value xrpgc.op
scoreboard players operation #xrpgc.skills._internal.mob_scaling.denominator xrpgc.op *= #xrpgc.skills.skill_value xrpgc.op
scoreboard players add #xrpgc.skills._internal.mob_scaling.denominator xrpgc.op 10000

# 2*10^4*100^2 / (x^2 + 100^2)
scoreboard players set #xrpgc.skills._internal.mob_scaling.numerator xrpgc.op 500000000
scoreboard players operation #xrpgc.skills._internal.mob_scaling.numerator xrpgc.op /= #xrpgc.skills._internal.mob_scaling.denominator xrpgc.op

# 2*10^4 - ( 2*10^4*100^2 / (x^2 + 100^2) )
scoreboard players set #xrpgc.skills.skill_value xrpgc.op 50000
scoreboard players operation #xrpgc.skills.skill_value xrpgc.op -= #xrpgc.skills._internal.mob_scaling.numerator xrpgc.op

# *0.01
scoreboard players operation #xrpgc.skills.skill_value xrpgc.op /= #100 xconst