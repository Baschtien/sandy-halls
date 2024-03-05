#Placing the structure at the current position.
#It is expected to be executed by an armor stand.

#scoreboard players set min RNG_77 0
#scoreboard players set max RNG_77 2
#function fafik77:rng/rand
#execute store result score RoomVariation DungeonRandom run scoreboard players get number RNG_77

execute if entity @s[tag=dungeon_north] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"?",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:other/pillars",posX:-2,posY:0,posZ:-9,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:10,sizeY:6,sizeZ:10}
execute if entity @s[tag=dungeon_east] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"?",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:other/pillars",posX:9,posY:0,posZ:-2,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:1b,sizeX:10,sizeY:6,sizeZ:10}
execute if entity @s[tag=dungeon_south] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"?",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:other/pillars",posX:2,posY:0,posZ:9,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:1b,sizeX:10,sizeY:6,sizeZ:10}
execute if entity @s[tag=dungeon_west] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"?",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:other/pillars",posX:-9,posY:0,posZ:2,powered:0b,rotation:"COUNTERCLOCKWISE_90",seed:0L,showair:0b,showboundingbox:1b,sizeX:10,sizeY:6,sizeZ:10}

setblock ~ ~ ~ redstone_block

tag @s[type=!player] add dungeon_other
