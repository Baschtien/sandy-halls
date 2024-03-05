function go_dungeon:merchants/armorer/summon_armorer
function go_dungeon:merchants/special/summon_special
execute unless score RecyclerVillager DungeonEvents matches 0 run function go_dungeon:merchants/recycler/spawn_recyclers
execute unless score FarmerVillager DungeonEvents matches 0 run function go_dungeon:merchants/farmer/spawn_farmer

execute at @e[tag=dungeon_villager] run playsound block.beehive.exit neutral @a ~ ~ ~ 0.8
