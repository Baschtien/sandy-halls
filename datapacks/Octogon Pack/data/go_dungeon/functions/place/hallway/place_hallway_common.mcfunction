function go_dungeon:check/check_5_5
execute if score @s DungeonCollisions matches 1.. unless score DebugEnabled DungeonSettings matches 0 run tellraw @p {"text":"WARNING! Collision happened !","color":"dark_red"}
execute if score CollisionsEnabled DungeonSettings matches 0 run scoreboard players set @s DungeonCollisions 0
