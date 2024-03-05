#Down or up
scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 1
function fafik77:rng/rand
execute store result score UpOrDown DungeonRandom run scoreboard players get number RNG_77
#scoreboard players set UpOrDown DungeonRandom 1

#Getting floor
function go_dungeon:coordinates/get_floor
#Force setting up or down if on lowest/highest floors.
execute if score @s DungeonFloors = MinFloor DungeonFloors run scoreboard players set UpOrDown DungeonRandom 1
execute if score @s DungeonFloors = MaxFloor DungeonFloors run scoreboard players set UpOrDown DungeonRandom 0
#execute if score @s DungeonFloors = MinFloor DungeonFloors if score UpOrDown DungeonRandom matches 0 run say Tried to go lower haha
#execute if score @s DungeonFloors = MaxFloor DungeonFloors if score UpOrDown DungeonRandom matches 1 run say Tried to go higher haha

function go_dungeon:place/stairs/check_stairs

execute unless score @s DungeonCollisions matches 1 run function go_dungeon:place/stairs/place_stairs_up
