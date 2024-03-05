execute at @a if score @p IDs = @s IDs run tag @p add player_target
data modify entity @s Pos[1] set from entity @a[tag=player_target,limit=1] Pos[1] 
tp @a[tag=player_target,limit=1] ^ ^ ^2
execute at @s run tp @s ~ ~ ~ ~15 ~

tag @a[tag=player_target] remove player_target
