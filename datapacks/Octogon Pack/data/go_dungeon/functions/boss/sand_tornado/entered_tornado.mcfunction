#As a player, at the center of the tornado.
tag @s add assigning_player_marker
scoreboard players set @s TornadoCooldown 60
function go_dungeon:boss/sand_tornado/assign_player_marker

tag @s remove assigning_player_marker
