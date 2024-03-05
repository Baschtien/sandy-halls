scoreboard players remove BossAttackRho DungeonRandom 1
execute unless score BossAttackRho DungeonRandom matches 0.. run summon marker ~ ~ ~ {Tags:[dungeon,boss_attack,boss_attack_cactus]}
execute if score BossAttackRho DungeonRandom matches 0.. positioned ^ ^ ^1 run function go_dungeon:boss/cactus_spikes/summon_cactus_rho
