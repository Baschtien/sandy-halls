function go_dungeon:check/check_5_5

execute unless score @s DungeonCollisions matches 1 run function go_dungeon:place/hallway/end/place_end_simple
