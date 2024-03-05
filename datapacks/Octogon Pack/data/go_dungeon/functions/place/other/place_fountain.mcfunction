#Look on the right..
execute positioned ^-3 ^ ^2 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
execute positioned ^-3 ^ ^7 facing ^-1 ^ ^ run function go_dungeon:check/check_5_5
#Then in the middle
execute positioned ^ ^ ^ run function go_dungeon:check/check_5_5
execute positioned ^ ^ ^5 run function go_dungeon:check/check_5_5
execute if score CollisionsEnabled DungeonSettings matches 0 run scoreboard players set @s DungeonCollisions 0

execute unless score @s DungeonCollisions matches 1 run function go_dungeon:place/other/place_fountain_cnf
