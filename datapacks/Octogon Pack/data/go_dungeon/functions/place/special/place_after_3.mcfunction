#Function that's executed after having generated the second level.
function go_dungeon:place/special/place_special_room_portal
execute as @e[tag=dungeon_special_room,tag=!dungeon_placed,tag=!dungeon_removeme] at @s positioned ^ ^ ^1 run function go_dungeon:place/special/place_merchant_3
