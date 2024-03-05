execute if score Stage DungeonEvents matches 1..2 run scoreboard players set min RNG_77 0
execute if score Stage DungeonEvents matches 1..2 run scoreboard players set max RNG_77 3
execute if score Stage DungeonEvents matches 1..2 run function fafik77:rng/rand
execute if score Stage DungeonEvents matches 1..2 run execute store result score SpawnAtEnd DungeonRandom run scoreboard players get number RNG_77

execute if score SpawnAtEnd DungeonRandom matches 0..1 if score Stage DungeonEvents matches 1 run function go_dungeon:entities/spawn_1_basic
execute if score SpawnAtEnd DungeonRandom matches 0..1 if score Stage DungeonEvents matches 2 run function go_dungeon:entities/spawn_2_basic
