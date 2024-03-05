execute store result score PosY DungeonTmp run data get block ~ ~ ~ posY
scoreboard players operation PosY DungeonTmp *= -1 Constants
execute store result block ~ ~ ~ posY int 1 run scoreboard players get PosY DungeonTmp
