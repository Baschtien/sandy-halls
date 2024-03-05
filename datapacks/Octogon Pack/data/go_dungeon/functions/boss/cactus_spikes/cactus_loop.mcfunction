#Function executed every tick by the cactus attack markers.
execute if score CactusEvents DungeonBoss matches 40.. positioned ~ ~0.2 ~ run particle minecraft:falling_dust cactus ~ ~ ~ 0.35 0 0.35 0 1 normal
execute if score CactusEvents DungeonBoss matches 40.. if score 3 Timers matches 0 run playsound minecraft:block.sand.break block @a ~ ~-1 ~ 0.1 1
execute if score CactusEvents DungeonBoss matches 45 run playsound minecraft:entity.evoker_fangs.attack hostile @a ~ ~ ~ 0.1 1
