data modify block ~ ~ ~ posY set value -6

execute if entity @s[tag=dungeon_north] run data modify block ~ ~ ~ posZ set value 0
execute if entity @s[tag=dungeon_north] run data modify block ~ ~ ~ rotation set value "COUNTERCLOCKWISE_90"

execute if entity @s[tag=dungeon_east] run data modify block ~ ~ ~ posX set value 0
execute if entity @s[tag=dungeon_east] run data modify block ~ ~ ~ rotation set value "NONE"

execute if entity @s[tag=dungeon_south] run data modify block ~ ~ ~ posZ set value 0
execute if entity @s[tag=dungeon_south] run data modify block ~ ~ ~ rotation set value "CLOCKWISE_90"

execute if entity @s[tag=dungeon_west] run data modify block ~ ~ ~ posX set value 0
execute if entity @s[tag=dungeon_west] run data modify block ~ ~ ~ rotation set value "CLOCKWISE_180"
