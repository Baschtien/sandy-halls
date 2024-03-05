#Placing the structure at the current position.
#It is expected to be executed by an armor stand.

execute if entity @s[tag=dungeon_north] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:special/merchant_3",posX:-9,posY:0,posZ:-19,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:20,sizeY:12,sizeZ:20}
execute if entity @s[tag=dungeon_east] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:special/merchant_3",posX:19,posY:0,posZ:-9,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:1b,sizeX:20,sizeY:12,sizeZ:20}
execute if entity @s[tag=dungeon_south] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:special/merchant_3",posX:9,posY:0,posZ:19,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:1b,sizeX:20,sizeY:12,sizeZ:20}
execute if entity @s[tag=dungeon_west] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:special/merchant_3",posX:-19,posY:0,posZ:9,powered:0b,rotation:"COUNTERCLOCKWISE_90",seed:0L,showair:0b,showboundingbox:1b,sizeX:20,sizeY:12,sizeZ:20}

setblock ~ ~ ~ redstone_block

tag @s[type=!player] add dungeon_merchant
tag @s[type=!player] add dungeon_placed
