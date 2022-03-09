/// @description Respawn player or game over

lives--;

if (lives <= 0) {
	global.game_state = states.gameover;
} else {
	room_restart();
	global.game_state = states.playing;
	score = global.money;
}