/// @description Insert description here
// You can write your code in this editor

if (global.currentGameState == gameState.LOSE){
	global.currentGameState = gameState.PLAYING	
	alarm[0] = 180
}

if (global.currentGameState == gameState.WIN || global.currentGameState == gameState.LOSE){
	instance_deactivate_all(1);
	var gameReset = keyboard_check_pressed(ord("R"));

	if (gameReset){
		game_restart();	
	}

}
