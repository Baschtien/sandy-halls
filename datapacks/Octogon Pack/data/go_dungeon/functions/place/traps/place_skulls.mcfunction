#2-floor room. So that means we have to check the floor we're in.
function go_dungeon:coordinates/get_floor
execute if score @s DungeonFloors = MaxFloor DungeonFloors run scoreboard players set @s DungeonCollisions 1

#Look on the left..
execute unless score @s DungeonCollisions matches 1 positioned ^3 ^ ^7 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 positioned ^3 ^ ^12 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
#..In the middle..
execute unless score @s DungeonCollisions matches 1 positioned ^ ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 positioned ^ ^ ^5 run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 positioned ^ ^ ^10 run function go_dungeon:check/check_5_5
#..Then on the right..
execute unless score @s DungeonCollisions matches 1 positioned ^-3 ^ ^7 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 positioned ^-3 ^ ^12 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5

#..Moving on to the 2nd floor! Look on the top-left..
execute unless score @s DungeonCollisions matches 1 positioned ^3 ^6 ^7 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 positioned ^3 ^6 ^12 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
#..In the top-center..
execute unless score @s DungeonCollisions matches 1 positioned ^ ^6 ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 positioned ^ ^6 ^5 run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 positioned ^ ^6 ^10 run function go_dungeon:check/check_5_5
#..And finally on the top-right..
execute unless score @s DungeonCollisions matches 1 positioned ^-3 ^6 ^7 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 positioned ^-3 ^6 ^12 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5

execute if score CollisionsEnabled DungeonSettings matches 0 run scoreboard players set @s DungeonCollisions 0

execute unless score @s DungeonCollisions matches 1 run function go_dungeon:place/traps/place_skulls_cnf
