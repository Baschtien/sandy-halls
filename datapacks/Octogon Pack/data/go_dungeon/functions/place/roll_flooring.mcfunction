scoreboard players set min RNG_77 0
#scoreboard players set max RNG_77 5
execute store result score max RNG_77 run scoreboard players get MaxFloors DungeonSettings
scoreboard players operation max RNG_77 -= 1 Constants
function fafik77:rng/rand
execute store result score MaxFloor DungeonFloors run scoreboard players get number RNG_77

execute store result score MinFloor DungeonFloors run scoreboard players get MaxFloor DungeonFloors
scoreboard players operation MinFloor DungeonFloors -= MaxFloors DungeonSettings
scoreboard players operation MinFloor DungeonFloors += 1 Constants

#The base height is stored as HubHeight in DungeonFloors
