execute if block ~ ~ ~ sand if block ~ ~1 ~ air run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:sand"},Time:1,DropItem:0b,Motion:[0.0,0.5,0.0]}
execute if block ~ ~1 ~ air run fill ~ ~ ~ ~ ~ ~ air replace sand
function go_dungeon:boss/sand_wave/damage
