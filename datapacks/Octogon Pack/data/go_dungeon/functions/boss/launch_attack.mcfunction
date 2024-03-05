#Function executed when the boss is about to launch an attack.

scoreboard players set min RNG_77 100
scoreboard players set max RNG_77 200
function fafik77:rng/rand
execute store result score AttackCooldown DungeonBoss run scoreboard players get number RNG_77

#scoreboard players set AttackCooldown DungeonBoss 200
playsound entity.blaze.ambient hostile @a ~ ~ ~ 1.5 1 1
playsound entity.blaze.burn hostile @a ~ ~ ~ 1.5 1 1
playsound entity.wither.ambient hostile @a ~ ~ ~ 0.8 1 0.8

function go_dungeon:boss/roll_attack

execute if score BossAttack DungeonRandom matches 0 run function go_dungeon:boss/cactus_spikes/cactus_spikes
execute if score BossAttack DungeonRandom matches 1 run function go_dungeon:boss/sand_wave/sand_wave
execute if score BossAttack DungeonRandom matches 2 run function go_dungeon:boss/sand_tornado/sand_tornado
execute if score BossAttack DungeonRandom matches 3 run function go_dungeon:boss/minions/minions
