summon fireball ^ ^ ^1 {Tags:["boss_attack_ball","dungeon_tmp"],Item:{id:"minecraft:sand",Count:1b},NoGravity:1b,Invulnerable:1b,ExplosionPower:2b}
summon marker ^ ^ ^0 {Tags:[tmp_aim]}
execute store result score posX Math run data get entity @e[tag=dungeon_tmp,limit=1] Pos[0] 100
execute store result score posY Math run data get entity @e[tag=dungeon_tmp,limit=1] Pos[1] 100
execute store result score posZ Math run data get entity @e[tag=dungeon_tmp,limit=1] Pos[2] 100

execute store result score posX2 Math run data get entity @e[tag=tmp_aim,limit=1] Pos[0] 100
execute store result score posY2 Math run data get entity @e[tag=tmp_aim,limit=1] Pos[1] 100
execute store result score posZ2 Math run data get entity @e[tag=tmp_aim,limit=1] Pos[2] 100

scoreboard players operation posX Math -= posX2 Math
scoreboard players operation posY Math -= posY2 Math
scoreboard players operation posZ Math -= posZ2 Math

scoreboard players operation posX Math *= BossBallLaunchPower DungeonSettings
scoreboard players operation posY Math *= BossBallLaunchPower DungeonSettings
scoreboard players operation posZ Math *= BossBallLaunchPower DungeonSettings

execute store result entity @e[tag=dungeon_tmp,limit=1] power[0] double 0.0001 run scoreboard players get posX Math
execute store result entity @e[tag=dungeon_tmp,limit=1] power[1] double 0.0001 run scoreboard players get posY Math
execute store result entity @e[tag=dungeon_tmp,limit=1] power[2] double 0.0001 run scoreboard players get posZ Math

tag @e[tag=dungeon_tmp] remove dungeon_tmp
kill @e[tag=tmp_aim]

playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 1 1
