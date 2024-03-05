execute if score TornadoEvents DungeonBoss matches 1.. run scoreboard players remove TornadoEvents DungeonBoss 1
execute if score TornadoEvents DungeonBoss matches 0 run kill @e[tag=boss_attack_tornado]
execute if score TornadoEvents DungeonBoss matches 0 run kill @e[tag=boss_attack_tornado_swirl]

execute as @a if score @s TornadoCooldown matches 1.. run scoreboard players remove @s TornadoCooldown 1
execute as @a if score @s TornadoCooldown matches ..-2 run scoreboard players add @s TornadoCooldown 1
execute as @e[tag=boss_attack_tornado] at @s run function go_dungeon:boss/sand_tornado/tornado_loop

execute as @a[scores={TornadoCooldown=0}] run function go_dungeon:boss/sand_tornado/exited_tornado

execute as @e[tag=boss_attack_tornado_player] at @s run function go_dungeon:boss/sand_tornado/player_marker_loop

effect give @a[tag=in_tornado] levitation 1 3 true
execute as @a[tag=in_tornado] run damage @s 4 minecraft:cactus at ~ ~ ~

execute at @e[type=snowball] run particle dust 0.76 0.7 0.5 2 ~ ~ ~ 0.3 0.3 0.3 0 2
execute as @e[tag=boss_attack_tornado_swirl] at @s run function go_dungeon:boss/sand_tornado/swirl_effect_loop

execute if score SummonTornado DungeonBoss matches 0.. run scoreboard players remove SummonTornado DungeonBoss 1
execute if score SummonTornado DungeonBoss matches 0 run summon marker 878 154 -3335 {Tags:[dungeon,dungeon_tmp]}
execute if score SummonTornado DungeonBoss matches 0 as @e[tag=dungeon_tmp] at @s run function go_dungeon:boss/sand_tornado/summon_tornadoes
execute if score SummonTornado DungeonBoss matches 0 run kill @e[tag=dungeon_tmp]
execute if score SummonTornado DungeonBoss matches 0 if score TornadoNumber DungeonBoss matches 1.. run scoreboard players set SummonTornado DungeonBoss 20
