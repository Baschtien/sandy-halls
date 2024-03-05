clear @a ender_chest
scoreboard players set EnderChestActivated DungeonEvents 1
setblock -40 124 -58 ender_chest[facing=east]
data remove entity @e[type=villager,tag=dungeon_villager_special,limit=1] Offers.Recipes[1]

tellraw @a ["",{"text":"[","color":"gray"},{"text":"Features","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Unlocked ender chest","color":"light_purple"}]
function go_dungeon:sounds/unlock_feature
