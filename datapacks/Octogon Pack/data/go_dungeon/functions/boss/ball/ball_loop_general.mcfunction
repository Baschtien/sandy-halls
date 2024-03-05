execute if score BallCooldown DungeonBoss matches 1.. run scoreboard players remove BallCooldown DungeonBoss 1
execute unless score BallCooldown DungeonBoss matches 1.. run function go_dungeon:boss/ball/summon_ball
execute unless score BallCooldown DungeonBoss matches 1.. run function go_dungeon:boss/ball/set_cooldown

execute as @e[tag=boss_attack_ball] at @s run function go_dungeon:boss/ball/ball_loop
