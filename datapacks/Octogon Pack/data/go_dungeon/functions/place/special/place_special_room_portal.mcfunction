tag @e[tag=dungeon_wall,tag=!dungeon_special_portal,tag=!dungeon_removeme,limit=1,sort=random] add dungeon_tmp
execute unless entity @e[tag=dungeon_tmp] run tag @e[tag=dungeon_end,tag=!dungeon_special_portal,tag=!dungeon_removeme,limit=1,sort=random] add dungeon_tmp
execute as @e[tag=dungeon_tmp] at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=dungeon_tmp] at @s run function go_dungeon:features/portal/place_portal_first
tag @e[tag=dungeon_tmp] add dungeon_special_portal

execute at @e[tag=dungeon_special_room_marker] run summon marker ~ ~ ~ {Tags:[dungeon,dungeon_portal,dungeon_special_room],NoGravity:1b,Rotation:[180.0f,0.0f]}
execute as @e[tag=dungeon_special_room] at @s run function go_dungeon:features/portal/place_portal
execute as @e[tag=dungeon_special_room,tag=!dungeon_removeme] at @s run function go_dungeon:coordinates/tag_from_rotation

tag @e[tag=dungeon_tmp] remove dungeon_tmp

execute as @e[tag=dungeon_special_room_marker] at @s run tp @s ~ ~-12 ~

