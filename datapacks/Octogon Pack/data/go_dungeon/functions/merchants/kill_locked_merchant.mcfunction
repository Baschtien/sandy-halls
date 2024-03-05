#execute at @e[type=marker,tag=dungeon_merchant_marker] as @e[type=villager,distance=0.1] run 
execute at @e[type=marker,tag=dungeon_merchant_marker,tag=!dungeon_removeme] run tag @e[type=villager,distance=..0.1] add dungeon_tmp
#execute at @e[type=marker,tag=dungeon_merchant_marker,tag=!dungeon_removeme] run particle poof ~ ~0.8 ~ 0.1 0.1 0.1 0.2 25 normal
#execute at @e[type=marker,tag=dungeon_merchant_marker,tag=!dungeon_removeme] run tp @e[type=villager,distance=..0.1] ~ ~-10 ~
#execute at @e[type=marker,tag=dungeon_merchant_marker,tag=!dungeon_removeme] positioned ~ ~-10 ~ run kill @e[type=villager,distance=..0.1]

data merge entity @e[type=villager,tag=dungeon_tmp,limit=1] {Silent:1b}
execute at @e[type=villager,tag=dungeon_tmp] run particle poof ~ ~0.8 ~ 0.1 0.1 0.1 0.2 25 normal
execute at @e[type=villager,tag=dungeon_tmp] run playsound entity.item.pickup neutral @a ~ ~ ~ 1
execute as @e[type=villager,tag=dungeon_tmp] at @s run tp @s ~ ~-10 ~
kill @e[type=villager,tag=dungeon_tmp]
