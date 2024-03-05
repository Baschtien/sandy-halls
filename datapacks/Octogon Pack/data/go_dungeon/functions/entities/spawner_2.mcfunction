data merge block ~ ~ ~ {MaxNearbyEntities:8s,RequiredPlayerRange:16s,SpawnCount:10s,MaxSpawnDelay:500s,MinSpawnDelay:150,SpawnRange:2s}

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 3
function fafik77:rng/rand
execute store result score SpawnerVariation DungeonRandom run scoreboard players get number RNG_77

#3/4 leather zombie
execute if score SpawnerVariation DungeonRandom matches 0..1 run data merge block ~ ~ ~ {SpawnData:{entity:{"id":"minecraft:zombie",PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_spawner"],HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b}},{}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b}},{}]}}}
#spider
execute if score SpawnerVariation DungeonRandom matches 2 run data merge block ~ ~ ~ {SpawnData:{entity:{"id":"minecraft:spider",PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_spawner"]}}}
#3/4 leather skeleton
execute if score SpawnerVariation DungeonRandom matches 3 run data merge block ~ ~ ~ {SpawnData:{entity:{"id":"minecraft:skeleton",PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_spawner"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b}},{}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b}},{}]}}}
