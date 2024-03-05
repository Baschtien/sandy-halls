#Function called when every player is ready, but one (or more) has no team.
function go_dungeon:chat/info_player_team

scoreboard players set @a[team=!players,team=!spectators] PlayersReady 0
