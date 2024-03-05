execute store result score PosZ DungeonTmp run data get block ~ ~ ~ posZ
scoreboard players operation PosZ DungeonTmp *= -1 Constants
execute store result block ~ ~ ~ posZ int 1 run scoreboard players get PosZ DungeonTmp
