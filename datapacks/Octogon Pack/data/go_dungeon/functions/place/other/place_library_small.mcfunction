#2-floor room. So that means we have to check the floor we're in.
function go_dungeon:coordinates/get_floor
execute if score @s DungeonFloors = MaxFloor DungeonFloors run scoreboard players set @s DungeonCollisions 1

#Checking if there will be somewhere to go after this room is placed
#(it only has 1 exit.)
execute unless score @s DungeonCollisions matches 1 positioned ^-5 ^ ^2 facing ^ ^ ^-1 run function go_dungeon:check/check_5_5

#Look on the right..
execute unless score @s DungeonCollisions matches 1 positioned ^-3 ^ ^2 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 positioned ^-3 ^ ^7 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
#..In the middle..
execute unless score @s DungeonCollisions matches 1 positioned ^ ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 positioned ^ ^ ^5 run function go_dungeon:check/check_5_5

#..Then in the top-right..
execute unless score @s DungeonCollisions matches 1 positioned ^-3 ^6 ^2 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 positioned ^-3 ^6 ^7 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
#..Finally in the top-center.
execute unless score @s DungeonCollisions matches 1 positioned ^ ^6 ^ run function go_dungeon:check/check_5_5
execute unless score @s DungeonCollisions matches 1 positioned ^ ^6 ^5 run function go_dungeon:check/check_5_5

execute if score CollisionsEnabled DungeonSettings matches 0 run scoreboard players set @s DungeonCollisions 0

execute unless score @s DungeonCollisions matches 1 run function go_dungeon:place/other/place_library_small_cnf
