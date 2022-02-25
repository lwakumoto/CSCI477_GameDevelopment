/// @description Pause game

if (global.game_state == states.playing) {
	global.game_state = states.paused
} else {
	global.game_state = states.playing;
}