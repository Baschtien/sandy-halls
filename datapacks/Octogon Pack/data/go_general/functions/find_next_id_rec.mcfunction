scoreboard players add NextId IDs 1
scoreboard players set IsIDTaken DungeonTmp 0
execute as @e if score @s IDs = NextId IDs run scoreboard players set IsIDTaken DungeonTmp 1
execute if score IsIDTaken DungeonTmp matches 1 run function go_general:find_next_id_rec
