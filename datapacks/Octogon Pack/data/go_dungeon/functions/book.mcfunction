execute as @a unless score @s Book matches -2147483648..2147483647 run scoreboard players set @s Book 0

scoreboard players enable GreenOctogon Book

execute as @a unless score @s Book matches 0 run give GreenOctogon written_book{pages:["[\"\",\"Overpowered: \",{\"text\":\"[OP]\",\"bold\":true,\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/op GreenOctogon\"}},\"\\n\",\"Mode\",{\"text\":\"[Creative]\",\"bold\":true,\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/gamemode creative @s\"}},\"\\n\",\"Mode\",{\"text\":\"[Adventure]\",\"bold\":true,\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/gamemode adventure @s\"}},\"\\n\",\"\\n\",\"Give \",{\"text\":\"[Kill stick]\",\"bold\":true,\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/give @s stick{Enchantments:[{\\\"id\\\":\\\"minecraft:sharpness\\\",\\\"lvl\\\":255}]}\"}},\"\\n\",\"Clear \",{\"text\":\"[Inventory]\",\"bold\":true,\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/clear @s\"}},\"\\n\",\"\\n\",\"Effect \",{\"text\":\"[Resistance]\",\"bold\":true,\"color\":\"gray\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/effect give @s minecraft:resistance 60 4 true\"}},\"\\n\",\"Effect \",{\"text\":\"[Regen]\",\"bold\":true,\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/effect give @s minecraft:regeneration 10 4 true\"}},\"\\n\",\"Effect \",{\"text\":\"[Saturation]\",\"bold\":true,\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/effect give @s minecraft:saturation 10 5 true\"}},\"\\n\",\"Effect \",{\"text\":\"[Clear]\",\"bold\":true,\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/effect clear @s\"}}]"],title:"Supervision Book",author:GreenOctogon}

scoreboard players set @a Book 0