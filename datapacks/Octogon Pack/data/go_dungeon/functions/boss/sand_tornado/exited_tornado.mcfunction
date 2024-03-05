tag @s remove in_tornado
tag @s remove tornado_checked
#So that you cannot go into a tornado immediately after leaving one
scoreboard players set @s TornadoCooldown -40
execute at @s run function go_dungeon:boss/sand_tornado/summon_snowball
#execute at @e[tag=boss_attack_tornado_player] if score @e[tag=boss_attack_tornado_player,limit=1,sort=nearest] IDs = @s IDs facing entity @s eyes facing ^-1 ^ ^ run tp @e[tag=boss_attack_tornado_player,limit=1,sort=nearest] ~ ~ ~ ~ 10
#execute at @e[tag=boss_attack_tornado_player] if score @e[tag=boss_attack_tornado_player,limit=1,sort=nearest] IDs = @s IDs rotated as @e[tag=boss_attack_tornado_player,limit=1,sort=nearest] run function go_dungeon:boss/sand_tornado/summon_snowball
execute at @e[tag=boss_attack_tornado_player] if score @e[tag=boss_attack_tornado_player,limit=1,sort=nearest] IDs = @s IDs run kill @e[tag=boss_attack_tornado_player,limit=1,sort=nearest]
