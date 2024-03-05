execute as @a unless score @s PortalCooldown matches -1.. unless score @s PortalCooldown <= Cooldown PortalCooldown run scoreboard players set @s PortalCooldown 0

execute as @e[tag=dungeon_portal] at @s store result score @a[distance=..0.75,scores={PortalCooldown=0}] PortalId run scoreboard players get @s PortalId
execute as @e[tag=dungeon_portal] at @s positioned ^-1 ^ ^ store result score @a[distance=..0.75,scores={PortalCooldown=0}] PortalId run scoreboard players get @s PortalId
execute as @e[tag=dungeon_portal] at @s positioned ^1 ^ ^ store result score @a[distance=..0.75,scores={PortalCooldown=0}] PortalId run scoreboard players get @s PortalId

execute as @a at @s unless score @s PortalId matches 0 at @e[tag=dungeon_portal,distance=..2] run function go_dungeon:features/portal/portal_particle_many
#execute as @a at @s unless score @s PortalId matches 0 at @e[tag=dungeon_portal,distance=2..] if score @e[tag=dungeon_portal,limit=1,sort=nearest] PortalId = @s PortalId at @s run playsound minecraft:block.lava.extinguish ambient @a ~ ~ ~ 0.6 0.3
execute as @a at @s unless score @s PortalId matches 0 at @e[tag=dungeon_portal,distance=2..] if score @e[tag=dungeon_portal,limit=1,sort=nearest] PortalId = @s PortalId run tp @s ^ ^ ^0.5 ~ ~
execute as @a at @s unless score @s PortalId matches 0 at @e[tag=dungeon_portal,distance=2..] if score @e[tag=dungeon_portal,limit=1,sort=nearest] PortalId = @s PortalId at @s run playsound minecraft:block.lava.extinguish ambient @a ~ ~ ~ 0.5 0.3
execute as @a at @s unless score @s PortalId matches 0 at @e[tag=dungeon_portal,distance=..2] run function go_dungeon:features/portal/portal_particle_many

execute as @a unless score @s PortalId matches 0 store result score @s PortalCooldown run scoreboard players get Cooldown PortalCooldown
scoreboard players remove @a[scores={PortalCooldown=1..}] PortalCooldown 1
scoreboard players set @a PortalId 0

#Constant particles for coolness.
execute as @e[tag=dungeon_portal,tag=!dungeon_portal_horizontal] at @s run function go_dungeon:features/portal/portal_particle
execute as @e[tag=dungeon_portal,tag=dungeon_portal_horizontal] at @s run function go_dungeon:features/portal/portal_particle_horizontal

#Automatically add rotation tags to new portals
execute as @e[tag=dungeon_portal,tag=!dungeon_rotated] at @s run function go_dungeon:coordinates/tag_from_rotation

#Automatic linking of 2 new portals.
function go_dungeon:features/portal/check_for_linking

execute as @e[tag=dungeon_portal,tag=dungeon_portal_linked,tag=!dungeon_portal_independent] at @s run function go_dungeon:features/portal/check_for_unlinking
