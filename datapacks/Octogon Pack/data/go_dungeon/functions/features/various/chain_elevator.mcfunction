execute at @e[tag=dungeon_chain_elevator] run tag @a[distance=..0.666] add levitate
execute as @a[tag=levitate] at @s unless entity @e[tag=dungeon_chain_elevator,distance=..0.75] run tag @s remove levitate
#execute as @a at @s if block ~ ~ ~ chain[axis=y] run tag @s add levitate
#execute as @a at @s unless block ~ ~ ~ chain[axis=y] run tag @s remove levitate
#execute as @a at @s if entity @e[tag=dungeon_chain_elevator_blocker,distance=..1] run tag @s remove levitate
#execute as @a at @s if entity @e[tag=dungeon_chain_elevator_blocker,distance=..1] run effect clear @s levitation

effect give @a[tag=levitate,predicate=!go_general:is_sneaking] levitation 1 2 true
effect give @a[tag=levitate,predicate=go_general:is_sneaking] slow_falling 1 0 true
effect clear @a[tag=levitate,predicate=go_general:is_sneaking] levitation
effect clear @a[tag=levitate,predicate=!go_general:is_sneaking] slow_falling
effect clear @a[tag=!levitate,tag=was_levitating] levitation
#effect clear @a[tag=!levitate] slow_falling

scoreboard players add ChainElevator DungeonSounds 1
execute if score ChainElevator DungeonSounds matches 10.. as @a[tag=levitate] at @s if block ~ ~2 ~ chain run playsound block.chain.break block @s ~ ~ ~ 0.6 1
execute if score ChainElevator DungeonSounds matches 10.. run scoreboard players set ChainElevator DungeonSounds 0

execute as @e[tag=dungeon_chain_elevator] at @s unless block ~ ~ ~ chain run kill @s
execute if score DebugParticlesEnabled DungeonSettings matches 1 at @e[tag=dungeon_chain_elevator] run particle minecraft:dust 0.76 0.2 0.91 2

tag @a[tag=levitate] add was_levitating
tag @a[tag=!levitate] remove was_levitating
