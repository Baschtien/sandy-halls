function go_dungeon:check/check_front_tile

#Checking the next tile forwards
execute unless score @s DungeonCollisions matches 1 positioned ^ ^ ^5 run function go_dungeon:check/check_5_5

execute if score @s DungeonCollisions matches 1.. unless score DebugEnabled DungeonSettings matches 0 run tellraw @p {"text":"WARNING! Collision that would be happening next turn was stopped !","color":"aqua"}
execute if score CollisionsEnabled DungeonSettings matches 0 run scoreboard players set @s DungeonCollisions 0

execute unless score @s DungeonCollisions matches 1 run function go_dungeon:place/hallway/straight/place_hallway_simple
