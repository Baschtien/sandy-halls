execute as @a[tag=hearty_stew,scores={RabbitStew=1..}] run function go_dungeon:items/hearty_stew/ate_stew

tag @a[nbt={SelectedItem:{tag:{hearty_stew:1b}}}] add hearty_stew
execute as @a unless entity @s[nbt={SelectedItem:{tag:{hearty_stew:1b}}}] run tag @s remove hearty_stew
