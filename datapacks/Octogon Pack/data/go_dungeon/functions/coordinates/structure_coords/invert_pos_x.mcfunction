execute store result score PosX DungeonTmp run data get block ~ ~ ~ posX
scoreboard players operation PosX DungeonTmp *= -1 Constants
execute store result block ~ ~ ~ posX int 1 run scoreboard players get PosX DungeonTmp
