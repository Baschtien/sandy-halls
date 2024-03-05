execute unless score WaveEvents DungeonBoss matches 0 as @e[tag=boss_attack_wave] at @s run function go_dungeon:boss/sand_wave/wave_loop

execute as @e[tag=boss_attack_wave_line] at @s run function go_dungeon:boss/sand_wave/line_loop

execute as @e[tag=boss_attack_wave_warning] at @s run function go_dungeon:boss/sand_wave/warning_loop
