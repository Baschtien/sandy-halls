scoreboard players set @a PlayersReady 0
team leave @a
clear @a[tag=!admin]
scoreboard players set Progress DungeonEvents 0
function go_dungeon:dungeon/reset_dungeon
function go_dungeon:merchants/reset_unlocks
function go_dungeon:merchants/kill_all
function go_dungeon:dungeon/set_stage_1
function go_dungeon:progress/tp_main_menu
function go_dungeon:items/ender_chest/reset_ender_chest

bossbar set sand_king players
xp set @a 0

scoreboard players set ChestsMissed DungeonEvents 0
