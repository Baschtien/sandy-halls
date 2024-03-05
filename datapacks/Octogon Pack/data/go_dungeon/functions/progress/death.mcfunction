scoreboard players set @s DungeonDeaths 0

#clear @s red_sand
execute store result score RedSand Math run clear @s red_sand 0
scoreboard players operation RedSand Math /= 2 Constants

function go_dungeon:progress/clear_half_red_sand
