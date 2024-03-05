execute if score Stage DungeonEvents matches 1 at @e[type=marker,tag=dungeon_merchant_marker,tag=!dungeon_removeme] run function go_dungeon:merchants/recycler/summon_recycler_1
execute if score Stage DungeonEvents matches 2 at @e[type=marker,tag=dungeon_merchant_marker,tag=!dungeon_removeme] run function go_dungeon:merchants/farmer/summon_farmer

execute at @e[type=marker,tag=dungeon_merchant_marker,tag=!dungeon_removeme] run tag @e[type=villager,distance=..0.1] add dungeon_villager_locked
