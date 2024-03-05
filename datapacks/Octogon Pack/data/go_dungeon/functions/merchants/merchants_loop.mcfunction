execute as @e[type=villager,tag=dungeon_villager] at @s run tp @s ~ ~ ~ facing entity @p[distance=..7]
execute as @e[type=blaze,tag=dungeon_red_king] at @s run tp @s ~ ~ ~ facing entity @p[distance=..10]
execute as @e[type=villager,tag=dungeon_villager_special] at @e[type=blaze,tag=dungeon_red_king,limit=1] run tp @s ^ ^ ^0.1 facing entity @p[distance=..10]

execute if score Progress DungeonEvents matches 2 if score UnlockedVillager DungeonEvents matches 0 if score Stage DungeonEvents matches 2 run scoreboard players set tmp DungeonTmp 1
execute if score Progress DungeonEvents matches 2 if score UnlockedVillager DungeonEvents matches 0 if score Stage DungeonEvents matches 2 at @e[tag=dungeon_spawner_merchant,tag=!dungeon_removeme] if block ~ ~ ~ spawner run scoreboard players set tmp DungeonTmp 0
execute if score Progress DungeonEvents matches 2 if score UnlockedVillager DungeonEvents matches 0 if score Stage DungeonEvents matches 2 if score tmp DungeonTmp matches 1 run function go_dungeon:merchants/unlock_villager

execute if score Progress DungeonEvents matches 2 if score UnlockedVillager DungeonEvents matches 0 if score Stage DungeonEvents matches 1 unless entity @e[tag=dungeon_creature_merchant] run function go_dungeon:merchants/unlock_villager
execute if score Progress DungeonEvents matches 2 if score UnlockedVillager DungeonEvents matches 0 if score Stage DungeonEvents matches 3 unless entity @e[tag=dungeon_creature_merchant] run function go_dungeon:merchants/unlock_villager
