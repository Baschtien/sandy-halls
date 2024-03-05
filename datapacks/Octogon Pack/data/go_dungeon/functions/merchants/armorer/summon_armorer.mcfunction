summon villager -41 123 -70 {Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,CanPickUpLoot:0b,Xp:0,Rotation:[-45F,0F],Tags:["dungeon_villager","dungeon_villager_armorer"],CustomName:'{"text":"Attraction","color":"dark_green","italic":false}',Attributes:[{Name:generic.movement_speed,Base:0}],VillagerData:{level:99,profession:"minecraft:armorer",type:"minecraft:snow"}}
execute if score Stage DungeonEvents matches 2 as @e[tag=dungeon_villager_armorer] run function go_dungeon:merchants/armorer/armorer_set_stage_2
execute if score Stage DungeonEvents matches 3 as @e[tag=dungeon_villager_armorer] run function go_dungeon:merchants/armorer/armorer_set_stage_3
execute if score Stage DungeonEvents matches 4 as @e[tag=dungeon_villager_armorer] run function go_dungeon:merchants/armorer/armorer_set_stage_4
execute if score Stage DungeonEvents matches 5 as @e[tag=dungeon_villager_armorer] run function go_dungeon:merchants/armorer/armorer_set_stage_5
