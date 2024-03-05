execute positioned ~ ~1 ~ as @e[distance=..1,tag=!dungeon_boss] at @s run tag @s add damage_wave
execute positioned ~ ~2 ~ as @e[distance=..1,tag=!dungeon_boss] at @s run tag @s add damage_wave
execute as @e[tag=damage_wave] at @s run summon minecraft:marker ~ ~-1 ~ {Tags:[dungeon_tmp]}
execute positioned ~ ~ ~ as @e[tag=damage_wave] run damage @s 10 minecraft:fall by @e[tag=dungeon_tmp,limit=1,sort=nearest]
effect give @e[tag=damage_wave] levitation 1 6 true
tag @e remove damage_wave
kill @e[tag=dungeon_tmp]
