/// @description Insert description here
// You can write your code in this editor
global.playerScore = 0
global.playerLives = 3 // number of playerLives the player starts with
global.camera = view_camera[0];
global.xBombs = 3 // number of xBombs the player starts with


enum state{
	PLAYING,
	WIN,
	LOSE,
	PAUSED
}

global.gameState = state.PLAYING

menu = noone