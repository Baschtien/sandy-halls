scoreboard players remove SpawnMob DungeonEvents 1

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 13
function fafik77:rng/rand
execute store result score MobVariation DungeonRandom run scoreboard players get number RNG_77

#full iron but legs & iron sword
execute if score MobVariation DungeonRandom matches 0..1 run summon husk ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b}},{}],HandDropChances:[0.000F,0.000F],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}]}
#fill chainmail but legs, iron axe
execute if score MobVariation DungeonRandom matches 2..3 run summon zombie ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Unbreakable:1b}},{}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_helmet",Count:1b,tag:{Unbreakable:1b}}]}
#chainmail legs & boots, iron chest & helmet, stone sword
execute if score MobVariation DungeonRandom matches 4 run summon husk ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b}},{}],HandDropChances:[0.000F,0.000F],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}]}
#resistance I spider
execute if score MobVariation DungeonRandom matches 5..6 run summon spider ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],ActiveEffects:[{Id:11,Amplifier:1b,Duration:72000,ShowParticles:1b}]}
#invis II spider
execute if score MobVariation DungeonRandom matches 7 run summon spider ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],ActiveEffects:[{Id:14,Amplifier:2b,Duration:72000,ShowParticles:1b}]}
#full chainmail but leather helmet
execute if score MobVariation DungeonRandom matches 8..9 run summon skeleton ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b}},{}],HandDropChances:[0.000F,0.000F],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b}}]}
#iron chest, chainmail legs & boots
execute if score MobVariation DungeonRandom matches 10 run summon skeleton ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b}},{}],HandDropChances:[0.000F,0.000F],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b}},{}]}
#creeper
execute if score MobVariation DungeonRandom matches 11..12 run summon creeper ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"]}
#speed I creeper
execute if score MobVariation DungeonRandom matches 13 run summon creeper ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],ActiveEffects:[{Id:1,Amplifier:1b,Duration:72000,ShowParticles:1b}]}

execute if score SpawnMob DungeonEvents matches 1.. run function go_dungeon:entities/summon_3_medium
