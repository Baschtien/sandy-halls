#Function that chooses and places a random special room.
#Special in the sense that it is not a corridor or a staircase.

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 99
function fafik77:rng/rand
execute store result score OtherRoom DungeonRandom run scoreboard players get number RNG_77

#execute if score OtherRoom DungeonRandom matches 0..7 run function go_dungeon:place/other/place_cave
execute if score OtherRoom DungeonRandom matches 0..7 run function go_dungeon:place/other/place_forge
execute if score OtherRoom DungeonRandom matches 8..15 run function go_dungeon:place/other/place_cells
execute if score OtherRoom DungeonRandom matches 16..23 run function go_dungeon:place/spawner/place_dick
execute if score OtherRoom DungeonRandom matches 24..31 run function go_dungeon:place/other/place_cave_2
execute if score OtherRoom DungeonRandom matches 32..39 run function go_dungeon:place/traps/place_skulls
#execute if score OtherRoom DungeonRandom matches 16..23 run function go_dungeon:place/other/place_fountain
#execute if score OtherRoom DungeonRandom matches 20..29 run function go_dungeon:place/other/place_pillars
execute if score OtherRoom DungeonRandom matches 40..49 run function go_dungeon:place/other/place_water
execute if score OtherRoom DungeonRandom matches 50..59 run function go_dungeon:place/traps/place_lava_1
execute if score OtherRoom DungeonRandom matches 60..69 run function go_dungeon:place/other/place_armoury
execute if score OtherRoom DungeonRandom matches 70..79 run function go_dungeon:place/traps/place_balcony
execute if score OtherRoom DungeonRandom matches 80..89 run function go_dungeon:place/spawner/place_chains
execute if score OtherRoom DungeonRandom matches 90..99 run function go_dungeon:place/other/place_library_small

execute if score @s DungeonCollisions matches 1 unless score DebugEnabled DungeonSettings matches 0 run tellraw @p {"text":"WARNING! Collision happened !","color":"dark_red"}
