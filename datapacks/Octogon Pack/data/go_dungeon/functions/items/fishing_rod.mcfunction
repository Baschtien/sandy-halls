execute as @e[type=minecraft:fishing_bobber,nbt={OnGround:0b,Motion:[0.0d,0.0d,0.0d]}] at @s on origin if entity @s[nbt={SelectedItem:{tag:{boost:1b}}}] as @e[type=!minecraft:fishing_bobber,limit=1,sort=nearest] run tag @s add fished
execute as @e[tag=fished] at @s unless entity @e[type=minecraft:fishing_bobber,distance=..5,nbt={OnGround:0b,Motion:[0.0d,0.0d,0.0d]}] run tag @s add fishing_move

execute as @e[tag=fishing_move] at @s run function go_dungeon:items/fishing_rod_move

tag @e[tag=fishing_move] remove fished
tag @e[tag=fishing_move] remove fishing_move
