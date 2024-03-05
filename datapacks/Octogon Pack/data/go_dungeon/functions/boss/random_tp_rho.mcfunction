scoreboard players remove BossTpRho DungeonRandom 1
execute unless score BossTpRho DungeonRandom matches 0.. run function go_dungeon:boss/random_tp_tp
execute if score BossTpRho DungeonRandom matches 0.. positioned ^ ^ ^1 run function go_dungeon:boss/random_tp_rho
