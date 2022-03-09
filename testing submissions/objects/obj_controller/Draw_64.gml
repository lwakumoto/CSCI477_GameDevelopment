/// @description Insert description here
// You can write your code in this 
draw_set_font(fnt_gui);

var livesString = "Lives: " + string(global.playerLives);
var scoreString = "Score: " + string(global.playerScore);
var cherriesString = "Cherries: " + string(global.playerCherries);

var scoreStringy = 0 + string_height(livesString) + 8;
var cherriesStringy = scoreStringy + string_height(scoreString) + 8;

draw_text(0,0, livesString);
draw_text(0, scoreStringy, scoreString);
draw_text(0, cherriesStringy, cherriesString);



draw_set_font(fnt_gameOver);

var winString = "YOU WIN!";
var loseString = "YOU LOSE!";

if (global.currentGameState == gameState.WIN){
	draw_text(room_width/2 - string_width(winString)/2, room_height/2 - string_height(winString)/2, winString);
}
else if (global.currentGameState == gameState.LOSE){
	draw_text(room_width/2 - string_width(loseString)/2, room_height/2 - string_height(loseString)/2, loseString);
}
