execute positioned 878 154 -3335 run bossbar set sand_king players @a[distance=..50]
bossbar set sand_king visible true

#If boss is alive.
execute as @e[tag=dungeon_boss] at @s run function go_dungeon:boss/loop_alive

#If boss is dead, set bossbar value to 0.
execute if score BossbarTmp DungeonTmp matches 0 unless entity @e[tag=dungeon_boss,limit=1] run bossbar set sand_king value 0
execute if score BossbarTmp DungeonTmp matches 1..100 positioned 878 154 -3335 run function go_dungeon:boss/prepare_summon

execute unless score BossbarTmp DungeonTmp matches 1.. unless entity @e[tag=dungeon_boss] run function go_dungeon:boss/end_bossfight

#Attacks are here because the boss can die during an attack.
#Cactus attack
function go_dungeon:boss/cactus_spikes/cactus_loop_general

#Sand wave attack
function go_dungeon:boss/sand_wave/wave_loop_general

#Tornado attack
function go_dungeon:boss/sand_tornado/tornado_loop_general

#Minions attack
function go_dungeon:boss/minions/minions_loop_general
