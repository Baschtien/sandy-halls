execute positioned 878 156 -3335 run summon blaze ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["dungeon","dungeon_boss"],CustomName:'{"text":"Sand King","color":"#C2B280"}',Attributes:[{Name:"generic.max_health",Base:500}],DeathLootTable:""}
execute positioned 878 156 -3335 run playsound entity.wither.spawn hostile @a ~ ~ ~ 1 1 0.5

#Getting its health now and setting it as the bossbar's maximum.
execute store result bossbar sand_king max run data get entity @e[tag=dungeon_boss,limit=1,sort=nearest] Health

scoreboard players set BossbarTmp DungeonTmp 0
scoreboard players set BossFrozen DungeonBoss 0
scoreboard players set AttackCooldown DungeonBoss 200

function go_dungeon:boss/ball/set_cooldown
function go_dungeon:boss/find_target
