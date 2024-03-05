function go_dungeon:check/check_front_tile

execute unless score @s DungeonCollisions matches 1 run scoreboard players set min RNG_77 0
execute unless score @s DungeonCollisions matches 1 run scoreboard players set max RNG_77 8
execute unless score @s DungeonCollisions matches 1 run function fafik77:rng/rand
execute unless score @s DungeonCollisions matches 1 run execute store result score RoomVariation DungeonRandom run scoreboard players get number RNG_77

#0..2 = t
#3..5 = left t
#6..8 = right t

#left
execute unless score @s DungeonCollisions matches 1 if score RoomVariation DungeonRandom matches 0..2 positioned ^3 ^ ^2 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 if score RoomVariation DungeonRandom matches 3..5 positioned ^3 ^ ^2 facing ^1 ^ ^ run function go_dungeon:check/check_5_5

#right
execute unless score @s DungeonCollisions matches 1 if score RoomVariation DungeonRandom matches 0..2 positioned ^-3 ^ ^2 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 if score RoomVariation DungeonRandom matches 6..8 positioned ^-3 ^ ^2 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5

#forward
execute unless score @s DungeonCollisions matches 1 if score RoomVariation DungeonRandom matches 3..5 positioned ^ ^ ^5 run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 if score RoomVariation DungeonRandom matches 6..8 positioned ^ ^ ^5 run function go_dungeon:check/check_5_5

execute if score @s DungeonCollisions matches 1.. unless score DebugEnabled DungeonSettings matches 0 run tellraw @p {"text":"WARNING! Collision that would be happening next turn was stopped !","color":"aqua"}
execute if score CollisionsEnabled DungeonSettings matches 0 run scoreboard players set @s DungeonCollisions 0

execute unless score @s DungeonCollisions matches 1 run function go_dungeon:place/hallway/intersection/place_intersection_simple
