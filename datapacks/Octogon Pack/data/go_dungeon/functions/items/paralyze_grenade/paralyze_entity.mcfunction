execute store result score @s ParaGrenade run scoreboard players get ParaGrenadeTime DungeonSettings
data modify entity @s Rotation[1] set value 90.0f
data merge entity @s {NoAI:1b}
