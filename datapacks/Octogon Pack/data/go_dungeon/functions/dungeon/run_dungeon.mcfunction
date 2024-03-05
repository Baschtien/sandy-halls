#Resets recursion and rolls a floor interval. (ex:min -2, max 2)
function go_dungeon:place/gen_prep

execute positioned -31 124 -76 run summon marker ~ ~ ~ {Rotation:[0.0f,0.0f],NoGravity:1b,Tags:[dungeon_portal,dungeon_entrance,dungeon_entrance_hub,dungeon_portal_independent]}
execute positioned -31 124 -60 positioned ~ 30 ~-42 run summon marker ~ ~ ~ {Rotation:[180.0f,0.0f],NoGravity:1b,Tags:[dungeon_portal,dungeon_entrance,dungeon_entrance_halls,dungeon_portal_independent]}
scoreboard players set @e[tag=dungeon_entrance,tag=!dungeon_entrance_linked] PortalId 100
tag @e[tag=dungeon_entrance,tag=!dungeon_entrance_linked] add dungeon_entrance_linked

execute positioned -15 124 -60 run summon marker ~ ~ ~ {Rotation:[90.0f,0.0f],NoGravity:1b,Tags:[dungeon_portal,dungeon_entrance,dungeon_entrance_hub,dungeon_portal_independent]}
execute positioned -31 124 -60 positioned ~42 30 ~ run summon marker ~ ~ ~ {Rotation:[-90.0f,0.0f],NoGravity:1b,Tags:[dungeon_portal,dungeon_entrance,dungeon_entrance_halls,dungeon_portal_independent]}
scoreboard players set @e[tag=dungeon_entrance,tag=!dungeon_entrance_linked] PortalId 101
tag @e[tag=dungeon_entrance,tag=!dungeon_entrance_linked] add dungeon_entrance_linked

execute positioned -31 124 -44 run summon marker ~ ~ ~ {Rotation:[180.0f,0.0f],NoGravity:1b,Tags:[dungeon_portal,dungeon_entrance,dungeon_entrance_hub,dungeon_portal_independent]}
execute positioned -31 124 -60 positioned ~ 30 ~42 run summon marker ~ ~ ~ {Rotation:[0.0f,0.0f],NoGravity:1b,Tags:[dungeon_portal,dungeon_entrance,dungeon_entrance_halls,dungeon_portal_independent]}
scoreboard players set @e[tag=dungeon_entrance,tag=!dungeon_entrance_linked] PortalId 102
tag @e[tag=dungeon_entrance,tag=!dungeon_entrance_linked] add dungeon_entrance_linked

execute positioned -47 124 -60 run summon marker ~ ~ ~ {Rotation:[-90.0f,0.0f],NoGravity:1b,Tags:[dungeon_portal,dungeon_entrance,dungeon_entrance_hub,dungeon_portal_independent]}
execute positioned -31 124 -60 positioned ~-42 30 ~ run summon marker ~ ~ ~ {Rotation:[90.0f,0.0f],NoGravity:1b,Tags:[dungeon_portal,dungeon_entrance,dungeon_entrance_halls,dungeon_portal_independent]}
scoreboard players set @e[tag=dungeon_entrance,tag=!dungeon_entrance_linked] PortalId 103
tag @e[tag=dungeon_entrance,tag=!dungeon_entrance_linked] add dungeon_entrance_linked

execute at @e[tag=dungeon_entrance_halls] run summon marker ^ ^1 ^-2 {Tags:[dungeon,dungeon_marker]}

#To limit collisions with the portal
tag @e[tag=dungeon_entrance_halls] add dungeon_marker
#For aestethics
execute as @e[tag=dungeon_entrance] at @s run fill ^1 ^ ^-1 ^-1 ^3 ^-1 sandstone

execute as @e[tag=dungeon_entrance_hub,scores={PortalId=100}] at @s run function go_dungeon:features/portal/place_frame_first
execute as @e[tag=dungeon_entrance_halls,scores={PortalId=100}] at @s run function go_dungeon:features/portal/place_frame

execute as @e[tag=dungeon_entrance_hub,scores={PortalId=101}] at @s run function go_dungeon:features/portal/place_frame_first
execute as @e[tag=dungeon_entrance_halls,scores={PortalId=101}] at @s run function go_dungeon:features/portal/place_frame

execute as @e[tag=dungeon_entrance_hub,scores={PortalId=102}] at @s run function go_dungeon:features/portal/place_frame_first
execute as @e[tag=dungeon_entrance_halls,scores={PortalId=102}] at @s run function go_dungeon:features/portal/place_frame

execute as @e[tag=dungeon_entrance_hub,scores={PortalId=103}] at @s run function go_dungeon:features/portal/place_frame_first
execute as @e[tag=dungeon_entrance_halls,scores={PortalId=103}] at @s run function go_dungeon:features/portal/place_frame

#Location marker for special rooms
summon marker -31 98 -47 {Tags:[dungeon,dungeon_special_room_marker]}

function go_dungeon:dungeon/build_dungeon
execute at @e[tag=dungeon_wall] if entity @e[tag=dungeon_next,distance=..0.1] run fill ~ ~ ~ ~ ~2 ~ air
execute as @e[tag=dungeon_wall] at @s if entity @e[tag=dungeon_next,distance=..0.1] run kill @s

execute if score Stage DungeonEvents matches 1 run function go_dungeon:place/special/place_after_1
execute if score Stage DungeonEvents matches 2 run function go_dungeon:place/special/place_after_2
execute if score Stage DungeonEvents matches 3 run function go_dungeon:place/special/place_after_3
#execute if score Stage DungeonEvents matches 4 run function go_dungeon:place/special/place_after_4

function go_dungeon:dungeon/populate_dungeon
function go_dungeon:dungeon/spawn_in_dungeon
function go_dungeon:merchants/summon_locked_merchant

