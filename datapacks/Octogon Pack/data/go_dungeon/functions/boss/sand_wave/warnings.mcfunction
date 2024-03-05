execute if score BossAttackDir DungeonRandom matches 0 facing ~ ~ ~1 positioned ~ 158 ~ run function go_dungeon:boss/sand_wave/summon_warnings
execute if score BossAttackDir DungeonRandom matches 0 as @e[tag=boss_attack_wave_warning] run data merge entity @s {Rotation:[180.0f,0.0f]}
execute if score BossAttackDir DungeonRandom matches 1 facing ~-1 ~ ~ positioned ~ 158 ~ run function go_dungeon:boss/sand_wave/summon_warnings
execute if score BossAttackDir DungeonRandom matches 1 as @e[tag=boss_attack_wave_warning] run data merge entity @s {Rotation:[-90.0f,0.0f]}
execute if score BossAttackDir DungeonRandom matches 2 facing ~ ~ ~-1 positioned ~ 158 ~ run function go_dungeon:boss/sand_wave/summon_warnings
execute if score BossAttackDir DungeonRandom matches 2 as @e[tag=boss_attack_wave_warning] run data merge entity @s {Rotation:[0.0f,0.0f]}
execute if score BossAttackDir DungeonRandom matches 3 facing ~1 ~ ~ positioned ~ 158 ~ run function go_dungeon:boss/sand_wave/summon_warnings
execute if score BossAttackDir DungeonRandom matches 3 as @e[tag=boss_attack_wave_warning] run data merge entity @s {Rotation:[90.0f,0.0f]}

schedule function go_dungeon:boss/sand_wave/sound_warning 0.5s
schedule function go_dungeon:boss/sand_wave/sound_warning 2s append
