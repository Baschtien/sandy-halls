scoreboard players remove @s DungeonTmp 1

execute store result score tmp DungeonTmp run scoreboard players get @s DungeonTmp
scoreboard players operation tmp DungeonTmp -= 1 Constants
scoreboard players operation tmp DungeonTmp %= 20 Constants

particle dust 0 1 1 1 ~ ~ ~ 0.1 0 0.1 0 2 normal

execute if score tmp DungeonTmp matches 0 run playsound block.note_block.hat neutral @a ~ ~ ~ 1 0.8

execute if score @s DungeonTmp matches 3 run playsound block.note_block.bit neutral @a ~ ~ ~ 1 0.5
execute if score @s DungeonTmp matches ..0 run playsound block.note_block.bit neutral @a ~ ~ ~ 1 0.75
execute if score @s DungeonTmp matches ..0 run kill @s
