tellraw @a ["",{"text":"[","color":"gray"},{"text":"Red Sand King","color":"red"},{"text":"] ","color":"gray"},{"text":"You see, even if you helped me some power, we are about to invade the White throne room, the center of the White Sand King's power. As humans, you won't be affected but I... Cannot follow you.","color":"red"},"\n",{"text":"Items you have on you will still behave fine, but unfortunately, if you die in there... It's over.","color":"red"}]
function go_dungeon:chat/dialogue/red_sand_king_speaks
schedule function go_dungeon:chat/dialogue/boss/open_3 15s
