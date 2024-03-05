scoreboard players add NextId PortalId 1
scoreboard players set DoesPortalExist DungeonTmp 0
execute as @e[tag=dungeon_portal,tag=!dungeon_portal_alone] if score @s PortalId = NextId PortalId run scoreboard players set DoesPortalExist DungeonTmp 1
execute if score DoesPortalExist DungeonTmp matches 1 run function go_dungeon:features/portal/find_next_id_rec
