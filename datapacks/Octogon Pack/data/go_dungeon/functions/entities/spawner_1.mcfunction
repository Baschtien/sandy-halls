data merge block ~ ~ ~ {MaxNearbyEntities:6s,RequiredPlayerRange:8s,SpawnCount:8s,MaxSpawnDelay:600s,MinSpawnDelay:200s,SpawnRange:2s}

#scoreboard players set min RNG_77 0
#scoreboard players set max RNG_77 4
#function fafik77:rng/rand
#execute store result score SpawnerVariation DungeonRandom run scoreboard players get number RNG_77

#execute if score MobVariation DungeonRandom matches 0..1 run summon zombie ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"]}
data merge block ~ ~ ~ {SpawnData:{entity:{"id":"minecraft:zombie",PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_spawner"]}}}
