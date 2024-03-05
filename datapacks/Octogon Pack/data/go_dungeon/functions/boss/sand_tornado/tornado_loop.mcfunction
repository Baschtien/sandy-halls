execute positioned ~ ~1 ~ run tag @a[distance=..2,scores={TornadoCooldown=-1}] add in_tornado
execute positioned ~ ~2 ~ run tag @a[distance=..2,scores={TornadoCooldown=-1}] add in_tornado
execute positioned ~ ~3 ~ run tag @a[distance=..2.25,scores={TornadoCooldown=-1}] add in_tornado
execute positioned ~ ~4 ~ run tag @a[distance=..2.5,scores={TornadoCooldown=-1}] add in_tornado

execute as @a[tag=in_tornado,tag=!tornado_checked] run function go_dungeon:boss/sand_tornado/entered_tornado

tag @a[tag=in_tornado] add tornado_checked

#execute as @a[tag=in_tornado,tag=not_in_tornado] run function go_dungeon:boss/sand_tornado/assign_player_marker

#Effects
particle falling_dust sand ~ ~3 ~ 0.9 1.5 0.9 0 10 normal

scoreboard players set min RNG_77 0
scoreboard players set max RNG_77 9
function fafik77:rng/rand
execute store result score BossEffect DungeonRandom run scoreboard players get number RNG_77

execute if score BossEffect DungeonRandom matches 0 run function go_dungeon:boss/sand_tornado/start_swirl_effect


#execute facing entity @p[tag=!in_tornado] feet run tp @s ^ ^ ^0.1
#execute facing entity @p[tag=!in_tornado] feet positioned ~ ~2 ~ run tp @e[tag=boss_attack_tornado_swirl,distance=..2.5] ^ ^ ^0.1
#tp @s ~ 154 ~
#execute positioned ~ ~2 ~ run tp @e[tag=boss_attack_tornado_swirl,distance=..2.5] ~ 154 ~
