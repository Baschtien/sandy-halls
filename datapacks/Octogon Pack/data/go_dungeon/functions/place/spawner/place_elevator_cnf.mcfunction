#Placing the structure at the current position.
#It is expected to be executed by an armor stand.

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 4
function fafik77:rng/rand
execute store result score RoomVariation DungeonRandom run scoreboard players get number RNG_77

#Basic data: Middle-Left.
execute if entity @s[tag=dungeon_north] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:spawner/elevator",posX:-2,posY:-6,posZ:-9,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:10,sizeY:18,sizeZ:10}
execute if entity @s[tag=dungeon_east] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:spawner/elevator",posX:9,posY:-6,posZ:-2,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:1b,sizeX:10,sizeY:18,sizeZ:10}
execute if entity @s[tag=dungeon_south] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:spawner/elevator",posX:2,posY:-6,posZ:9,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:1b,sizeX:10,sizeY:18,sizeZ:10}
execute if entity @s[tag=dungeon_west] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:spawner/elevator",posX:-9,posY:-6,posZ:2,powered:0b,rotation:"COUNTERCLOCKWISE_90",seed:0L,showair:0b,showboundingbox:1b,sizeX:10,sizeY:18,sizeZ:10}

#Changing the height.
execute if score UpDownMiddle DungeonRandom matches 0 run data merge block ~ ~-1 ~ {posY:-12b}
execute if score UpDownMiddle DungeonRandom matches 1 run data merge block ~ ~-1 ~ {posY:0b}

#Changing to right.
execute if score LeftRight DungeonRandom matches 1 if entity @s[tag=dungeon_north] run data merge block ~ ~-1 ~ {posX:-7b}
execute if score LeftRight DungeonRandom matches 1 if entity @s[tag=dungeon_east] run data merge block ~ ~-1 ~ {posZ:-7b}
execute if score LeftRight DungeonRandom matches 1 if entity @s[tag=dungeon_south] run data merge block ~ ~-1 ~ {posX:7b}
execute if score LeftRight DungeonRandom matches 1 if entity @s[tag=dungeon_west] run data merge block ~ ~-1 ~ {posZ:7b}

setblock ~ ~ ~ redstone_block

#Removing the 'next' of the entrance
kill @e[tag=dungeon_special,tag=!dungeon_removeme,distance=..2,limit=1,sort=nearest]

#Removing 7 possible exits out of 11
tag @e[tag=dungeon_special,tag=!dungeon_removeme,limit=7,sort=random] add dungeon_tmp

execute if score RoomVariation DungeonRandom matches 1.. run tag @e[tag=dungeon_special,tag=!dungeon_tmp,tag=!dungeon_removeme,limit=1,sort=random] add dungeon_tmp
execute if score RoomVariation DungeonRandom matches 4.. run tag @e[tag=dungeon_special,tag=!dungeon_tmp,tag=!dungeon_removeme,limit=1,sort=random] add dungeon_tmp
execute as @e[tag=dungeon_tmp] at @s run function go_dungeon:place/ending/place_wall
#kill @e[tag=dungeon_special,tag=dungeon_tmp,tag=!dungeon_removeme]
tag @e[tag=dungeon_special,tag=!dungeon_removeme] remove dungeon_special
tag @e[tag=dungeon_tmp] remove dungeon_tmp

tag @s[type=!player] add dungeon_spawner_room
