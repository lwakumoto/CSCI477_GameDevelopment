/// @description Insert description here
// You can write your code in this 
draw_set_font(fnt_gui);

var cam_w = display_get_gui_width()
var cam_h = display_get_gui_height()

var livesString = "Lives: " + string(global.playerLives);
var scoreString = "Score: " + string(global.playerScore);
var cherriesString = "Cherries: " + string(global.playerCherries);

var scoreStringy = 0 + string_height(livesString) + 8;
var cherriesStringy = scoreStringy + string_height(scoreString) + 8;

draw_set_color(c_black);
draw_rectangle(0, 0, room_width, 40, false);
draw_set_color(c_white);
draw_text(20, 10, scoreString);

draw_set_color(c_white);
draw_sprite_ext(spr_player_idle, -1, cam_w-100, 20, 0.5, 0.5, 0, c_white, 1);
draw_text(cam_w-100, 10, " X " + string(global.playerLives));



draw_set_font(fnt_gameOver);

var winString = "YOU WIN!";
var loseString = "YOU LOSE!";

if (global.currentGameState == gameState.WIN){
	draw_text(cam_w/2 - string_width(winString)/2, cam_h/2 - string_height(winString)/2, winString);
}
else if (global.currentGameState == gameState.LOSE){
	draw_text(cam_w/2 - string_width(loseString)/2, cam_h/2 - string_height(loseString)/2, loseString);
}
