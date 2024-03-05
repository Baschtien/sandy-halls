setblock ~ ~ ~ chain
scoreboard players add Chains DungeonTmp 1
summon marker ~ ~ ~ {Tags:[dungeon,dungeon_chain_elevator]}
execute if block ~ ~1 ~ air unless score Chains DungeonTmp matches 50.. positioned ~ ~1 ~ run function go_dungeon:features/various/place_chains
