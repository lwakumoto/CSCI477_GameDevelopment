/// @description Insert description here
// You can write your code in this editor
global.roomSequence = [Room1, rm_level2];
global.currentRoomIndex = 0;

global.playerLives = 3;
global.playerScore = 0;
global.playerCherries = 0;

enum gameState {
	LOSE,
	WIN,
	PLAYING
}

global.currentGameState = gameState.PLAYING;
