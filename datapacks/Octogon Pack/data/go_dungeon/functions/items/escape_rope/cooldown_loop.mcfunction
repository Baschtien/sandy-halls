execute store result score Cooldown DungeonTmp run scoreboard players get @s EscapeRope
scoreboard players operation Cooldown DungeonTmp /= 20 Constants
title @s actionbar [{"text":"This item is on cooldown: ","color":"red"},{"score":{"name":"Cooldown","objective":"DungeonTmp"},"color":"red"},{"text":"s left","color":"red"}]

execute if score @s EscapeRope matches 1 run title @s actionbar {"text":"Item ready!","color":"dark_green"}
