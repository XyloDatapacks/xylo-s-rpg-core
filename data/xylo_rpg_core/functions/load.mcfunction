#validation
execute if score $xylo_rpg_core xvc.load_status matches 0 run return 0
scoreboard players set $xylo_rpg_core xvc.load_status 1

#declare storage xylo_rpg_core:op
#declare storage xylo_rpg_core:data

# op
scoreboard objectives add xrpgc.op dummy
# version
execute store result score #xrpgc.pack_version xrpgc.op run data get storage xvc_version:op packs[{namespace:"xylo_rpg_core"}].version
scoreboard objectives add xrpgc.player_version dummy

#==<Level>==#
scoreboard objectives add xrpgc.level dummy
scoreboard objectives add xrpgc.xp dummy

#==<Skills>==#

# total value
scoreboard objectives add xrpgc.skills.strength dummy
scoreboard objectives add xrpgc.skills.dexterity dummy
scoreboard objectives add xrpgc.skills.agility dummy
scoreboard objectives add xrpgc.skills.constitution dummy
scoreboard objectives add xrpgc.skills.intelligence dummy

# base value
scoreboard objectives add xrpgc.skills.strength_base dummy
scoreboard objectives add xrpgc.skills.dexterity_base dummy
scoreboard objectives add xrpgc.skills.agility_base dummy
scoreboard objectives add xrpgc.skills.constitution_base dummy
scoreboard objectives add xrpgc.skills.intelligence_base dummy

# equipment value
scoreboard objectives add xrpgc.skills.strength_equipment dummy
scoreboard objectives add xrpgc.skills.dexterity_equipment dummy
scoreboard objectives add xrpgc.skills.agility_equipment dummy
scoreboard objectives add xrpgc.skills.constitution_equipment dummy
scoreboard objectives add xrpgc.skills.intelligence_equipment dummy

# additional value
scoreboard objectives add xrpgc.skills.strength_additional dummy
scoreboard objectives add xrpgc.skills.dexterity_additional dummy
scoreboard objectives add xrpgc.skills.agility_additional dummy
scoreboard objectives add xrpgc.skills.constitution_additional dummy
scoreboard objectives add xrpgc.skills.intelligence_additional dummy

# class value
scoreboard objectives add xrpgc.skills.strength_class dummy
scoreboard objectives add xrpgc.skills.dexterity_class dummy
scoreboard objectives add xrpgc.skills.agility_class dummy
scoreboard objectives add xrpgc.skills.constitution_class dummy
scoreboard objectives add xrpgc.skills.intelligence_class dummy

# related sb
scoreboard objectives add xrpgc.skills.dexterity.range_damage dummy

#==<Classes>==#

# class selection
scoreboard objectives add xrpgc.class.berserker dummy
scoreboard objectives add xrpgc.class.paladin dummy
scoreboard objectives add xrpgc.class.sorcerer dummy
scoreboard objectives add xrpgc.class.warlock dummy
scoreboard objectives add xrpgc.class.hunter dummy
scoreboard objectives add xrpgc.class.thief dummy
scoreboard objectives add xrpgc.class.assassin dummy
scoreboard objectives add xrpgc.class.monk dummy
scoreboard objectives add xrpgc.class.thinker dummy
scoreboard objectives add xrpgc.class.revenant dummy


#==<Equipment>==#
scoreboard objectives add xrpgc.equipment.weight dummy

function xylo_rpg_core:_database

# revoke advancements
advancement revoke @a from xylo_rpg_core:revoke

