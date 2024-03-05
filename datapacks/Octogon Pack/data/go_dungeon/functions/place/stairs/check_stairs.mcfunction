execute if score UpOrDown DungeonRandom matches 1 run function go_dungeon:check/check_stairs_up
execute if score UpOrDown DungeonRandom matches 0 run function go_dungeon:check/check_stairs_down

execute if score @s DungeonCollisions matches 1.. if score UpOrDown DungeonRandom matches 1 unless score DebugEnabled DungeonSettings matches 0 run tellraw @p {"text":"WARNING! Collision happened when trying to place STAIRS UP","color":"dark_red"}
execute if score @s DungeonCollisions matches 1.. if score UpOrDown DungeonRandom matches 0 unless score DebugEnabled DungeonSettings matches 0 run tellraw @p {"text":"WARNING! Collision happened when trying to place STAIRS DOWN","color":"dark_red"}
execute if score CollisionsEnabled DungeonSettings matches 0 run scoreboard players set @s DungeonCollisions 0
