execute if score CactusEvents DungeonBoss matches 1.. run scoreboard players remove CactusEvents DungeonBoss 1
execute if score CactusEvents DungeonBoss matches 40 at @e[tag=boss_attack_cactus] run setblock ~ ~ ~ cactus
execute if score CactusEvents DungeonBoss matches 40 at @e[tag=boss_attack_cactus] run tag @e[distance=..1] add damage_cactus
execute if score CactusEvents DungeonBoss matches 40 at @e[tag=boss_attack_cactus] positioned ~ ~1 ~ run tag @e[distance=..1.5] add damage_cactus
execute if score CactusEvents DungeonBoss matches 39 at @e[tag=boss_attack_cactus] if block ~ ~ ~ cactus run setblock ~ ~1 ~ cactus
execute if score CactusEvents DungeonBoss matches 38 at @e[tag=boss_attack_cactus] if block ~ ~1 ~ cactus run setblock ~ ~2 ~ cactus
execute if score CactusEvents DungeonBoss matches 1 at @e[tag=boss_attack_cactus] run function go_dungeon:boss/cactus_spikes/remove_cactuses
execute if score CactusEvents DungeonBoss matches 0 run kill @e[tag=boss_attack_cactus]
execute as @e[tag=boss_attack_cactus] at @s run function go_dungeon:boss/cactus_spikes/cactus_loop
execute as @e[tag=damage_cactus] at @s run damage @s 15 minecraft:cactus by @e[type=marker,limit=1,sort=nearest]
tag @a remove damage_cactus
