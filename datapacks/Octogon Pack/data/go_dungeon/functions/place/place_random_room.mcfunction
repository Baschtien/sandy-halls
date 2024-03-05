#Function to be called by the placing entity at its position.

#Setting the correect rotation tag
function go_dungeon:coordinates/tag_from_rotation

scoreboard players set PlacementTries DungeonEvents 0
scoreboard players set IsEnd DungeonEvents 0

#Rolling to know whether to end the path or not.
execute if score RecLevel DungeonEvents >= MinRecLevel DungeonSettings run scoreboard players set min RNG_77 0
execute if score RecLevel DungeonEvents >= MinRecLevel DungeonSettings run scoreboard players set max RNG_77 99
execute if score RecLevel DungeonEvents >= MinRecLevel DungeonSettings run function fafik77:rng/rand
execute if score RecLevel DungeonEvents >= MinRecLevel DungeonSettings store result score IsEnd DungeonRandom run scoreboard players get number RNG_77
#Force-setting IsEnd to 1 or 0; easier to interpret.
execute if score RecLevel DungeonEvents >= MinRecLevel DungeonSettings store success score IsEnd DungeonEvents if score IsEnd DungeonRandom matches 74..
#If at max depth, force the path to end.
execute if score RecLevel DungeonEvents = MaxRecLevel DungeonSettings run scoreboard players set IsEnd DungeonEvents 1

#Places a room to end the path. 
execute if score IsEnd DungeonEvents matches 1 run function go_dungeon:place/roll_ending

#Will roll and place a random room.
#Includes max recursion level room placing.
execute if score Stage DungeonEvents matches 1 if score IsEnd DungeonEvents matches 0 run function go_dungeon:place/rolls/roll_random_room
execute if score Stage DungeonEvents matches 2 if score IsEnd DungeonEvents matches 0 run function go_dungeon:place/rolls/roll_random_room_2
execute if score Stage DungeonEvents matches 3 if score IsEnd DungeonEvents matches 0 run function go_dungeon:place/rolls/roll_random_room_3
execute if score Stage DungeonEvents matches 4 if score IsEnd DungeonEvents matches 0 run function go_dungeon:place/rolls/roll_random_room_4

execute if score @s DungeonCollisions matches 1 positioned ^ ^ ^-1 run function go_dungeon:place/ending/place_wall
execute if score @s DungeonCollisions matches 1 unless score DebugEnabled DungeonSettings matches 0 run tellraw @p {"text":"WARNING! No room could be placed, so a wall has been built. !","color":"gold"}
execute if score @s DungeonCollisions matches 1 if score PlacementTries DungeonEvents >= MaxPlacementTries DungeonSettings unless score DebugEnabled DungeonSettings matches 0 run tellraw @p ["","(room was ",{"score":{"name":"Room","objective":"DungeonRandom"}},")"]


#The tag added to the executing entity is added in the individual placing functions.
tag @s add dungeon_placed
#execute as @e[type=armor_stand,tag=dungeon,tag=!dungeon_placed,tag=!dungeon_rotated,tag=dungeon_next] run function go_dungeon:coordinates/tag_from_rotation
