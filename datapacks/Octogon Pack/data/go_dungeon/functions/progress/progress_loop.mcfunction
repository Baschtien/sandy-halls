#For all new players that don't have a score yet.
execute as @a[team=players] unless score @s PlayersReady matches -999999..999999 run scoreboard players set @s PlayersReady 0
#Gamemode restriction.
gamemode adventure @a[tag=!admin]

#execute if score Progress DungeonEvents matches 0 run say 0
#execute if score Progress DungeonEvents matches 1 run say 1
#execute if score Progress DungeonEvents matches 2 run say 2
#execute if score Progress DungeonEvents matches 3 run say 3

#Getting and processing button inputs.
function go_dungeon:progress/check_buttons

execute if score Progress DungeonEvents matches 1..3 if entity @a[team=players] run function go_dungeon:check/player_in_halls

execute if score Progress DungeonEvents matches 5 unless entity @a[scores={PlayersReady=0}] if entity @a run function go_dungeon:progress/reset_game

execute if score Progress DungeonEvents matches 4 run function go_dungeon:boss/boss_loop

#If all players crossed the portal to the arena, start the bossfight.
execute if score Progress DungeonEvents matches 3 unless entity @a[tag=!dungeon_in_halls] run schedule function go_dungeon:boss/start_bossfight 4s append
#execute if score Progress DungeonEvents matches 3 unless entity @a[tag=!dungeon_in_halls] run function go_dungeon:boss/start_bossfight

#If the halls are open and all players are ready, close the halls.
execute if score Progress DungeonEvents matches 2 if entity @a[team=players] unless entity @a[team=players,scores={PlayersReady=0}] unless entity @a[team=players,tag=dungeon_in_halls] run function go_dungeon:progress/close_halls

#If the halls are closed and all players are ready, open halls.
execute if score Progress DungeonEvents matches 1 if entity @a[team=players] unless entity @a[team=players,scores={PlayersReady=0}] run function go_dungeon:progress/open_halls

#If the game hasn't started and all players are ready, start it.
execute if score Progress DungeonEvents matches 0 if entity @a unless entity @a[scores={PlayersReady=0}] if entity @a[team=players] run function go_dungeon:progress/start_game
execute if score Progress DungeonEvents matches 0 if entity @a unless entity @a[scores={PlayersReady=0}] unless entity @a[team=!players,team=!spectators] if score OnlySpectatorsAllowed DungeonSettings matches 1 run function go_dungeon:progress/start_game
execute if score Progress DungeonEvents matches 0 if entity @a unless entity @a[scores={PlayersReady=0}] if entity @a[team=!players,team=!spectators] run function go_dungeon:progress/player_missing_team
execute if score Progress DungeonEvents matches 0 if score OnlySpectatorsAllowed DungeonSettings matches 0 if entity @a unless entity @a[scores={PlayersReady=0}] unless entity @a[team=players] run function go_dungeon:progress/no_explorer

#The Progress player in the scoreboard DungeonEvents indicates the state of the game.
#0 = In the main 'menu'
#1 = Idle in the hub (trading,..)
#2 = Halls are open
#3 = readying for bossfight
#4 = bossfight in progress
#5 = in the end

execute unless score Progress DungeonEvents matches 0 as @a[team=spectators] run function go_dungeon:progress/spectators_loop
execute if score Progress DungeonEvents matches 0 run effect give @a saturation 1 0 true
execute if score Progress DungeonEvents matches 5 run effect give @a saturation 1 0 true

function go_dungeon:merchants/merchants_loop
execute as @a[scores={DungeonDeaths=1..}] run function go_dungeon:progress/death
