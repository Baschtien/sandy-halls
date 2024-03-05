execute as @e[tag=dungeon_marker,tag=!dungeon_removeme] at @s run fill ~-2 ~-2 ~-2 ~2 ~3 ~2 stone
execute as @e[tag=dungeon_marker,tag=!dungeon_removeme] at @s run kill @e[type=item,distance=..10]

execute at @e[tag=dungeon_entrance_hub,scores={PortalId=100}] run setblock ~-3 ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:ruined_portal/ruined_portal_1",posX:1,posY:0,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:5,sizeY:6,sizeZ:1}
execute at @e[tag=dungeon_entrance_hub,scores={PortalId=100}] run setblock ~-3 ~ ~ redstone_block
execute at @e[tag=dungeon_entrance_hub,scores={PortalId=100}] run fill ~-3 ~-1 ~ ~-3 ~ ~ sandstone
execute at @e[tag=dungeon_entrance_hub,scores={PortalId=101}] run setblock ~ ~-1 ~-3 minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:ruined_portal/ruined_portal_2",posX:0,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:1,sizeY:6,sizeZ:5}
execute at @e[tag=dungeon_entrance_hub,scores={PortalId=101}] run setblock ~ ~ ~-3 redstone_block
execute at @e[tag=dungeon_entrance_hub,scores={PortalId=101}] run fill ~ ~-1 ~-3 ~ ~ ~-3 sandstone
execute at @e[tag=dungeon_entrance_hub,scores={PortalId=102}] run setblock ~-3 ~-1 ~ minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:ruined_portal/ruined_portal_3",posX:1,posY:0,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:5,sizeY:6,sizeZ:1}
execute at @e[tag=dungeon_entrance_hub,scores={PortalId=102}] run setblock ~-3 ~ ~ redstone_block
execute at @e[tag=dungeon_entrance_hub,scores={PortalId=102}] run fill ~-3 ~-1 ~ ~-3 ~ ~ sandstone
execute at @e[tag=dungeon_entrance_hub,scores={PortalId=103}] run setblock ~ ~-1 ~-3 minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:ruined_portal/ruined_portal_4",posX:0,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:1,sizeY:6,sizeZ:5}
execute at @e[tag=dungeon_entrance_hub,scores={PortalId=103}] run setblock ~ ~ ~-3 redstone_block
execute at @e[tag=dungeon_entrance_hub,scores={PortalId=103}] run fill ~ ~-1 ~-3 ~ ~ ~-3 sandstone

execute at @e[tag=dungeon_entrance_boss] run setblock ~ ~-1 ~-3 minecraft:structure_block[mode=load]{author:"GreenOctogon",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"go_dungeon:ruined_portal/ruined_portal_4",posX:0,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:1,sizeY:6,sizeZ:5}
execute at @e[tag=dungeon_entrance_boss] run setblock ~ ~ ~-3 redstone_block
execute at @e[tag=dungeon_entrance_boss] run fill ~ ~-1 ~-3 ~ ~ ~-3 sandstone

execute as @e[tag=dungeon_creature] run data modify entity @s DeathLootTable set value ""
kill @e[type=item_frame,tag=!dungeon_removeme]
function go_dungeon:merchants/kill_locked_merchant
kill @e[tag=dungeon,tag=!dungeon_removeme]
kill @e[tag=dungeon_entrance]

function go_dungeon:merchants/reset_unlock_detection
