scoreboard players add @s DungeonTmp 1

execute if score @s DungeonTmp matches 1 positioned ^2 ^-1 ^ run function go_dungeon:boss/sand_wave/summon_block_1
execute if score @s DungeonTmp matches 1 positioned ^1 ^-1 ^ run function go_dungeon:boss/sand_wave/summon_block_1
execute if score @s DungeonTmp matches 1 positioned ^ ^-1 ^ run function go_dungeon:boss/sand_wave/summon_block_1
execute if score @s DungeonTmp matches 1 positioned ^-1 ^-1 ^ run function go_dungeon:boss/sand_wave/summon_block_1
execute if score @s DungeonTmp matches 1 positioned ^-2 ^-1 ^ run function go_dungeon:boss/sand_wave/summon_block_1

execute if score @s DungeonTmp matches 2 positioned ^3 ^-1 ^ run function go_dungeon:boss/sand_wave/summon_block_2
execute if score @s DungeonTmp matches 2 positioned ^4 ^-1 ^ run function go_dungeon:boss/sand_wave/summon_block_2
execute if score @s DungeonTmp matches 2 positioned ^-3 ^-1 ^ run function go_dungeon:boss/sand_wave/summon_block_2
execute if score @s DungeonTmp matches 2 positioned ^-4 ^-1 ^ run function go_dungeon:boss/sand_wave/summon_block_2

execute if score @s DungeonTmp matches 3 positioned ^5 ^-1 ^ run function go_dungeon:boss/sand_wave/summon_block_3
execute if score @s DungeonTmp matches 3 positioned ^6 ^-1 ^ run function go_dungeon:boss/sand_wave/summon_block_3
execute if score @s DungeonTmp matches 3 positioned ^-5 ^-1 ^ run function go_dungeon:boss/sand_wave/summon_block_3
execute if score @s DungeonTmp matches 3 positioned ^-6 ^-1 ^ run function go_dungeon:boss/sand_wave/summon_block_3

execute if score @s DungeonTmp matches 4 positioned ^7 ^-1 ^ run function go_dungeon:boss/sand_wave/summon_block_4
execute if score @s DungeonTmp matches 4 positioned ^-7 ^-1 ^ run function go_dungeon:boss/sand_wave/summon_block_4

execute if score @s DungeonTmp matches 4.. run kill @s
