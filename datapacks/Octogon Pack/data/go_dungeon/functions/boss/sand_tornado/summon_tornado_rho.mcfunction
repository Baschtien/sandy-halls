scoreboard players remove BossAttackRho DungeonRandom 1
execute unless score BossAttackRho DungeonRandom matches 0.. run summon marker ~ ~ ~ {Tags:[dungeon,boss_attack,boss_attack_tornado]}
execute unless score BossAttackRho DungeonRandom matches 0.. run function go_dungeon:boss/sand_tornado/sound_spawn
execute unless score BossAttackRho DungeonRandom matches 0.. run function go_dungeon:boss/sand_tornado/sound_spawn
execute unless score BossAttackRho DungeonRandom matches 0.. run function go_dungeon:boss/sand_tornado/sound_spawn
execute unless score BossAttackRho DungeonRandom matches 0.. run function go_dungeon:boss/sand_tornado/sound_spawn
execute unless score BossAttackRho DungeonRandom matches 0.. run function go_dungeon:boss/sand_tornado/sound_spawn
execute unless score BossAttackRho DungeonRandom matches 0.. run function go_dungeon:boss/sand_tornado/sound_spawn
execute unless score BossAttackRho DungeonRandom matches 0.. positioned ~ ~2 ~ run function go_dungeon:boss/sand_tornado/start_swirl_effect
execute if score BossAttackRho DungeonRandom matches 0.. positioned ^ ^ ^1 run function go_dungeon:boss/sand_tornado/summon_tornado_rho
