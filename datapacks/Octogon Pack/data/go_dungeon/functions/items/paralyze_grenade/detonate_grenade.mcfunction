summon marker ~ ~ ~ {Tags:[dungeon,dungeon_paragrenade,dungeon_tmp]}
execute store result score @e[type=marker,tag=dungeon_tmp] DungeonTmp run scoreboard players get ParaGrenadeTime DungeonSettings
particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.4 150 normal
particle minecraft:crit ~ ~1 ~ 0 0 0 0.5 20 normal
particle dust 0 1 1 1 ~ ~1 ~ 1 1 1 10 80 normal
function go_dungeon:sounds/detonate_grenade
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~

execute as @e[tag=dungeon_creature,distance=..5] run function go_dungeon:items/paralyze_grenade/paralyze_entity

kill @e[type=snowball,limit=1,sort=nearest,nbt={Item:{tag:{dungeon_paranade:1b}}}]
scoreboard players set @s Snowball 0
tag @e[type=marker,tag=dungeon_tmp] remove dungeon_tmp
