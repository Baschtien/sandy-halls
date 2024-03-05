#execute unless score @s DungeonCollisions matches 1 positioned ^2 ^ ^2 store success score @s DungeonCollisions if entity @e[tag=dungeon_marker,distance=..2.8]
#execute unless score @s DungeonCollisions matches 1 positioned ^-2 ^ ^2 store success score @s DungeonCollisions if entity @e[tag=dungeon_marker,distance=..2.8]
#execute unless score @s DungeonCollisions matches 1 positioned ^ ^ ^4 store success score @s DungeonCollisions if entity @e[tag=dungeon_marker,distance=..2.8]

execute unless score @s DungeonCollisions matches 1 positioned ^ ^1 ^2 store success score @s DungeonCollisions if entity @e[tag=dungeon_marker,distance=..2]

#setblock ^ ^ ^2 diamond_block