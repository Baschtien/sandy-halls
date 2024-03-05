scoreboard players set @s DungeonCollisions 0

execute if score @s DungeonCollisions matches 0 positioned ^2 ^ ^2 store success score @s DungeonCollisions if entity @e[tag=dungeon_marker,distance=..2.8]
execute if score @s DungeonCollisions matches 0 positioned ^-2 ^ ^2 store success score @s DungeonCollisions if entity @e[tag=dungeon_marker,distance=..2.8]
execute if score @s DungeonCollisions matches 0 positioned ^ ^ ^4 store success score @s DungeonCollisions if entity @e[tag=dungeon_marker,distance=..2.8]

execute if score @s DungeonCollisions matches 0 positioned ^2 ^6 ^2 store success score @s DungeonCollisions if entity @e[tag=dungeon_marker,distance=..2.8]
execute if score @s DungeonCollisions matches 0 positioned ^-2 ^6 ^2 store success score @s DungeonCollisions if entity @e[tag=dungeon_marker,distance=..2.8]
execute if score @s DungeonCollisions matches 0 positioned ^ ^6 ^4 store success score @s DungeonCollisions if entity @e[tag=dungeon_marker,distance=..2.8]
