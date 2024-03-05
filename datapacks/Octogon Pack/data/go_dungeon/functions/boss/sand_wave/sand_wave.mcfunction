#Launching function of the attack.
#Executed by the boss.

#Time during which the boss will not do anything.
scoreboard players set BossFrozen DungeonBoss 150

schedule function go_dungeon:boss/sand_wave/start_wave 3s
schedule function go_dungeon:boss/fill_floor 7.5s
scoreboard players set WaveEvents DungeonBoss 40

#Random here
scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 3
function fafik77:rng/rand
execute store result score BossAttackDir DungeonRandom run scoreboard players get number RNG_77

execute positioned 878 154 -3335 run function go_dungeon:boss/sand_wave/warnings

scoreboard players set @e[tag=boss_attack_wave_warning] DungeonTmp 80
