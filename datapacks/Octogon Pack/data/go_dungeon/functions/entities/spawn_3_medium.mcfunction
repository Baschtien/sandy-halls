scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 4
function fafik77:rng/rand

execute if score number RNG_77 matches 0 run scoreboard players set SpawnMob DungeonEvents 2
execute if score number RNG_77 matches 1..2 run scoreboard players set SpawnMob DungeonEvents 3
execute if score number RNG_77 matches 3..4 run scoreboard players set SpawnMob DungeonEvents 4

function go_dungeon:entities/summon_3_medium