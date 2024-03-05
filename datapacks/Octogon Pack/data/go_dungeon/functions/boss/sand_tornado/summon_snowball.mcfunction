scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 7
function fafik77:rng/rand
execute store result score BossAttackDir DungeonRandom run scoreboard players get number RNG_77

execute if score BossAttackDir DungeonRandom matches 0 run summon snowball ^ ^ ^ {Motion:[0.0d,0.2d,-1d],Tags:[boss_attack_tornado_snowball,dungeon_tmp],Item:{id:"minecraft:birch_button",Count:1b}}
execute if score BossAttackDir DungeonRandom matches 1 run summon snowball ^ ^ ^ {Motion:[0.66d,0.2d,-0.66d],Tags:[boss_attack_tornado_snowball,dungeon_tmp],Item:{id:"minecraft:birch_button",Count:1b}}
execute if score BossAttackDir DungeonRandom matches 2 run summon snowball ^ ^ ^ {Motion:[1d,0.2d,0d],Tags:[boss_attack_tornado_snowball,dungeon_tmp],Item:{id:"minecraft:birch_button",Count:1b}}
execute if score BossAttackDir DungeonRandom matches 3 run summon snowball ^ ^ ^ {Motion:[0.66d,0.2d,0.66d],Tags:[boss_attack_tornado_snowball,dungeon_tmp],Item:{id:"minecraft:birch_button",Count:1b}}
execute if score BossAttackDir DungeonRandom matches 4 run summon snowball ^ ^ ^ {Motion:[0.0d,0.2d,1d],Tags:[boss_attack_tornado_snowball,dungeon_tmp],Item:{id:"minecraft:birch_button",Count:1b}}
execute if score BossAttackDir DungeonRandom matches 5 run summon snowball ^ ^ ^ {Motion:[-0.66d,0.2d,0.66d],Tags:[boss_attack_tornado_snowball,dungeon_tmp],Item:{id:"minecraft:birch_button",Count:1b}}
execute if score BossAttackDir DungeonRandom matches 6 run summon snowball ^ ^ ^ {Motion:[-1d,0.2d,0d],Tags:[boss_attack_tornado_snowball,dungeon_tmp],Item:{id:"minecraft:birch_button",Count:1b}}
execute if score BossAttackDir DungeonRandom matches 7 run summon snowball ^ ^ ^ {Motion:[-0.66d,0.2d,-0.66d],Tags:[boss_attack_tornado_snowball,dungeon_tmp],Item:{id:"minecraft:birch_button",Count:1b}}
#summon snowball ^ ^ ^1 {Tags:[boss_attack_tornado_snowball,dungeon_tmp],Item:{id:"minecraft:birch_button",Count:1b}}
#summon marker ^ ^ ^0 {Tags:[tmp_aim]}
#execute store result score posX Math run data get entity @e[tag=dungeon_tmp,limit=1] Pos[0] 100
#execute store result score posY Math run data get entity @e[tag=dungeon_tmp,limit=1] Pos[1] 100
#execute store result score posZ Math run data get entity @e[tag=dungeon_tmp,limit=1] Pos[2] 100

#execute store result score posX2 Math run data get entity @e[tag=tmp_aim,limit=1] Pos[0] 100
#execute store result score posY2 Math run data get entity @e[tag=tmp_aim,limit=1] Pos[1] 100
#execute store result score posZ2 Math run data get entity @e[tag=tmp_aim,limit=1] Pos[2] 100

#scoreboard players operation posX Math -= posX2 Math
#scoreboard players operation posY Math -= posY2 Math
#scoreboard players operation posZ Math -= posZ2 Math

#scoreboard players operation posX Math *= BossTornadoLaunchPower DungeonSettings
#scoreboard players operation posY Math *= BossTornadoLaunchPower DungeonSettings
#scoreboard players operation posZ Math *= BossTornadoLaunchPower DungeonSettings

#execute store result entity @e[tag=dungeon_tmp,limit=1] Motion[0] double 0.001 run scoreboard players get posX Math
#execute store result entity @e[tag=dungeon_tmp,limit=1] Motion[1] double 0.001 run scoreboard players get posY Math
#execute store result entity @e[tag=dungeon_tmp,limit=1] Motion[2] double 0.001 run scoreboard players get posZ Math

ride @p mount @e[tag=dungeon_tmp,limit=1]

tag @e[tag=dungeon_tmp] remove dungeon_tmp
kill @e[tag=tmp_aim]
