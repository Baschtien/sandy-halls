scoreboard players add @s TornadoCooldown 1
execute if score @s TornadoCooldown matches 0..19 run particle dust 0.76 0.7 0.5 2 ^ ^ ^1 0 0 0 0 2
execute if score @s TornadoCooldown matches 20..39 run particle dust 0.76 0.7 0.5 2 ^ ^ ^1.5 0 0 0 0 2
execute if score @s TornadoCooldown matches 40..59 run particle dust 0.76 0.7 0.5 2 ^ ^ ^2 0 0 0 0 2
execute if score @s TornadoCooldown matches 60..79 run particle dust 0.76 0.7 0.5 2 ^ ^ ^2.5 0 0 0 0 2
tp @s ~ ~0.075 ~ ~20 ~
execute if score @s TornadoCooldown matches 80 run kill @s
