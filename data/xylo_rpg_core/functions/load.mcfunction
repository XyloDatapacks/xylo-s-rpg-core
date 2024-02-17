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
scoreboard objectives add xrpgc.xp_to_next_level dummy

#==<Skills>==#

# skill points
scoreboard objectives add xrpgc.skills.skill_points dummy

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

#==<Entities>==#
scoreboard objectives add xrpgc.entities.level dummy
scoreboard objectives add xrpgc.entities.level.0 dummy
scoreboard objectives add xrpgc.entities.level.1 dummy
scoreboard objectives add xrpgc.entities.level.2 dummy
scoreboard objectives add xrpgc.entities.level.3 dummy
scoreboard objectives add xrpgc.entities.level.4 dummy
scoreboard objectives add xrpgc.entities.level.5 dummy
scoreboard objectives add xrpgc.entities.level.6 dummy
scoreboard objectives add xrpgc.entities.level.7 dummy
scoreboard objectives add xrpgc.entities.level.8 dummy
scoreboard objectives add xrpgc.entities.level.9 dummy
scoreboard objectives add xrpgc.entities.level.10 dummy
scoreboard objectives add xrpgc.entities.level.11 dummy
scoreboard objectives add xrpgc.entities.level.12 dummy
scoreboard objectives add xrpgc.entities.level.13 dummy
scoreboard objectives add xrpgc.entities.level.14 dummy
scoreboard objectives add xrpgc.entities.level.15 dummy
scoreboard objectives add xrpgc.entities.level.16 dummy
scoreboard objectives add xrpgc.entities.level.17 dummy
scoreboard objectives add xrpgc.entities.level.18 dummy
scoreboard objectives add xrpgc.entities.level.19 dummy
scoreboard objectives add xrpgc.entities.level.20 dummy
scoreboard objectives add xrpgc.entities.level.21 dummy
scoreboard objectives add xrpgc.entities.level.22 dummy
scoreboard objectives add xrpgc.entities.level.23 dummy
scoreboard objectives add xrpgc.entities.level.24 dummy
scoreboard objectives add xrpgc.entities.level.25 dummy
scoreboard objectives add xrpgc.entities.level.26 dummy
scoreboard objectives add xrpgc.entities.level.27 dummy
scoreboard objectives add xrpgc.entities.level.28 dummy
scoreboard objectives add xrpgc.entities.level.29 dummy
scoreboard objectives add xrpgc.entities.level.30 dummy
scoreboard objectives add xrpgc.entities.level.31 dummy

#==<Charms>==#
scoreboard objectives add xrpgc.charms.head.1 dummy
scoreboard objectives add xrpgc.charms.head.2 dummy
scoreboard objectives add xrpgc.charms.head.3 dummy
scoreboard objectives add xrpgc.charms.chest.1 dummy
scoreboard objectives add xrpgc.charms.chest.2 dummy
scoreboard objectives add xrpgc.charms.chest.3 dummy
scoreboard objectives add xrpgc.charms.legs.1 dummy
scoreboard objectives add xrpgc.charms.legs.2 dummy
scoreboard objectives add xrpgc.charms.legs.3 dummy
scoreboard objectives add xrpgc.charms.feet.1 dummy
scoreboard objectives add xrpgc.charms.feet.2 dummy
scoreboard objectives add xrpgc.charms.feet.3 dummy
scoreboard objectives add xrpgc.charms.mainhand.1 dummy
scoreboard objectives add xrpgc.charms.mainhand.2 dummy
scoreboard objectives add xrpgc.charms.mainhand.3 dummy
scoreboard objectives add xrpgc.charms.offhand.1 dummy
scoreboard objectives add xrpgc.charms.offhand.2 dummy
scoreboard objectives add xrpgc.charms.offhand.3 dummy



function xylo_rpg_core:_database

# revoke advancements
advancement revoke @a from xylo_rpg_core:revoke

