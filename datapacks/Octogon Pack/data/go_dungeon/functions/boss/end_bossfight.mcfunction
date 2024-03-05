scoreboard players set Progress DungeonEvents 5
playsound ui.toast.challenge_complete ambient @a 878 154 -3335 1 1 1

kill @e[tag=boss_minion]

schedule function go_dungeon:progress/end 8s
