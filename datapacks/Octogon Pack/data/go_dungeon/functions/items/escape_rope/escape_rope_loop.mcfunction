execute as @a unless score @s EscapeRope matches -2147483648..2147483647 run scoreboard players set @s EscapeRope 0
execute as @a[scores={EscapeRope=1..}] if data entity @s SelectedItem.tag.escape_rope run function go_dungeon:items/escape_rope/cooldown_loop
execute as @a[scores={EscapeRope=1..}] run scoreboard players remove @s EscapeRope 1
execute as @a[scores={EscapeRope=0,Carrot=1}] if data entity @s SelectedItem.tag.escape_rope run function go_dungeon:items/escape_rope/escape
