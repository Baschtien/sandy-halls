function go_dungeon:check/check_5_5
execute if score @s DungeonCollisions matches 1.. unless score DebugEnabled DungeonSettings matches 0 run tellraw @p {"text":"WARNING! Fatal collision happened !","color":"dark_red"}
execute if score CollisionsEnabled DungeonSettings matches 0 run scoreboard players set @s DungeonCollisions 0

#If found something directly in front, nothing can be put in place.
#Therefore, the placement tries end.
execute if score @s DungeonCollisions matches 1 store result score PlacementTries DungeonEvents run scoreboard players get MaxPlacementTries DungeonSettings
