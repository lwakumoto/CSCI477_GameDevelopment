// Draw the timer for the game in the top left corner.
// Also draw a win/lose message if the game is over.

if (global.game_state == states.WON) {
	alarm[0] = -1;
	
	draw_set_font(fnt_arial);
	draw_set_color(c_red);
	draw_text(room_width/2 - 100, room_height/2 - 100, "YOU WON!");
} else if (global.game_state == states.LOST) {
	alarm[0] = -1;
	
	draw_set_font(fnt_arial);
	draw_set_color(c_red);
	draw_text(room_width/2 - 100, room_height/2 - 100, "YOU LOST!");
} else{
	cur_time = ceil(alarm[0] / room_speed);
}

draw_set_font(fnt_arial);
draw_set_color(c_white);
draw_text(90, 0, "Time Left: " + string(cur_time));

