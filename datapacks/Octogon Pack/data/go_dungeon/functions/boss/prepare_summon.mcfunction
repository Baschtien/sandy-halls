execute store result bossbar sand_king value run scoreboard players get BossbarTmp DungeonTmp
scoreboard players add BossbarTmp DungeonTmp 1
particle minecraft:block sand ~ ~ ~ 0.4 0 0.4 0 5
particle minecraft:falling_dust sand ~ ~1.5 ~ 0.5 1 0.5 0 10
playsound block.sand.break block @a ~ ~ ~ 4
