execute as @a[scores={Snowball=1..},tag=dungeon_paranade] at @s run function go_dungeon:items/paralyze_grenade/detonate_grenade

execute as @e[type=marker,tag=dungeon_paragrenade] at @s run function go_dungeon:items/paralyze_grenade/grenade_loop_individual
execute as @e[tag=dungeon_creature,scores={ParaGrenade=0..}] at @s run function go_dungeon:items/paralyze_grenade/paralyzed_loop

tag @a remove dungeon_paranade
tag @a[nbt={SelectedItem:{tag:{dungeon_paranade:1b}}}] add dungeon_paranade
