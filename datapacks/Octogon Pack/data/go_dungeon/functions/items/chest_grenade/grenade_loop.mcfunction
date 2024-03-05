execute as @a[scores={Snowball=1..},tag=dungeon_chestnade] at @s run function go_dungeon:items/chest_grenade/detonate_grenade

tag @a remove dungeon_chestnade
tag @a[nbt={SelectedItem:{tag:{dungeon_chestnade:1b}}}] add dungeon_chestnade
