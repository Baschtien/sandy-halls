function go_dungeon:chat/clear_chat
tellraw @a ["",{"text":"[","color":"gray"},{"text":"Red Sand King","color":"red"},{"text":"] ","color":"gray"},{"text":"Phew, you made it! Well, erm, you couldn't ","color":"red"},{"text":"not","italic":true,"color":"red"},{"text":" make it, am I right?","color":"red"}]
function go_dungeon:chat/dialogue/red_sand_king_speaks
schedule function go_dungeon:chat/dialogue/fourth/fourth_close_2 8s
