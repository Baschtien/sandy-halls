#Function that chooses and places a random special room.
#Special in the sense that it is not a corridor or a staircase.

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 99
function fafik77:rng/rand
execute store result score OtherRoom DungeonRandom run scoreboard players get number RNG_77

execute if score OtherRoom DungeonRandom matches 0..9 run function go_dungeon:place/other/place_library_small
execute if score OtherRoom DungeonRandom matches 10..15 run function go_dungeon:place/spawner/place_elevator
execute if score OtherRoom DungeonRandom matches 16..23 run function go_dungeon:place/traps/place_skulls
execute if score OtherRoom DungeonRandom matches 24..31 run function go_dungeon:place/other/place_water
execute if score OtherRoom DungeonRandom matches 32..39 run function go_dungeon:place/traps/place_lava_1
execute if score OtherRoom DungeonRandom matches 40..49 run function go_dungeon:place/other/place_armoury
execute if score OtherRoom DungeonRandom matches 50..59 run function go_dungeon:place/traps/place_balcony
#execute if score OtherRoom DungeonRandom matches 59..66 run function go_dungeon:place/spawner/place_spawner_1
execute if score OtherRoom DungeonRandom matches 60..67 run function go_dungeon:place/other/place_minecarts
execute if score OtherRoom DungeonRandom matches 68..75 run function go_dungeon:place/other/place_library
execute if score OtherRoom DungeonRandom matches 76..84 run function go_dungeon:place/other/place_forge_big
execute if score OtherRoom DungeonRandom matches 85..92 run function go_dungeon:place/other/place_dick
execute if score OtherRoom DungeonRandom matches 93..99 run function go_dungeon:place/spawner/place_chains
#execute if score OtherRoom DungeonRandom matches 95..99 run function go_dungeon:place/other/place_forge

execute if score @s DungeonCollisions matches 1 unless score DebugEnabled DungeonSettings matches 0 run tellraw @p {"text":"WARNING! Collision happened !","color":"dark_red"}
