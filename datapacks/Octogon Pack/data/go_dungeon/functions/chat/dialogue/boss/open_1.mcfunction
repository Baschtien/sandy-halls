function go_dungeon:chat/clear_chat
tellraw @a ["",{"text":"[","color":"gray"},{"text":"Red Sand King","color":"red"},{"text":"] ","color":"gray"},{"text":"Well, err, actually... When I was saying ","color":"red"},{"text":"we","italic":true,"color":"red"},{"text":" would kick my bro's butt, I meant, err... Well ","color":"red"},{"text":"you.","italic":true,"color":"red"}]
function go_dungeon:chat/dialogue/red_sand_king_speaks
schedule function go_dungeon:chat/dialogue/boss/open_2 10s
