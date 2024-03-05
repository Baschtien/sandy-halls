fill ~ ~ ~ ~ ~3 ~ chain keep
playsound block.chain.place neutral @a ~ ~ ~
playsound block.chain.place neutral @a ~ ~1 ~
playsound block.chain.place neutral @a ~ ~2 ~
playsound block.chain.place neutral @a ~ ~3 ~
playsound block.anvil.use neutral @a ~ ~ ~ 1 0.9
summon marker ~ ~ ~ {Tags:[dungeon,dungeon_magic_chain]}
summon marker ~ ~0.5 ~ {Tags:[dungeon,dungeon_magic_chain_elevator,dungeon_chain_elevator]}
summon marker ~ ~1.5 ~ {Tags:[dungeon,dungeon_magic_chain_elevator,dungeon_chain_elevator]}
summon marker ~ ~2.5 ~ {Tags:[dungeon,dungeon_magic_chain_elevator,dungeon_chain_elevator]}
summon marker ~ ~3.5 ~ {Tags:[dungeon,dungeon_magic_chain_elevator,dungeon_chain_elevator]}
scoreboard players set @e[type=marker,tag=dungeon_magic_chain,limit=1,sort=nearest,distance=..0.1] DungeonTmp 400

tp @s ~ -100 ~
kill @s
