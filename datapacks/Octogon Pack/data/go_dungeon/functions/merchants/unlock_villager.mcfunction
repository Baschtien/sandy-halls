scoreboard players set UnlockedVillager DungeonEvents 1

execute if score Stage DungeonEvents matches 1 run function go_dungeon:merchants/recycler/unlock_recycler
execute if score Stage DungeonEvents matches 2 run function go_dungeon:merchants/farmer/unlock_farmer

execute at @e[type=marker,tag=dungeon_merchant_marker,tag=!dungeon_removeme] as @e[type=villager,distance=..0.1] run function go_dungeon:chat/merchants/unlock_merchant
schedule function go_dungeon:merchants/kill_locked_merchant 6s
