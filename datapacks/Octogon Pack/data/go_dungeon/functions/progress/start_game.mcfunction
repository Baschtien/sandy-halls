scoreboard players set @a PlayersReady 0
scoreboard players set Progress DungeonEvents 1
function go_dungeon:progress/tp_hub

execute as @a[team=players] run function go_dungeon:progress/give_kit
effect give @a[team=players] hunger 1 9 true

#Initializing the sign, because if not it will not have changed since the last game.
data merge block -39 126 -57 {Color:"orange",GlowingText:1b,Text2:'{"text":"Open"}',Text3:'{"text":"halls"}'}

xp set @a[team=players] 100 levels

execute as @e[type=blaze,tag=dungeon_red_king] at @s run tp @s ~ ~-10 ~
kill @e[type=blaze,tag=dungeon_red_king]
function go_dungeon:entities/special/summon_red_king
function go_dungeon:merchants/special/summon_special

execute at @e[type=marker,tag=dungeon_red_sand] run setblock ~ ~ ~ red_sand

schedule function go_dungeon:chat/dialogue/welcome_1 1s
