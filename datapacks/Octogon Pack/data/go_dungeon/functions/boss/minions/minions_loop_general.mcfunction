execute if score MinionsEvents DungeonBoss matches 1.. run scoreboard players remove MinionsEvents DungeonBoss 1

execute if score MinionsEvents DungeonBoss matches 1.. at @e[tag=dungeon_boss] run particle falling_dust sand ~ ~1 ~ 2 1.25 2 0 75 normal
execute if score MinionsEvents DungeonBoss matches 1 at @e[tag=dungeon_boss] run function go_dungeon:boss/minions/invoke_minions
