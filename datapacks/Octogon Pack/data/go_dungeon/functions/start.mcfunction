scoreboard objectives add Rotation dummy
scoreboard objectives add DungeonSettings dummy
scoreboard objectives add DungeonRandom dummy
scoreboard objectives add DungeonEvents dummy
scoreboard objectives add DungeonCollisions dummy
scoreboard objectives add DungeonTmp dummy
scoreboard objectives add DungeonFloors dummy
scoreboard objectives add PortalId dummy
scoreboard objectives add PortalCooldown dummy
scoreboard objectives add DungeonSounds dummy
scoreboard objectives add PlayersReady dummy
scoreboard objectives add DungeonEffects dummy
scoreboard objectives add DungeonBoss dummy
scoreboard objectives add TornadoCooldown dummy
scoreboard objectives add RabbitStew minecraft.used:minecraft.rabbit_stew
scoreboard objectives add DungeonDeaths deathCount
scoreboard objectives add EscapeRope dummy
scoreboard objectives add Snowball minecraft.used:minecraft.snowball
scoreboard objectives add ParaGrenade dummy

scoreboard objectives add Book trigger

team add players {"text":"Explorers","color":"yellow"}
team modify players friendlyFire false
team modify players prefix {"text":"Explorer ","color":"yellow"}
team add spectators {"text":"Spectators","color":"dark_aqua"}
team modify spectators friendlyFire false
team modify spectators collisionRule never
team modify spectators deathMessageVisibility hideForOtherTeams
#Commented because mobs
#team modify spectators prefix {"text":"Spectator ","color":"dark_aqua"}

team add chests {"text":"Chests","color":"gold"}
team modify chests color gold

execute unless score Init DungeonSettings matches 1 run function go_dungeon:settings/init
execute unless score Init PortalId matches 1 run function go_dungeon:features/portal/init

execute unless score Progress DungeonEvents matches -999999..999999 run scoreboard players set Progress DungeonEvents 0

bossbar add sand_king {"text": "Sand King"}
bossbar set sand_king style notched_10
bossbar set sand_king color yellow
