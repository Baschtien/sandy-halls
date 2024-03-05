#Collisions are reset.
#Better than doing it at each collision check.
scoreboard players set @s DungeonCollisions 0

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 19
function fafik77:rng/rand
execute store result score Room DungeonRandom run scoreboard players get number RNG_77

execute if score Room DungeonRandom matches 0..2 run function go_dungeon:place/hallway/corner/place_corner
execute if score Room DungeonRandom matches 3..4 run function go_dungeon:place/hallway/intersection/place_intersection
execute if score Room DungeonRandom matches 5..7 run function go_dungeon:place/stairs/place_stairs
execute if score Room DungeonRandom matches 8..12 run function go_dungeon:place/hallway/straight/place_hallway
execute if score Room DungeonRandom matches 13..19 run function go_dungeon:place/rolls/roll_other_room_3
#execute if score Room DungeonRandom matches 8..13 run function go_dungeon:place/hallway/end/place_ending

#execute if score RecLevel DungeonEvents >= MaxRecLevel DungeonSettings run function go_dungeon:place/hallway/end/place_ending

#function go_dungeon:check/check_5_5
#tag @e[tag=dungeon_marker,tag=!dungeon_marker_spawned] add dungeon_marker_spawned
#execute if score @s DungeonCollisions matches 1.. run tellraw @p {"text":"WARNING! Collision happened !","color":"dark_red"}
scoreboard players add PlacementTries DungeonEvents 1
execute if score @s DungeonCollisions matches 0 if score PlacementTries DungeonEvents matches 2.. unless score DebugEnabled DungeonSettings matches 0 run tellraw @p {"text":"Managed to place another room.","color":"green"}
execute if score @s DungeonCollisions matches 1 if score PlacementTries DungeonEvents < MaxPlacementTries DungeonSettings unless score DebugEnabled DungeonSettings matches 0 run tellraw @p {"text":"Rerolling...","color":"dark_green"}
execute if score @s DungeonCollisions matches 1 unless score PlacementTries DungeonEvents >= MaxPlacementTries DungeonSettings run function go_dungeon:place/rolls/roll_random_room_3
