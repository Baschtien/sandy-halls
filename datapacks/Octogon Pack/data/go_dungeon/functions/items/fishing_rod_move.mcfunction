particle dust 1 0.14 0.16 1 ~ ~1 ~ 0.1 0.1 0.1 0 20

execute store result score motionX Math run data get entity @s Motion[0] 100
scoreboard players operation motionX Math *= 3 Constants
execute store result entity @s Motion[0] double 0.01 run scoreboard players get motionX Math

execute store result score motionY Math run data get entity @s Motion[1] 100
scoreboard players operation motionY Math *= 3 Constants
execute store result entity @s Motion[1] double 0.01 run scoreboard players get motionY Math

execute store result score motionZ Math run data get entity @s Motion[2] 100
scoreboard players operation motionZ Math *= 3 Constants
execute store result entity @s Motion[2] double 0.01 run scoreboard players get motionZ Math
