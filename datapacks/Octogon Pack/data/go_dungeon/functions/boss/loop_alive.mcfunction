#Loop executed by the boss, so only if it's alive.

#Update the bossbar with the boss's health.
execute store result bossbar sand_king value run data get entity @e[tag=dungeon_boss,limit=1] Health

#tp @s ~ ~ ~ facing entity @p

execute if score BossFrozen DungeonBoss matches 1 run function go_dungeon:boss/thaw
execute if score BossFrozen DungeonBoss matches 1.. run scoreboard players remove BossFrozen DungeonBoss 1
execute unless score BossFrozen DungeonBoss matches 1.. run function go_dungeon:boss/ball/ball_loop_general
execute unless score BossFrozen DungeonBoss matches 1.. if score AttackCooldown DungeonBoss matches 1.. run scoreboard players remove AttackCooldown DungeonBoss 1
execute unless score BossFrozen DungeonBoss matches 1.. unless score AttackCooldown DungeonBoss matches 1.. run function go_dungeon:boss/launch_attack

execute if score BossFrozen DungeonBoss matches 1.. run data modify entity @s Invulnerable set value 1b
execute unless score BossFrozen DungeonBoss matches 1.. run data modify entity @s Invulnerable set value 0b

execute if score BossFrozen DungeonBoss matches 1.. run function go_dungeon:boss/effect_frozen

execute unless score BossFrozen DungeonBoss matches 1.. run tp @s ~ ~ ~ facing entity @a[tag=boss_target,limit=1] eyes

execute unless score BossFrozen DungeonBoss matches 1.. run scoreboard players set min RNG_77 0
execute unless score BossFrozen DungeonBoss matches 1.. run scoreboard players set max RNG_77 79
execute unless score BossFrozen DungeonBoss matches 1.. run function fafik77:rng/rand
execute unless score BossFrozen DungeonBoss matches 1.. store result score BossTp DungeonRandom run scoreboard players get number RNG_77
execute unless score BossFrozen DungeonBoss matches 1.. if score BossTp DungeonRandom matches 0 run function go_dungeon:boss/random_tp

