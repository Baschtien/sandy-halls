#function go_dungeon:chat/clear_chat
scoreboard players set @a[team=players] PlayersReady 0

#The game's state is set to 'idle in the hub'
scoreboard players set Progress DungeonEvents 1

#Counting missed (unopened) chests
function go_dungeon:features/count_missed_chests

#Halls are closed
function go_dungeon:dungeon/reset_dungeon

execute if score Stage DungeonEvents matches 1 run function go_dungeon:chat/dialogue/first/first_close_1
execute if score Stage DungeonEvents matches 3 run function go_dungeon:chat/dialogue/third/third_close_1
execute if score Stage DungeonEvents matches 4 run function go_dungeon:chat/dialogue/fourth/fourth_close_1

#Update parameters to match the next level
function go_dungeon:progress/next_level
#function go_dungeon:chat/ask_open

function go_dungeon:merchants/summon_all

execute unless score Stage DungeonEvents matches 5 run data merge block -39 126 -57 {Color:"orange",GlowingText:1b,Text2:'{"text":"Open"}',Text3:'{"text":"halls"}'}
execute if score Stage DungeonEvents matches 5 run data merge block -39 126 -57 {Color:"red",GlowingText:1b,Text2:'{"text":"Open"}',Text3:'{"text":"final level"}'}
