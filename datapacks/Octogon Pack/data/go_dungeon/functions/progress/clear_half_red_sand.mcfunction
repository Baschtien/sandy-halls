scoreboard players remove RedSand Math 1
clear @s red_sand 1

execute if score RedSand Math matches 1.. run function go_dungeon:progress/clear_half_red_sand
