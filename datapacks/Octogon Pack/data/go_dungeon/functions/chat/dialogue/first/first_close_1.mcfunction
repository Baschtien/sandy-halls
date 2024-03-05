function go_dungeon:chat/clear_chat
tellraw @a ["",{"text":"[","color":"gray"},{"text":"Red Sand King","color":"red"},{"text":"] ","color":"gray"},{"text":"Phew, that was tiring! I... wait, what are you saying?...","color":"red"}]
schedule function go_dungeon:chat/dialogue/first/first_close_2 6s
function go_dungeon:chat/dialogue/red_sand_king_speaks
