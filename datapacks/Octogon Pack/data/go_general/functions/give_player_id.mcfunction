function go_general:find_next_id
execute store result score @s IDs run scoreboard players get NextId IDs
