#> xylo_rpg_core:level/xp/killed_entity
# @context: entity with level
# @within: any call
# @input: "#xrpg_reward xrpgc.op"

#==<advancement reward function>==#
execute if score $xylo_rpg_core xvc.load_status matches 0 run return run advancement revoke @s only xylo_rpg_core:level/kill_entity
#---------------------------------#

#==<Get Level>==
scoreboard players set $hit xrpgc.entities.level 0
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit0=true}}] run scoreboard players add $hit xrpgc.entities.level 1
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit1=true}}] run scoreboard players add $hit xrpgc.entities.level 2
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit2=true}}] run scoreboard players add $hit xrpgc.entities.level 4
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit3=true}}] run scoreboard players add $hit xrpgc.entities.level 8
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit4=true}}] run scoreboard players add $hit xrpgc.entities.level 16
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit5=true}}] run scoreboard players add $hit xrpgc.entities.level 32
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit6=true}}] run scoreboard players add $hit xrpgc.entities.level 64
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit7=true}}] run scoreboard players add $hit xrpgc.entities.level 128
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit8=true}}] run scoreboard players add $hit xrpgc.entities.level 256
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit9=true}}] run scoreboard players add $hit xrpgc.entities.level 512
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit10=true}}] run scoreboard players add $hit xrpgc.entities.level 1024
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit11=true}}] run scoreboard players add $hit xrpgc.entities.level 2048
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit12=true}}] run scoreboard players add $hit xrpgc.entities.level 4096
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit13=true}}] run scoreboard players add $hit xrpgc.entities.level 8192
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit14=true}}] run scoreboard players add $hit xrpgc.entities.level 16384
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit15=true}}] run scoreboard players add $hit xrpgc.entities.level 32768
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit16=true}}] run scoreboard players add $hit xrpgc.entities.level 65536
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit17=true}}] run scoreboard players add $hit xrpgc.entities.level 131072
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit18=true}}] run scoreboard players add $hit xrpgc.entities.level 262144
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit19=true}}] run scoreboard players add $hit xrpgc.entities.level 524288
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit20=true}}] run scoreboard players add $hit xrpgc.entities.level 1048576
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit21=true}}] run scoreboard players add $hit xrpgc.entities.level 2097152
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit22=true}}] run scoreboard players add $hit xrpgc.entities.level 4194304
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit23=true}}] run scoreboard players add $hit xrpgc.entities.level 8388608
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit24=true}}] run scoreboard players add $hit xrpgc.entities.level 16777216
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit25=true}}] run scoreboard players add $hit xrpgc.entities.level 33554432
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit26=true}}] run scoreboard players add $hit xrpgc.entities.level 67108864
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit27=true}}] run scoreboard players add $hit xrpgc.entities.level 134217728
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit28=true}}] run scoreboard players add $hit xrpgc.entities.level 268435456
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit29=true}}] run scoreboard players add $hit xrpgc.entities.level 536870912
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit30=true}}] run scoreboard players add $hit xrpgc.entities.level 1073741824
execute if entity @s[advancements={xylo_rpg_core:level/kill_entity={bit31=true}}] run scoreboard players operation $hit xrpgc.entities.level *= #-1 xconst


#==<Assign Points>==#
scoreboard players operation #xrpgc.level.xp_up xrpgc.op = $hit xrpgc.entities.level
scoreboard players operation #xrpgc.level.xp_up xrpgc.op < #250 xconst
scoreboard players operation #xrpgc.level.xp_up xrpgc.op > #1 xconst
function xylo_rpg_core:level/xp_up

#==<Drops>==#
scoreboard players operation #xrpgc.items.equipment.generate.level xrpgc.op = $hit xrpgc.entities.level
scoreboard players operation #xrpgc.items.equipment.generate.level xrpgc.op < #100 xconst
execute if predicate xylo_library:random/1_5 run function xylo_rpg_core:items/equipment/give/give_or_spawn


# reset
advancement revoke @s only xylo_rpg_core:level/kill_entity