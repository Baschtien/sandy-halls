#Executed by the boss, at the boss.
#Function that 'launches' an attack.

#Time during which the boss won't do anything.
scoreboard players set BossFrozen DungeonBoss 220

scoreboard players set TornadoNumber DungeonBoss 6
scoreboard players set SummonTornado DungeonBoss 1
#summon marker 878 154 -3335 {Tags:[dungeon,dungeon_tmp]}
#execute as @e[tag=dungeon_tmp] at @s run function go_dungeon:boss/sand_tornado/summon_tornadoes
#execute as @e[tag=boss_attack_tornadoes] at @s run kill @e[tag=boss_attack_tornadoes,distance=0.1..3]
#kill @e[tag=dungeon_tmp]

scoreboard players set TornadoEvents DungeonBoss 200
