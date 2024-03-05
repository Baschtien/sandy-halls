#Function that chooses and places a random special room.
#Special in the sense that it is not a corridor or a staircase.

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 99
function fafik77:rng/rand
execute store result score OtherRoom DungeonRandom run scoreboard players get number RNG_77

execute if score OtherRoom DungeonRandom matches 0..19 run function go_dungeon:place/other/place_cave
execute if score OtherRoom DungeonRandom matches 20..39 run function go_dungeon:place/other/place_pillars
execute if score OtherRoom DungeonRandom matches 40..59 run function go_dungeon:place/other/place_fountain
execute if score OtherRoom DungeonRandom matches 60..74 run function go_dungeon:place/spawner/place_spawner_1
execute if score OtherRoom DungeonRandom matches 75..89 run function go_dungeon:place/other/place_cells
execute if score OtherRoom DungeonRandom matches 90..99 run function go_dungeon:place/other/place_forge

execute if score @s DungeonCollisions matches 1 unless score DebugEnabled DungeonSettings matches 0 run tellraw @p {"text":"WARNING! Collision happened !","color":"dark_red"}
