execute as @e[tag=dungeon_effect_rotate] run scoreboard players add @s DungeonEffects 15
execute as @e[tag=dungeon_effect_rotate] run scoreboard players operation @s DungeonEffects %= 360 Constants
execute as @e[tag=dungeon_effect_rotate] store result entity @s Rotation[0] float 1 run scoreboard players get @s DungeonEffects

execute if score Progress DungeonEvents matches 0..5 as @e[tag=dungeon_effect_rotate,tag=dungeon_effect_rotate_approval] at @s run particle dust 0.21 0.93 0.22 1 ^ ^1 ^1 0 0 0 0 2 normal @a[scores={PlayersReady=1}]
execute if score Progress DungeonEvents matches 0..5 as @e[tag=dungeon_effect_rotate,tag=dungeon_effect_rotate_approval] at @s run particle dust 0.87 0.15 0.19 1 ^ ^1 ^1 0 0 0 0 2 normal @a[scores={PlayersReady=0}]

execute if score Progress DungeonEvents matches 0 as @e[tag=dungeon_effect_rotate,tag=dungeon_effect_rotate_team_1] at @s run particle dust 1 0.93 0.1 1 ^ ^1 ^1 0 0 0 0 2 normal @a[team=players]
execute if score Progress DungeonEvents matches 0 as @e[tag=dungeon_effect_rotate,tag=dungeon_effect_rotate_team_2] at @s run particle dust 0 0.55 0.55 1 ^ ^1 ^1 0 0 0 0 2 normal @a[team=spectators]
