execute positioned ^ ^ ^ run function go_dungeon:check/check_5_5
execute positioned ^ ^ ^5 run function go_dungeon:check/check_5_5
execute positioned ^ ^ ^10 run function go_dungeon:check/check_5_5
execute positioned ^ ^ ^15 run function go_dungeon:check/check_5_5
execute positioned ^3 ^ ^2 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
execute positioned ^3 ^ ^7 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
execute positioned ^3 ^ ^12 facing ^1 ^ ^ run function go_dungeon:check/check_5_5
execute positioned ^3 ^ ^17 facing ^1 ^ ^ run function go_dungeon:check/check_5_5

execute if score CollisionsEnabled DungeonSettings matches 0 run scoreboard players set @s DungeonCollisions 0

execute unless score @s DungeonCollisions matches 1 run function go_dungeon:place/other/place_cave_2_cnf
