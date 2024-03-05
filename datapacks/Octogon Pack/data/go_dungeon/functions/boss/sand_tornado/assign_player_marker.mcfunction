summon marker ~ ~ ~ {Tags:[dungeon_tmp,boss_attack_tornado_player]}
execute store result score @e[tag=dungeon_tmp,limit=1] IDs run scoreboard players get @s IDs
execute as @e[tag=dungeon_tmp] at @s facing entity @e[tag=assigning_player_marker] eyes run tp @s ~ ~ ~ ~ 0
tag @e[tag=dungeon_tmp] remove dungeon_tmp
