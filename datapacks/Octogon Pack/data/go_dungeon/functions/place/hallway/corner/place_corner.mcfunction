#function go_dungeon:place/hallway/place_hallway_common
#Checking directly in front. If finds something, stops the placement tries.
function go_dungeon:check/check_front_tile

#Randomizing left or right
execute unless score @s DungeonCollisions matches 1 run scoreboard players set min RNG_77 0
execute unless score @s DungeonCollisions matches 1 run scoreboard players set max RNG_77 1
execute unless score @s DungeonCollisions matches 1 run function fafik77:rng/rand
execute unless score @s DungeonCollisions matches 1 run execute store result score LeftOrRight DungeonRandom run scoreboard players get number RNG_77

execute unless score @s DungeonCollisions matches 1 if score LeftOrRight DungeonRandom matches 1 positioned ^3 ^ ^2 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 if score LeftOrRight DungeonRandom matches 0 positioned ^-3 ^ ^2 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5

execute if score @s DungeonCollisions matches 1.. unless score DebugEnabled DungeonSettings matches 0 run tellraw @p {"text":"WARNING! Collision that would be happening next turn was stopped !","color":"aqua"}
execute if score CollisionsEnabled DungeonSettings matches 0 run scoreboard players set @s DungeonCollisions 0

execute unless score @s DungeonCollisions matches 1 run function go_dungeon:place/hallway/corner/place_corner_simple
