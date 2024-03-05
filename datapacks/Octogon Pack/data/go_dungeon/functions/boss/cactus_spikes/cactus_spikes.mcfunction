#Executed by the boss, at the boss.
#Function that 'launches' an attack.
#For this particular attack, there is time between this function and the actual attack.

#Time during which the boss won't do anything.
scoreboard players set BossFrozen DungeonBoss 90

scoreboard players set CactusNumber DungeonBoss 100
summon marker 878 154 -3335 {Tags:[dungeon,dungeon_tmp]}
execute as @e[tag=dungeon_tmp] at @s run function go_dungeon:boss/cactus_spikes/summon_cactuses
execute as @e[tag=boss_attack_cactus] at @s run kill @e[tag=boss_attack_cactus,distance=0.1..1.5]
kill @e[tag=dungeon_tmp]

scoreboard players set CactusEvents DungeonBoss 80
