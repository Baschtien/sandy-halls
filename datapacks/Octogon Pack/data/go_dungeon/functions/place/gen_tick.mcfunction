scoreboard players add RecLevel DungeonEvents 1
execute as @e[tag=dungeon,tag=!dungeon_placed,tag=!dungeon_removeme,tag=dungeon_next] at @s positioned ^ ^ ^1 run function go_dungeon:place/place_random_room
#To jumpstart the dungeon, so that the portal is in the wall.
execute as @e[tag=!dungeon_placed,tag=!dungeon_removeme,tag=dungeon_entrance_halls] at @s positioned ^ ^ ^1 run function go_dungeon:place/place_random_room
