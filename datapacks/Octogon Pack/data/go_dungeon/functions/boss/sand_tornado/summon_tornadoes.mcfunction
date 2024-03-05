#Executed by a temporary marker, at the center, on the arena ground.

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 359
function fafik77:rng/rand
execute store result score BossAttackTheta DungeonRandom run scoreboard players get number RNG_77

scoreboard players set min RNG_77 2
scoreboard players set max RNG_77 18
function fafik77:rng/rand
execute store result score BossAttackRho DungeonRandom run scoreboard players get number RNG_77

execute store result entity @s Rotation[0] float 1 run scoreboard players get BossAttackTheta DungeonRandom
execute store result score rot DungeonTmp run data get entity @s Rotation[0]
#Summons a marker with the tag boss_attack_tornado at the correct position.

execute at @s run function go_dungeon:boss/sand_tornado/summon_tornado_rho

scoreboard players remove TornadoNumber DungeonBoss 1
#execute if score TornadoNumber DungeonBoss matches 1.. run function go_dungeon:boss/sand_tornado/summon_tornadoes
