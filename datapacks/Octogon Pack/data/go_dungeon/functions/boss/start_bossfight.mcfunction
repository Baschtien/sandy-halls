scoreboard players set Progress DungeonEvents 4
schedule clear go_dungeon:boss/start_bossfight

kill @e[tag=dungeon_portal_boss,tag=!dungeon_entrance_boss]
tag @e[tag=dungeon_entrance_boss] add dungeon_portal_independent
function go_dungeon:progress/close_boss_portal

schedule function go_dungeon:boss/summon_boss 6s append
#Initiating bossbar filling sequence
bossbar set sand_king max 100
scoreboard players set BossbarTmp DungeonTmp 1

spawnpoint @a 878 154 -3352
