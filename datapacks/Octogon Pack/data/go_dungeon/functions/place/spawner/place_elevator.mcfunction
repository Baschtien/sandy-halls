#Deciding the 'floor' at which to place the elevator.
#Up = entrance at the top, Down = entrance at the bottom.
#0 = up, 1 = down, 2 = middle.
scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 2
function fafik77:rng/rand
execute store result score UpDownMiddle DungeonRandom run scoreboard players get number RNG_77

#Uppermost floor. Force-set to up.
function go_dungeon:coordinates/get_floor
execute if score @s DungeonFloors = MaxFloor DungeonFloors run scoreboard players set UpDownMiddle DungeonRandom 0
#Second to highest floor. Force-set middle if down.
scoreboard players operation @s DungeonFloors += 1 Constants
execute if score @s DungeonFloors = MaxFloor DungeonFloors if score UpDownMiddle DungeonRandom matches 1 run scoreboard players set UpDownMiddle DungeonRandom 2
#Lowest floor. Force-set to down.
scoreboard players operation @s DungeonFloors -= 1 Constants
execute if score @s DungeonFloors = MinFloor DungeonFloors run scoreboard players set UpDownMiddle DungeonRandom 1
#Second to lowest floor. Force-set to middle if up.
scoreboard players operation @s DungeonFloors -= 1 Constants
execute if score @s DungeonFloors = MinFloor DungeonFloors if score UpDownMiddle DungeonRandom matches 0 run scoreboard players set UpDownMiddle DungeonRandom 2
scoreboard players operation @s DungeonFloors += 1 Constants

#Rolling for left (0) or right(1).
scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 1
function fafik77:rng/rand
execute store result score LeftRight DungeonRandom run scoreboard players get number RNG_77

#Look in the middle.
execute unless score @s DungeonCollisions matches 1 positioned ^ ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 positioned ^ ^ ^5 run function go_dungeon:check/check_5_5
#Then on the left..
execute unless score @s DungeonCollisions matches 1 if score LeftRight DungeonRandom matches 0 positioned ^-3 ^ ^2 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 if score LeftRight DungeonRandom matches 0 positioned ^-3 ^ ^7 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
#..Or on the right.
execute unless score @s DungeonCollisions matches 1 if score LeftRight DungeonRandom matches 1 positioned ^3 ^ ^2 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 if score LeftRight DungeonRandom matches 1 positioned ^3 ^ ^7 facing ^1 ^ ^ run function go_dungeon:check/check_5_5

#DOWN check.
#Look in the middle.
execute unless score @s DungeonCollisions matches 1 unless score UpDownMiddle DungeonRandom matches 1 positioned ^ ^-6 ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 unless score UpDownMiddle DungeonRandom matches 1 positioned ^ ^-6 ^5 run function go_dungeon:check/check_5_5
#Then on the left..
execute unless score @s DungeonCollisions matches 1 unless score UpDownMiddle DungeonRandom matches 1 if score LeftRight DungeonRandom matches 0 positioned ^-3 ^-6 ^2 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 unless score UpDownMiddle DungeonRandom matches 1 if score LeftRight DungeonRandom matches 0 positioned ^-3 ^-6 ^7 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
#..Or on the right.
execute unless score @s DungeonCollisions matches 1 unless score UpDownMiddle DungeonRandom matches 1 if score LeftRight DungeonRandom matches 1 positioned ^3 ^-6 ^2 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 unless score UpDownMiddle DungeonRandom matches 1 if score LeftRight DungeonRandom matches 1 positioned ^3 ^-6 ^7 facing ^1 ^ ^ run function go_dungeon:check/check_5_5

#DOWNER-DOWN check.
#Look in the middle.
execute unless score @s DungeonCollisions matches 1 if score UpDownMiddle DungeonRandom matches 0 positioned ^ ^-12 ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 if score UpDownMiddle DungeonRandom matches 0 positioned ^ ^-12 ^5 run function go_dungeon:check/check_5_5
#Then on the left..
execute unless score @s DungeonCollisions matches 1 if score UpDownMiddle DungeonRandom matches 0 if score LeftRight DungeonRandom matches 0 positioned ^-3 ^-12 ^2 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 if score UpDownMiddle DungeonRandom matches 0 if score LeftRight DungeonRandom matches 0 positioned ^-3 ^-12 ^7 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
#..Or on the right.
execute unless score @s DungeonCollisions matches 1 if score UpDownMiddle DungeonRandom matches 0 if score LeftRight DungeonRandom matches 1 positioned ^3 ^-12 ^2 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 if score UpDownMiddle DungeonRandom matches 0 if score LeftRight DungeonRandom matches 1 positioned ^3 ^-12 ^7 facing ^1 ^ ^ run function go_dungeon:check/check_5_5

#UP check.
#Look in the middle.
execute unless score @s DungeonCollisions matches 1 unless score UpDownMiddle DungeonRandom matches 0 positioned ^ ^6 ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 unless score UpDownMiddle DungeonRandom matches 0 positioned ^ ^6 ^5 run function go_dungeon:check/check_5_5
#Then on the left..
execute unless score @s DungeonCollisions matches 1 unless score UpDownMiddle DungeonRandom matches 0 if score LeftRight DungeonRandom matches 0 positioned ^-3 ^6 ^2 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 unless score UpDownMiddle DungeonRandom matches 0 if score LeftRight DungeonRandom matches 0 positioned ^-3 ^ ^7 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
#..Or on the right.
execute unless score @s DungeonCollisions matches 1 unless score UpDownMiddle DungeonRandom matches 0 if score LeftRight DungeonRandom matches 1 positioned ^3 ^6 ^2 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 unless score UpDownMiddle DungeonRandom matches 0 if score LeftRight DungeonRandom matches 1 positioned ^3 ^6 ^7 facing ^1 ^ ^ run function go_dungeon:check/check_5_5

#UPPER-UP check.
#Look in the middle.
execute unless score @s DungeonCollisions matches 1 if score UpDownMiddle DungeonRandom matches 1 positioned ^ ^12 ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 if score UpDownMiddle DungeonRandom matches 1 positioned ^ ^12 ^5 run function go_dungeon:check/check_5_5
#Then on the left..
execute unless score @s DungeonCollisions matches 1 if score UpDownMiddle DungeonRandom matches 1 if score LeftRight DungeonRandom matches 0 positioned ^-3 ^12 ^2 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 if score UpDownMiddle DungeonRandom matches 1 if score LeftRight DungeonRandom matches 0 positioned ^-3 ^12 ^7 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
#..Or on the right.
execute unless score @s DungeonCollisions matches 1 if score UpDownMiddle DungeonRandom matches 1 if score LeftRight DungeonRandom matches 1 positioned ^3 ^12 ^2 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 if score UpDownMiddle DungeonRandom matches 1 if score LeftRight DungeonRandom matches 1 positioned ^3 ^12 ^7 facing ^1 ^ ^ run function go_dungeon:check/check_5_5

execute if score CollisionsEnabled DungeonSettings matches 0 run scoreboard players set @s DungeonCollisions 0

execute unless score @s DungeonCollisions matches 1 run function go_dungeon:place/spawner/place_elevator_cnf
