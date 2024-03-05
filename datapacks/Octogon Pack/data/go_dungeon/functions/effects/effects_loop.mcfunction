function go_dungeon:effects/spawn_effects
execute unless score DungeonParticlesEnabled DungeonSettings matches 1 at @e[tag=dungeon_effect] run particle dust 0.28 0.97 0.97 1 ~ ~ ~ 0 0 0 0 2

execute as @e[tag=dungeon_effects_constant_fire] at @s run function go_dungeon:effects/constant_fire

function go_dungeon:effects/rotating_particle
