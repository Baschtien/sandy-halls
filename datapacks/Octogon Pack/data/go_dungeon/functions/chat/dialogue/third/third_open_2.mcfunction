execute if score ChestsMissed DungeonEvents matches 0 run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Red Sand King","color":"red"},{"text":"] ","color":"gray"},{"text":"Oh, wow, you ","color":"red"},{"text":"had","underlined":true,"color":"red"},{"text":" noticed! You haven't missed a single chest! Keep it up and we'll whoop my bro's butt.","color":"red"}]
execute unless score ChestsMissed DungeonEvents matches 0 run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Red Sand King","color":"red"},{"text":"] ","color":"gray"},{"text":"Well, erm, you hadn't really noticed, because you missed ","color":"red"},{"score":{"name":"ChestsMissed","objective":"DungeonEvents"},"bold":true,"color":"dark_red"},{"text":" chests of loot. Good job.","color":"red"}]
function go_dungeon:chat/dialogue/red_sand_king_speaks