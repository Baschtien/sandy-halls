#tellraw @a ["",{"text":"[","color":"gray"},{"text":"Red Sand King","color":"red"},{"text":"] ","color":"gray"},{"text":"Oh, I forgot to mention: right now I'm using all my power to maintain the sand tunnels open, but when you will have told me to stop I will be able to use Red Sand you give me to manifest some goodies for you! I will do that through my loyal subjects and myself; all of us have their specialities.","color":"red"}]
tellraw @a ["",{"text":"[","color":"gray"},{"text":"Red Sand King","color":"red"},{"text":"] ","color":"gray"},{"text":"Oh, I forgot to mention: once I'll have closed the sand tunnels I'll be able to use Red Sand to manifest goodies for you through myself and loyal subjects.","color":"red"}]
schedule function go_dungeon:chat/dialogue/first/first_open_3 13s
function go_dungeon:chat/dialogue/red_sand_king_speaks