execute store result score ThisPortalId DungeonTmp run scoreboard players get @s PortalId
scoreboard players set ThisPortalHasLink DungeonTmp 0
execute as @e[tag=dungeon_portal,tag=dungeon_portal_linked,tag=!dungeon_portal_independent,distance=1..] if score @s PortalId = ThisPortalId DungeonTmp run scoreboard players set ThisPortalHasLink DungeonTmp 1

execute if score DebugEnabled DungeonSettings matches 1 unless score ThisPortalHasLink DungeonTmp matches 1 run say Link severed !

execute unless score ThisPortalHasLink DungeonTmp matches 1 run tag @s remove dungeon_portal_linked
execute unless score ThisPortalHasLink DungeonTmp matches 1 run scoreboard players reset @s PortalId
