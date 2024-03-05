scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 3
function fafik77:rng/rand
execute store result score BossAttack DungeonRandom run scoreboard players get number RNG_77

#Do not launch more minions if there are already some.
execute if score BossAttack DungeonRandom matches 3 if entity @e[tag=boss_minion] run function go_dungeon:boss/roll_attack
