/// @description Insert description here
// You can write your code in this editor
var gameReset = keyboard_check_pressed(ord("R"));

if (gameReset){
	game_restart();	
}

if (global.currentGameState == gameState.DEAD){
	global.playerLives --
	if (global.playerLives <= 0){
		global.currentGameState = gameState.LOSE	
	}
	else{
		global.currentGameState = gameState.PLAYING	
		alarm[0] = room_speed * 1
	}
	
	
	
}