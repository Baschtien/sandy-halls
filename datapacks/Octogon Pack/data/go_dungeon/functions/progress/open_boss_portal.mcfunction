summon marker 878.5 163 -3351.5 {Tags:[dungeon,dungeon_portal,dungeon_portal_horizontal,dungeon_portal_boss]}
setblock 875 163 -3355 minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:special/boss_portal",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:5,sizeY:22,sizeZ:5}
setblock 875 164 -3355 redstone_block
fill 875 163 -3355 875 164 -3355 air

execute positioned -47 124 -60 run summon marker ~ ~ ~ {Rotation:[-90.0f,0.0f],NoGravity:1b,Tags:[dungeon,dungeon_portal,dungeon_entrance_boss,dungeon_portal_boss]}
execute positioned -47 124 -60 as @e[type=marker,limit=1,sort=nearest,distance=..0.5] at @s run fill ^-2 ^-1 ^ ^2 ^4 ^ cut_sandstone
execute positioned -47 124 -60 as @e[type=marker,limit=1,sort=nearest,distance=..0.5] at @s run fill ^-1 ^ ^ ^1 ^3 ^ orange_stained_glass_pane

