/// @description Insert description here
// You can write your code in this editor
global.score = 0
global.lives = 3

enum state{
	PLAYING,
	WIN,
	LOSE,
	PAUSED
}

global.gameState = state.PLAYING

menu = noone