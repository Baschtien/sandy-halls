scoreboard players remove SpawnMob DungeonEvents 1

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 18
function fafik77:rng/rand
execute store result score MobVariation DungeonRandom run scoreboard players get number RNG_77

#iron helmet & boots, diamond chest, chainmail legs & diamond sword
execute if score MobVariation DungeonRandom matches 0 run summon husk ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b}},{}],HandDropChances:[0.000F,0.000F],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:diamond_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}]}
#iron chest & legs, diamond boots, chainmail helmet, iron axe sharp 1
execute if score MobVariation DungeonRandom matches 1 run summon husk ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Unbreakable:1b,Enchantments:[{"id":"minecraft:sharpness","lvl":1}]}},{}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_helmet",Count:1b,tag:{Unbreakable:1b}}]}
#iron legs & boots, chainmail chest, diamond helmet, iron sword knockback 2
execute if score MobVariation DungeonRandom matches 2 run summon wither_skeleton ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{"id":"minecraft:knockback","lvl":2}]}},{}],HandDropChances:[0.000F,0.000F],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:diamond_helmet",Count:1b,tag:{Unbreakable:1b}}]}
#resistance II spider
execute if score MobVariation DungeonRandom matches 3 run summon spider ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],ActiveEffects:[{Id:11,Amplifier:2b,Duration:72000,ShowParticles:1b}]}
#speed I spider
execute if score MobVariation DungeonRandom matches 4 run summon spider ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],ActiveEffects:[{Id:1,Amplifier:1b,Duration:72000,ShowParticles:1b}]}
#invis II spider
execute if score MobVariation DungeonRandom matches 5 run summon spider ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],ActiveEffects:[{Id:14,Amplifier:2b,Duration:72000}]}
#iron legs & helmet, chainmail chest & boots, power I flame bow
execute if score MobVariation DungeonRandom matches 6 run summon skeleton ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{"id":"minecraft:power","lvl":1},{"id":"minecraft:flame","lvl":1}]}},{}],HandDropChances:[0.000F,0.000F],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}]}
#chainmail head & chest, iron boots diamond leggings, power II punch I bow
execute if score MobVariation DungeonRandom matches 7 run summon skeleton ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{"id":"minecraft:power","lvl":2},{"id":"minecraft:punch","lvl":1}]}},{}],HandDropChances:[0.000F,0.000F],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:diamond_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_helmet",Count:1b,tag:{Unbreakable:1b}}]}
#resistance II creeper
execute if score MobVariation DungeonRandom matches 8 run summon creeper ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],ActiveEffects:[{Id:11,Amplifier:2b,Duration:72000,ShowParticles:1b}]}
#speed II creeper
execute if score MobVariation DungeonRandom matches 9 run summon creeper ~ ~ ~ {PersistenceRequired:1b,Tags:["dungeon","dungeon_creature","dungeon_creature_medium"],ActiveEffects:[{Id:1,Amplifier:2b,Duration:72000,ShowParticles:1b}]}

execute if score SpawnMob DungeonEvents matches 1.. run function go_dungeon:entities/summon_4_medium
