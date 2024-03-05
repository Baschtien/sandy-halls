scoreboard players remove @s ParaGrenade 1
particle entity_effect ~ ~0.2 ~ 0 1 1 1 0 normal
execute if score @s ParaGrenade matches ..0 run function go_dungeon:items/paralyze_grenade/unparalyze_entity
