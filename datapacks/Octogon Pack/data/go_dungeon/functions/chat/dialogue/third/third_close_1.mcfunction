function go_dungeon:chat/clear_chat
tellraw @a ["",{"text":"[","color":"gray"},{"text":"Red Sand King","color":"red"},{"text":"] ","color":"gray"},{"text":"Heey, you survived! Well of course you did","color":"red"},{"text":" (I'm awesome!).","italic":true,"color":"red"}]
function go_dungeon:chat/dialogue/red_sand_king_speaks
schedule function go_dungeon:chat/dialogue/third/third_close_2 5s
