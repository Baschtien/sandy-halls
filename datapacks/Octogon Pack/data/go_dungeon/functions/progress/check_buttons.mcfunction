#Join team Explorers
execute if score Progress DungeonEvents matches 0 if block 518 71 -3450 #buttons[powered=false] run scoreboard players set PlayersButton DungeonTmp 0
execute if score Progress DungeonEvents matches 0 if score PlayersButton DungeonTmp matches 0 positioned 518 71 -3450 if block ~ ~ ~ #buttons[powered=true] as @p[team=!players] run team leave @s
execute if score Progress DungeonEvents matches 0 if score PlayersButton DungeonTmp matches 0 positioned 518 71 -3450 if block ~ ~ ~ #buttons[powered=true] as @p[team=!players] run team join players @s
execute if score Progress DungeonEvents matches 0 if block 518 71 -3450 #buttons[powered=true] run scoreboard players set PlayersButton DungeonTmp 1

#Join team Spectators
execute if score Progress DungeonEvents matches 0 if block 522 71 -3450 #buttons[powered=false] run scoreboard players set SpectatorsButton DungeonTmp 0
execute if score Progress DungeonEvents matches 0 if score SpectatorsButton DungeonTmp matches 0 positioned 522 71 -3450 if block ~ ~ ~ #buttons[powered=true] as @p[team=!spectators] run team leave @s
execute if score Progress DungeonEvents matches 0 if score SpectatorsButton DungeonTmp matches 0 positioned 522 71 -3450 if block ~ ~ ~ #buttons[powered=true] as @p[team=!spectators] run team join spectators @s
execute if score Progress DungeonEvents matches 0 if block 522 71 -3450 #buttons[powered=true] run scoreboard players set SpectatorsButton DungeonTmp 1

#Start the game
execute if score Progress DungeonEvents matches 0 if block 520 71 -3445 #buttons[powered=false] run scoreboard players set StartButton DungeonTmp 0
execute if score Progress DungeonEvents matches 0 if score StartButton DungeonTmp matches 0 positioned 520 71 -3445 if block ~ ~ ~ #buttons[powered=true] as @p run function go_dungeon:progress/player_ready
execute if score Progress DungeonEvents matches 0 if block 520 71 -3445 #buttons[powered=true] run scoreboard players set StartButton DungeonTmp 1

#Move on to the next phase of the game.
execute if score Progress DungeonEvents matches 1..2 if block -39 125 -57 #buttons[powered=false] run scoreboard players set ApprovalButton DungeonTmp 0
execute if score Progress DungeonEvents matches 1..2 if score ApprovalButton DungeonTmp matches 0 positioned -39 125 -57 if block ~ ~ ~ #buttons[powered=true] as @p[team=players] run function go_dungeon:progress/player_ready
execute if score Progress DungeonEvents matches 1..2 if block -39 125 -57 #buttons[powered=true] run scoreboard players set ApprovalButton DungeonTmp 1

#Move on to the next phase of the game.
execute if score Progress DungeonEvents matches 5 if block 522 68 -3396 #buttons[powered=false] run scoreboard players set ApprovalButton DungeonTmp 0
execute if score Progress DungeonEvents matches 5 if score ApprovalButton DungeonTmp matches 0 positioned 522 68 -3396 if block ~ ~ ~ #buttons[powered=true] as @p[team=players] run function go_dungeon:progress/player_ready
execute if score Progress DungeonEvents matches 5 if block 522 68 -3396 #buttons[powered=true] run scoreboard players set ApprovalButton DungeonTmp 1
