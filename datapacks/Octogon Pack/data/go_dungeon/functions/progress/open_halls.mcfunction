#function go_dungeon:chat/clear_chat
scoreboard players set @a[team=players] PlayersReady 0

function go_dungeon:merchants/kill_all

#Do these instructions unless the players reached the end, the bossfight.
#The game's state is set to 'Halls open'
execute unless score Stage DungeonEvents matches 5 run scoreboard players set Progress DungeonEvents 2
#Generating the dungeon and opening the portals
execute unless score Stage DungeonEvents matches 5 run function go_dungeon:dungeon/run_dungeon
#execute unless score Stage DungeonEvents matches 5 run function go_dungeon:chat/ask_close
execute unless score Stage DungeonEvents matches 5 run data merge block -39 126 -57 {Color:"orange",GlowingText:1b,Text2:'{"text":"Close"}',Text3:'{"text":"halls"}'}

#Do these instructions if it's bossfight time.
execute if score Stage DungeonEvents matches 5 run function go_dungeon:progress/open_bossfight

execute if score Stage DungeonEvents matches 1 run function go_dungeon:chat/dialogue/first/first_open_1
execute if score Stage DungeonEvents matches 2 run function go_dungeon:chat/dialogue/second/second_open_1
execute if score Stage DungeonEvents matches 3 run function go_dungeon:chat/dialogue/third/third_open_1
execute if score Stage DungeonEvents matches 4 run function go_dungeon:chat/dialogue/fourth/fourth_open_1
