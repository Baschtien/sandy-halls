function go_dungeon:chat/clear_chat
tellraw @a ["",{"text":"[","color":"gray"},{"text":"Red Sand King","color":"red"},{"text":"] ","color":"gray"},{"text":"And off you go! You can now venture in the first level of the Desert Palace. Remember, foes here are weaker, but so are you! So gather loot from chests: even if the pesky White forces have put locks on them, they'll be no match for your Lock Picker!","color":"red"}]
schedule function go_dungeon:chat/dialogue/first/first_open_2 20s
function go_dungeon:chat/dialogue/red_sand_king_speaks
