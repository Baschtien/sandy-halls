scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 359
function fafik77:rng/rand
execute store result score BossTpTheta DungeonRandom run scoreboard players get number RNG_77

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 18
function fafik77:rng/rand
execute store result score BossTpRho DungeonRandom run scoreboard players get number RNG_77

summon marker 878 154 -3335 {Tags:[dungeon,dungeon_tmp]}
execute store result entity @e[tag=dungeon_tmp,limit=1] Rotation[0] float 1 run scoreboard players get BossTpTheta DungeonRandom

execute at @e[tag=dungeon_tmp] run function go_dungeon:boss/random_tp_rho

kill @e[tag=dungeon_tmp]

function go_dungeon:boss/find_target
function go_dungeon:boss/ball/set_cooldown
