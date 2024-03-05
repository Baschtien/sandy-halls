#a scheduled function that 'launches' the wave by summoning the marker.
execute if score BossAttackDir DungeonRandom matches 0 run summon marker 878 154 -3315 {Tags:[boss_attack,boss_attack_wave],Rotation:[180.0f,0.0f]}
execute if score BossAttackDir DungeonRandom matches 1 run summon marker 858 154 -3335 {Tags:[boss_attack,boss_attack_wave],Rotation:[-90.0f,0.0f]}
execute if score BossAttackDir DungeonRandom matches 2 run summon marker 878 154 -3355 {Tags:[boss_attack,boss_attack_wave],Rotation:[0.0f,0.0f]}
execute if score BossAttackDir DungeonRandom matches 3 run summon marker 898 154 -3335 {Tags:[boss_attack,boss_attack_wave],Rotation:[90.0f,0.0f]}
#TODO follow randomness here

kill @e[tag=boss_attack_wave_warnings]
