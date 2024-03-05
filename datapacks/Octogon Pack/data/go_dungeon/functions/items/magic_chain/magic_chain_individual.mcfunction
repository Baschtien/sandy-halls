scoreboard players remove @s DungeonTmp 1

execute if score @s DungeonTmp matches 66 run playsound block.chain.break block @a ~ ~1.5 ~ 1 0.7
execute if score @s DungeonTmp matches 46 run playsound block.chain.break block @a ~ ~1.5 ~ 1 0.7
execute if score @s DungeonTmp matches 26 run playsound block.chain.break block @a ~ ~1.5 ~ 1 0.7

execute if score @s DungeonTmp matches 6 run fill ~ ~3 ~ ~ ~3 ~ air replace chain
execute if score @s DungeonTmp matches 6 positioned ~ ~3.5 ~ run kill @e[type=marker,distance=..0.1,sort=nearest,tag=dungeon_magic_chain_elevator]
execute if score @s DungeonTmp matches 6 run playsound block.chain.break block @a ~ ~3 ~
execute if score @s DungeonTmp matches 4 run fill ~ ~2 ~ ~ ~2 ~ air replace chain
execute if score @s DungeonTmp matches 4 positioned ~ ~2.5 ~ run kill @e[type=marker,distance=..0.1,sort=nearest,tag=dungeon_magic_chain_elevator]
execute if score @s DungeonTmp matches 4 run playsound block.chain.break block @a ~ ~2 ~
execute if score @s DungeonTmp matches 2 run fill ~ ~1 ~ ~ ~1 ~ air replace chain
execute if score @s DungeonTmp matches 2 positioned ~ ~1.5 ~ run kill @e[type=marker,distance=..0.1,sort=nearest,tag=dungeon_magic_chain_elevator]
execute if score @s DungeonTmp matches 2 run playsound block.chain.break block @a ~ ~1 ~
execute if score @s DungeonTmp matches 0 run fill ~ ~ ~ ~ ~ ~ air replace chain
execute if score @s DungeonTmp matches 0 positioned ~ ~0.5 ~ run kill @e[type=marker,distance=..0.1,sort=nearest,tag=dungeon_magic_chain_elevator]
execute if score @s DungeonTmp matches 0 run playsound block.chain.break block @a ~ ~ ~

execute if score @s DungeonTmp matches 0 run kill @s
