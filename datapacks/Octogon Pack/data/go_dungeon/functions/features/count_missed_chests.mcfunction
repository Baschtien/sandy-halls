execute store result score ChestsMissedPreviously DungeonEvents run scoreboard players get ChestsMissed DungeonEvents
execute as @e[type=marker,tag=dungeon_chest,tag=!dungeon_removeme] at @s if data block ~ ~ ~ LootTable run scoreboard players add ChestsMissed DungeonEvents 1
