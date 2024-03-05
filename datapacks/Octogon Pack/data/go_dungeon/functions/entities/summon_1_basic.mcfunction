scoreboard players remove SpawnMob DungeonEvents 1

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 2
function fafik77:rng/rand
execute store result score MobVariation DungeonRandom run scoreboard players get number RNG_77

execute if score MobVariation DungeonRandom matches 0..1 run summon zombie ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_basic"]}
execute if score MobVariation DungeonRandom matches 2 run summon spider ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_basic"]}

execute if score SpawnMob DungeonEvents matches 1.. run function go_dungeon:entities/summon_1_basic
