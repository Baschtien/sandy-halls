execute at @e[tag=dungeon_end,tag=!dungeon_removeme] run function go_dungeon:entities/spawn_at_end

execute if score Stage DungeonEvents matches 1 at @e[tag=dungeon_mobs_basic,tag=!dungeon_removeme] run function go_dungeon:entities/spawn_1_basic
execute if score Stage DungeonEvents matches 1 at @e[tag=dungeon_mobs_medium,tag=!dungeon_removeme] run function go_dungeon:entities/spawn_1_medium

execute if score Stage DungeonEvents matches 1 at @e[tag=dungeon_spawner,tag=!dungeon_removeme] run function go_dungeon:entities/spawner_1

execute if score Stage DungeonEvents matches 1 as @e[tag=dungeon_creature,tag=!dungeon_removeme] run data merge entity @s {DeathLootTable:"go_dungeon:entities/creatures_1"}
#execute if score Stage DungeonEvents matches 1 as @e[tag=dungeon_mobs_medium,tag=!dungeon_removeme] run data merge entity @s {DeathLootTable:"go_dungeon:sand/sand_1"}


execute if score Stage DungeonEvents matches 2 at @e[tag=dungeon_mobs_basic,tag=!dungeon_removeme] run function go_dungeon:entities/spawn_2_basic
execute if score Stage DungeonEvents matches 2 at @e[tag=dungeon_mobs_medium,tag=!dungeon_removeme] run function go_dungeon:entities/spawn_2_medium

execute if score Stage DungeonEvents matches 2 at @e[tag=dungeon_spawner,tag=!dungeon_removeme] run function go_dungeon:entities/spawner_2

execute if score Stage DungeonEvents matches 2 as @e[tag=dungeon_creature,tag=!dungeon_removeme] run data merge entity @s {DeathLootTable:"go_dungeon:entities/creatures_2"}


execute if score Stage DungeonEvents matches 3 at @e[tag=dungeon_mobs_basic,tag=!dungeon_removeme] run function go_dungeon:entities/spawn_3_basic
execute if score Stage DungeonEvents matches 3 at @e[tag=dungeon_mobs_medium,tag=!dungeon_removeme] run function go_dungeon:entities/spawn_3_medium
execute if score Stage DungeonEvents matches 3 at @e[tag=dungeon_mobs_special,tag=!dungeon_removeme] run function go_dungeon:entities/spawn_3_special

execute if score Stage DungeonEvents matches 3 at @e[tag=dungeon_spawner,tag=!dungeon_removeme] run function go_dungeon:entities/spawner_3

execute if score Stage DungeonEvents matches 3 as @e[tag=dungeon_creature,tag=!dungeon_removeme] run data merge entity @s {DeathLootTable:"go_dungeon:entities/creatures_3"}


execute if score Stage DungeonEvents matches 4 at @e[tag=dungeon_mobs_basic,tag=!dungeon_removeme] run function go_dungeon:entities/spawn_4_basic
execute if score Stage DungeonEvents matches 4 at @e[tag=dungeon_mobs_medium,tag=!dungeon_removeme] run function go_dungeon:entities/spawn_4_medium

execute if score Stage DungeonEvents matches 4 at @e[tag=dungeon_spawner,tag=!dungeon_removeme] run function go_dungeon:entities/spawner_4

execute if score Stage DungeonEvents matches 4 as @e[tag=dungeon_creature,tag=!dungeon_removeme] run data merge entity @s {DeathLootTable:"go_dungeon:entities/creatures_4"}

#Setupping completion detection for merchant rooms.
execute at @e[tag=dungeon_mobs_merchant] run tag @e[tag=dungeon_creature,distance=..1] add dungeon_creature_merchant
