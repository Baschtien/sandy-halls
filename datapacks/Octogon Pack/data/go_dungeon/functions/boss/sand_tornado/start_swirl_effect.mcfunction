summon marker ~ ~ ~ {Tags:[dungeon,boss_attack_tornado_swirl,dungeon_tmp]}
scoreboard players set @e[tag=dungeon_tmp] TornadoCooldown 0

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 359
function fafik77:rng/rand
execute store result score BossEffectRotation DungeonRandom run scoreboard players get number RNG_77

execute store result entity @e[tag=dungeon_tmp,limit=1] Rotation[0] float 1 run scoreboard players get EffectRotation DungeonRandom

tag @e[tag=dungeon_tmp] remove dungeon_tmp
