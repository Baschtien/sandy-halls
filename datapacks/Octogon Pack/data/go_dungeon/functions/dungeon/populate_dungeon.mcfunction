execute if score Stage DungeonEvents matches 1 as @e[tag=dungeon_chest_basic,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/1_basic"}
execute if score Stage DungeonEvents matches 1 as @e[tag=dungeon_chest_medium,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/1_medium"}
execute if score Stage DungeonEvents matches 1 as @e[tag=dungeon_chest_good,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/1_good"}

execute if score Stage DungeonEvents matches 2 as @e[tag=dungeon_chest_basic,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/2_basic"}
execute if score Stage DungeonEvents matches 2 as @e[tag=dungeon_chest_medium,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/2_medium"}
execute if score Stage DungeonEvents matches 2 as @e[tag=dungeon_chest_good,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/2_good"}
execute if score Stage DungeonEvents matches 2 as @e[tag=dungeon_chest_armoury,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/armoury_2"}

execute if score Stage DungeonEvents matches 3 as @e[tag=dungeon_chest_basic,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/3_basic"}
execute if score Stage DungeonEvents matches 3 as @e[tag=dungeon_chest_medium,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/3_medium"}
execute if score Stage DungeonEvents matches 3 as @e[tag=dungeon_chest_good,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/3_good"}
execute if score Stage DungeonEvents matches 3 as @e[tag=dungeon_chest_armoury,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/armoury_3"}

execute if score Stage DungeonEvents matches 4 as @e[tag=dungeon_chest_basic,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/4_basic"}
execute if score Stage DungeonEvents matches 4 as @e[tag=dungeon_chest_medium,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/4_medium"}
execute if score Stage DungeonEvents matches 4 as @e[tag=dungeon_chest_good,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/4_good"}
execute if score Stage DungeonEvents matches 4 as @e[tag=dungeon_chest_armoury,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/armoury_4"}

execute as @e[tag=dungeon_chest_library,tag=!dungeon_removeme] at @s run data merge block ~ ~ ~ {LootTable:"go_dungeon:chests/library"}

#Locks all chests & barrels, so that they can only be opened with a 'lock picker'.
#That is so that spectators can't open (and steal) items from chests.
execute at @e[tag=dungeon_chest,tag=!dungeon_removeme] run data modify block ~ ~ ~ Lock set value "Lock Picker"

