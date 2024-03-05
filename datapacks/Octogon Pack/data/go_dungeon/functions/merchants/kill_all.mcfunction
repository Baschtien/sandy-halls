execute as @e[type=villager,tag=dungeon_villager,tag=!dungeon_villager_special] at @s run tp @s ~ ~-10 ~
execute as @e[type=villager,tag=dungeon_villager,tag=!dungeon_villager_special] run data merge entity @s {Silent:1b}
kill @e[type=villager,tag=dungeon_villager,tag=!dungeon_villager_special]
