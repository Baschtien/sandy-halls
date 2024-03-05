#Executed by a temporary marker, at the boss, on the arena ground.

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 359
function fafik77:rng/rand
execute store result score BossAttackTheta DungeonRandom run scoreboard players get number RNG_77

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 18
function fafik77:rng/rand
execute store result score BossAttackRho DungeonRandom run scoreboard players get number RNG_77

execute store result entity @s Rotation[0] float 1 run scoreboard players get BossAttackTheta DungeonRandom
#execute store result score rot DungeonTmp run data get entity @s Rotation[0]

#Summons a marker with the tag boss_attack_cactus at the correct position.
execute at @s run function go_dungeon:boss/cactus_spikes/summon_cactus_rho

scoreboard players remove CactusNumber DungeonBoss 1
execute if score CactusNumber DungeonBoss matches 1.. run function go_dungeon:boss/cactus_spikes/summon_cactuses
