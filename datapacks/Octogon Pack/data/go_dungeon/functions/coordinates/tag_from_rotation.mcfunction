execute store result score @s Rotation run data get entity @s Rotation[0]
scoreboard players operation @s Rotation %= 360 Constants
#execute store result entity @s Rotation[0] float 1 run scoreboard players get @s Rotation

execute if score @s Rotation matches 180 run tag @s add dungeon_north
execute if score @s Rotation matches 270 run tag @s add dungeon_east
execute if score @s Rotation matches 0 run tag @s add dungeon_south
execute if score @s Rotation matches 90 run tag @s add dungeon_west

tag @s add dungeon_rotated