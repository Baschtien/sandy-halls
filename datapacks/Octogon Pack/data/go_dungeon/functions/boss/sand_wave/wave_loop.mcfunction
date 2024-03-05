scoreboard players remove WaveEvents DungeonBoss 1
summon marker ~ ~ ~ {Tags:[boss_attack,boss_attack_wave_line]}
execute store result entity @e[tag=boss_attack_wave_line,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
tp @s ^ ^ ^1
execute if score WaveEvents DungeonBoss matches 0 run kill @s
