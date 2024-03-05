execute as @a unless score @s IDs matches 0..999999 run function go_general:give_player_id

function go_general:timers
function go_dungeon:loop

execute as @e[type=arrow,tag=!checked] at @s on origin if entity @s[nbt={SelectedItem:{tag:{boost:1b}}}] run tag @e[type=arrow,distance=..0.01,limit=1,sort=nearest] add boosting
execute as @e[type=arrow,tag=!checked,tag=boosting] at @s run function go_general:boost_arrow

tag @e[type=arrow] add checked
#TODO remove
#scoreboard players set @a Carrot 0
scoreboard players set @a Snowball 0
