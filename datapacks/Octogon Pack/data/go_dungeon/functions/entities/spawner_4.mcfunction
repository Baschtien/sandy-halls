data merge block ~ ~ ~ {MaxNearbyEntities:8s,RequiredPlayerRange:16s,SpawnCount:16s,MaxSpawnDelay:400s,MinSpawnDelay:100,SpawnRange:2s}

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 4
function fafik77:rng/rand
execute store result score SpawnerVariation DungeonRandom run scoreboard players get number RNG_77

#full chainmail but iron helmet & stone sword
execute if score SpawnerVariation DungeonRandom matches 0 run data merge block ~ ~ ~ {SpawnData:{entity:{"id":"minecraft:husk",PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_spawner"],HandItems:[{id:"minecraft:stone sword",Count:1b,tag:{Unbreakable:1b}},{}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}]}}}
#full chainmail but leather chestplate prot 3 & stone sword
execute if score SpawnerVariation DungeonRandom matches 1 run data merge block ~ ~ ~ {SpawnData:{entity:{"id":"minecraft:zombie",PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_spawner"],HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b}},{}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{"id":"minecraft:protection","lvl":3}]}},{id:"minecraft:chainmail_helmet",Count:1b,tag:{Unbreakable:1b}}]}}}
#resistance I spider
execute if score SpawnerVariation DungeonRandom matches 2 run data merge block ~ ~ ~ {SpawnData:{entity:{"id":"minecraft:spider",PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_spawner"],ActiveEffects:[{Id:11,Amplifier:1b,Duration:72000,ShowParticles:1b}]}}}
#netherite chestplate, chainmail helmet, punch II bow
execute if score SpawnerVariation DungeonRandom matches 3 run data merge block ~ ~ ~ {SpawnData:{entity:{"id":"minecraft:skeleton",PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_spawner"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{"id":"minecraft:punch","lvl":2}]}},{}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{},{},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_helmet",Count:1b,tag:{Unbreakable:1b}}]}}}
#speed I creeper
execute if score SpawnerVariation DungeonRandom matches 4 run data merge block ~ ~ ~ {SpawnData:{entity:{"id":"minecraft:creeper",PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_spawner"],ActiveEffects:[{Id:1,Amplifier:1b,Duration:72000,ShowParticles:1b}]}}}
