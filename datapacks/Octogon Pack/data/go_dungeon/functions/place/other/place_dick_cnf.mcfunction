#Placing the structure at the current position.
#It is expected to be executed by a marker.

execute if entity @s[tag=dungeon_north] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:other/dick",posX:-7,posY:0,posZ:-14,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:15,sizeY:12,sizeZ:15}
execute if entity @s[tag=dungeon_east] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:other/dick",posX:14,posY:0,posZ:-7,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:1b,sizeX:15,sizeY:12,sizeZ:15}
execute if entity @s[tag=dungeon_south] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:other/dick",posX:7,posY:0,posZ:14,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:1b,sizeX:15,sizeY:12,sizeZ:15}
execute if entity @s[tag=dungeon_west] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:other/dick",posX:-14,posY:0,posZ:7,powered:0b,rotation:"COUNTERCLOCKWISE_90",seed:0L,showair:0b,showboundingbox:1b,sizeX:15,sizeY:12,sizeZ:15}

setblock ~ ~ ~ redstone_block

tag @s[type=!player] add dungeon_other
