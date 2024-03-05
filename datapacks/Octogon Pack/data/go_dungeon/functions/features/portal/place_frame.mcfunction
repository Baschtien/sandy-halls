execute store success score IsFirstFrame PortalId if score CurrentFrameBlock PortalId matches 0

execute if score CurrentFrameBlock PortalId matches 0 run scoreboard players set min RNG_77 1
execute if score CurrentFrameBlock PortalId matches 0 run scoreboard players set max RNG_77 16
execute if score CurrentFrameBlock PortalId matches 0 run function fafik77:rng/rand
execute if score CurrentFrameBlock PortalId matches 0 store result score CurrentFrameBlock PortalId run scoreboard players get number RNG_77

execute if score CurrentFrameBlock PortalId matches 1 run fill ^-2 ^-1 ^ ^2 ^4 ^ white_glazed_terracotta
execute if score CurrentFrameBlock PortalId matches 2 run fill ^-2 ^-1 ^ ^2 ^4 ^ light_gray_glazed_terracotta
execute if score CurrentFrameBlock PortalId matches 3 run fill ^-2 ^-1 ^ ^2 ^4 ^ gray_glazed_terracotta
execute if score CurrentFrameBlock PortalId matches 4 run fill ^-2 ^-1 ^ ^2 ^4 ^ black_glazed_terracotta
execute if score CurrentFrameBlock PortalId matches 5 run fill ^-2 ^-1 ^ ^2 ^4 ^ brown_glazed_terracotta
execute if score CurrentFrameBlock PortalId matches 6 run fill ^-2 ^-1 ^ ^2 ^4 ^ red_glazed_terracotta
execute if score CurrentFrameBlock PortalId matches 7 run fill ^-2 ^-1 ^ ^2 ^4 ^ orange_glazed_terracotta
execute if score CurrentFrameBlock PortalId matches 8 run fill ^-2 ^-1 ^ ^2 ^4 ^ yellow_glazed_terracotta
execute if score CurrentFrameBlock PortalId matches 9 run fill ^-2 ^-1 ^ ^2 ^4 ^ lime_glazed_terracotta
execute if score CurrentFrameBlock PortalId matches 10 run fill ^-2 ^-1 ^ ^2 ^4 ^ green_glazed_terracotta
execute if score CurrentFrameBlock PortalId matches 11 run fill ^-2 ^-1 ^ ^2 ^4 ^ cyan_glazed_terracotta
execute if score CurrentFrameBlock PortalId matches 12 run fill ^-2 ^-1 ^ ^2 ^4 ^ light_blue_glazed_terracotta
execute if score CurrentFrameBlock PortalId matches 13 run fill ^-2 ^-1 ^ ^2 ^4 ^ blue_glazed_terracotta
execute if score CurrentFrameBlock PortalId matches 14 run fill ^-2 ^-1 ^ ^2 ^4 ^ purple_glazed_terracotta
execute if score CurrentFrameBlock PortalId matches 15 run fill ^-2 ^-1 ^ ^2 ^4 ^ magenta_glazed_terracotta
execute if score CurrentFrameBlock PortalId matches 16 run fill ^-2 ^-1 ^ ^2 ^4 ^ pink_glazed_terracotta

execute if score IsFirstFrame PortalId matches 0 run scoreboard players set CurrentFrameBlock PortalId 0

fill ^-1 ^ ^ ^1 ^3 ^ orange_stained_glass_pane
