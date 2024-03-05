function go_dungeon:chat/clear_chat
tellraw @a ["",{"text":"[","color":"gray"},{"text":"Red Sand King","color":"red"},{"text":"] ","color":"gray"},{"text":"Here you go again! By the way, I've been signaling where loot chests are with some patches of red sand or red sandstone! How? ...Magic.","color":"red"}]
schedule function go_dungeon:chat/dialogue/third/third_open_2 8s
function go_dungeon:chat/dialogue/red_sand_king_speaks
