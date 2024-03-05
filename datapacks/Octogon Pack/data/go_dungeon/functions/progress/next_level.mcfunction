#Indicates that a bossfight is approaching
execute if score Stage DungeonEvents matches 4 run scoreboard players set Stage DungeonEvents 5

execute if score Stage DungeonEvents matches 3 run function go_dungeon:dungeon/set_stage_4
execute if score Stage DungeonEvents matches 2 run function go_dungeon:dungeon/set_stage_3
execute if score Stage DungeonEvents matches 1 run function go_dungeon:dungeon/set_stage_2
execute if score Stage DungeonEvents matches 0 run function go_dungeon:dungeon/set_stage_1
