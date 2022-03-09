/// @description Insert description here
// You can write your code in this editor
lives --;

if (lives <= 0){
	global.currentGameState = gameState.LOSE	
} else{
	room_restart()
	global.currentGameState = gameState.PLAYING
	score = global.playerMoney
}