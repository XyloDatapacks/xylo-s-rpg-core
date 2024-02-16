#> xylo_rpg_core:charms/insert/start
# @context: at block position with item in slot 0 and charm in slot 1
# @within: any call
# @input: "#xrpgc.items.charm.insert.socket xrpgc.op"


execute in minecraft:overworld run item replace block 29999999 0 12341232 container.0 from block ~ ~ ~ container.0
execute in minecraft:overworld run item replace block 29999999 0 12341232 container.1 from block ~ ~ ~ container.1
function xylo_rpg_core:items/charm/insert
execute as @a[limit=1] run item modify block ~ ~ ~ container.0 xylo_rpg_core:items/charm/insert
