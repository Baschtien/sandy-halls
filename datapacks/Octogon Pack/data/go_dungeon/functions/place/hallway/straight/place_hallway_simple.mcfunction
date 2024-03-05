#Placing the structure at the current position.
#It is expected to be executed by an armor stand.

#Rolling room variation score.
scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 9
function fafik77:rng/rand
execute store result score RoomVariation DungeonRandom run scoreboard players get number RNG_77

execute if entity @s[tag=dungeon_north] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"?",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:hallway/straight/hallway_simple_1",posX:-2,posY:0,posZ:-4,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:5,sizeY:6,sizeZ:5}
execute if entity @s[tag=dungeon_east] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"?",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:hallway/straight/hallway_simple_1",posX:4,posY:0,posZ:-2,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:1b,sizeX:5,sizeY:6,sizeZ:5}
execute if entity @s[tag=dungeon_south] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"?",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:hallway/straight/hallway_simple_1",posX:2,posY:0,posZ:4,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:1b,sizeX:5,sizeY:6,sizeZ:5}
execute if entity @s[tag=dungeon_west] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"?",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:hallway/straight/hallway_simple_1",posX:-4,posY:0,posZ:2,powered:0b,rotation:"COUNTERCLOCKWISE_90",seed:0L,showair:0b,showboundingbox:1b,sizeX:5,sizeY:6,sizeZ:5}

#Applying correct room variation.
execute if score RoomVariation DungeonRandom matches 2..3 run data modify block ~ ~-1 ~ name set value "go_dungeon:hallway/straight/hallway_simple_2"
execute if score RoomVariation DungeonRandom matches 4 run data modify block ~ ~-1 ~ name set value "go_dungeon:hallway/straight/hallway_simple_3"
execute if score RoomVariation DungeonRandom matches 5 run data modify block ~ ~-1 ~ name set value "go_dungeon:hallway/straight/hallway_simple_4"
execute if score RoomVariation DungeonRandom matches 6..7 run data modify block ~ ~-1 ~ name set value "go_dungeon:hallway/straight/hallway_simple_5"
execute if score RoomVariation DungeonRandom matches 8..9 run data modify block ~ ~-1 ~ name set value "go_dungeon:hallway/straight/hallway_simple_6"


setblock ~ ~ ~ redstone_block

tag @s[type=!player] add dungeon_hallway

#scoreboard players add @s RecLevel 1
#execute store result score @e[type=armor_stand,tag=dungeon,tag=!dungeon_placed,distance=1..7,limit=1,sort=nearest] RecLevel run scoreboard players get @s RecLevel
