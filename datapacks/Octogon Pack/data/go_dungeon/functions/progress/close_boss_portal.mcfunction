fill 876 163 -3354 880 184 -3350 air

execute at @e[tag=dungeon_entrance_boss] run setblock ~ ~-1 ~-3 minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:ruined_portal/ruined_portal_4",posX:0,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:1,sizeY:6,sizeZ:5}
execute at @e[tag=dungeon_entrance_boss] run setblock ~ ~ ~-3 redstone_block
execute at @e[tag=dungeon_entrance_boss] run fill ~ ~-1 ~-3 ~ ~ ~-3 sandstone
kill @e[type=marker,tag=dungeon_entrance_boss]
