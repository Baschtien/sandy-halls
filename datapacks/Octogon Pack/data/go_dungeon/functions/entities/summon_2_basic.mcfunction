scoreboard players remove SpawnMob DungeonEvents 1

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 9
function fafik77:rng/rand
execute store result score MobVariation DungeonRandom run scoreboard players get number RNG_77

execute if score MobVariation DungeonRandom matches 0..1 run summon zombie ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_basic"]}
execute if score MobVariation DungeonRandom matches 2 run summon zombie ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_basic"],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b}},{}]}
execute if score MobVariation DungeonRandom matches 3 run summon zombie ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_basic"],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b}},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b}}]}
execute if score MobVariation DungeonRandom matches 4..7 run summon spider ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_basic"]}
execute if score MobVariation DungeonRandom matches 8 run summon skeleton ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_basic"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b}},{}],HandDropChances:[0.000F,0.000F]}
execute if score MobVariation DungeonRandom matches 9 run summon skeleton ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_basic"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b}},{}],HandDropChances:[0.000F,0.000F],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b}},{}]}

execute if score SpawnMob DungeonEvents matches 1.. run function go_dungeon:entities/summon_2_basic
