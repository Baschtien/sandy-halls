particle minecraft:crit ~ ~1 ~ 0 0 0 0.6 20 normal
particle angry_villager ~ ~1 ~ 1 1 1 0 10 normal
particle dust 1 0.67 0 1 ~ ~1 ~ 1 1 1 10 80 normal
function go_dungeon:sounds/detonate_grenade
playsound minecraft:block.bell.resonate player @a ~ ~ ~ 1 1

execute at @e[type=marker,tag=dungeon_chest] positioned ~ ~-0.4 ~ run schedule function go_dungeon:items/chest_grenade/summon_marker 3s
team join chests @e[type=item,tag=dungeon_tmp]
tag @e[type=item,tag=dungeon_tmp] remove dungeon_tmp
kill @e[type=snowball,limit=1,sort=nearest,nbt={Item:{tag:{dungeon_chestnade:1b}}}]
