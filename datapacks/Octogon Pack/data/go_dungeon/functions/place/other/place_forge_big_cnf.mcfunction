#Placing the structure at the current position.
#It is expected to be executed by an armor stand.

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 4
function fafik77:rng/rand
execute store result score RoomVariation DungeonRandom run scoreboard players get number RNG_77

execute if entity @s[tag=dungeon_north] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:other/forge_big",posX:-7,posY:-6,posZ:-19,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:15,sizeY:12,sizeZ:20}
execute if entity @s[tag=dungeon_east] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:other/forge_big",posX:19,posY:-6,posZ:-7,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:1b,sizeX:15,sizeY:12,sizeZ:20}
execute if entity @s[tag=dungeon_south] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:other/forge_big",posX:7,posY:-6,posZ:19,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:1b,sizeX:15,sizeY:12,sizeZ:20}
execute if entity @s[tag=dungeon_west] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:other/forge_big",posX:-19,posY:-6,posZ:7,powered:0b,rotation:"COUNTERCLOCKWISE_90",seed:0L,showair:0b,showboundingbox:1b,sizeX:15,sizeY:12,sizeZ:20}

setblock ~ ~ ~ redstone_block

tag @e[tag=dungeon_special,tag=!dungeon_removeme,limit=1,sort=random] add dungeon_tmp

execute if score RoomVariation DungeonRandom matches 1.. run tag @e[tag=dungeon_special,tag=!dungeon_tmp,tag=!dungeon_removeme,limit=1,sort=random] add dungeon_tmp
#execute if score RoomVariation DungeonRandom matches 5.. run tag @e[tag=dungeon_special,tag=!dungeon_tmp,tag=!dungeon_removeme,limit=1,sort=random] add dungeon_tmp
execute as @e[tag=dungeon_tmp] at @s run function go_dungeon:place/ending/place_wall
#kill @e[tag=dungeon_special,tag=dungeon_tmp,tag=!dungeon_removeme]
tag @e[tag=dungeon_special,tag=!dungeon_removeme] remove dungeon_special
tag @e[tag=dungeon_tmp] remove dungeon_tmp

tag @s[type=!player] add dungeon_other
