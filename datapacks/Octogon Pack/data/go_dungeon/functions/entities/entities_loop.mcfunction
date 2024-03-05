#Spawner mobs don't drop anything
execute as @e[tag=dungeon_creature_spawner,tag=!dungeon_cleared_table] run data modify entity @s DeathLootTable set value ""

execute as @e[tag=dungeon_creature_special,tag=!dungeon_cleared_table] run data modify entity @s DeathLootTable set value ""
#execute as @e[tag=dungeon_creature_special] at @s run tp @s ~ ~ ~ facing entity @p eyes
tag @e[tag=dungeon_creature_special,tag=!dungeon_cleared_table] add dungeon_cleared_table
tag @e[tag=dungeon_creature_spawner,tag=!dungeon_cleared_table] add dungeon_cleared_table

#Buffed creeper explosions
execute if score Stage DungeonEvents matches 1..4 run kill @e[type=area_effect_cloud]

execute as @e[type=item_frame,tag=!dungeon_removeme,tag=!dungeon_invincible] run data modify entity @s Invulnerable set value 1
tag @e[type=item_frame,tag=!dungeon_removeme,tag=!dungeon_invincible] add dungeon_invincible

team join spectators @e[tag=dungeon_creature,team=!spectators]

execute as @e[tag=dungeon_stand] run data merge entity @s {Invulnerable:1b}
