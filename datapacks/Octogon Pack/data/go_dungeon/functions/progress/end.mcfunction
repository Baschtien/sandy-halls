bossbar set sand_king visible false

execute as @a at @s run function go_dungeon:progress/tp_ending
function go_dungeon:chat/title/end_1

playsound music_disc.chirp ambient @a 522 66 -3393 1 1 0.9

spawnpoint @a 522 67 -3393
