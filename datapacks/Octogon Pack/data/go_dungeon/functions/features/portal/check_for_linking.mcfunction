#Automatic linking of 2 new portals.
execute store result score AlonePortalsNum DungeonTmp if entity @e[tag=dungeon_portal,tag=!dungeon_portal_linked,tag=!dungeon_portal_independent]
execute if score AlonePortalsNum DungeonTmp matches 2.. run function go_dungeon:features/portal/find_next_id
execute if score AlonePortalsNum DungeonTmp matches 2.. store result score @e[tag=dungeon_portal,tag=!dungeon_portal_linked,tag=!dungeon_portal_independent] PortalId run scoreboard players get NextId PortalId
execute if score AlonePortalsNum DungeonTmp matches 2.. as @e[tag=dungeon_portal,tag=!dungeon_portal_linked,tag=!dungeon_portal_independent] if score @s PortalId = NextId PortalId run tag @s add dungeon_portal_linked
