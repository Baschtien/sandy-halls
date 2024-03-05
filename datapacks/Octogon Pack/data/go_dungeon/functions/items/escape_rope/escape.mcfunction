#30s
#Carrot reset at the end of go_general loop
scoreboard players set @s Carrot 0

execute if score Progress DungeonEvents matches 2 at @s run function go_dungeon:items/escape_rope/effect
execute if score Progress DungeonEvents matches 2 run function go_dungeon:progress/tp_hub_individual
execute if score Progress DungeonEvents matches 2 at @s run function go_dungeon:items/escape_rope/effect
execute if score Progress DungeonEvents matches 2 run scoreboard players set @s EscapeRope 900

execute unless score Progress DungeonEvents matches 2 run function go_dungeon:items/escape_rope/escape_fail
