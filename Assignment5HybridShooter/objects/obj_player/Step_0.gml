/// @description basic stuff


var change_color = keyboard_check_pressed(ord("Z"))
var x_bomb = keyboard_check_pressed(ord("X"))

if (change_color){
	audio_play_sound(snd_colorswitch,1,0);
	is_blue = is_blue xor true; // reverse is_blue
	
	if (is_blue){
		sprite_index = spr_player_blue
	}
	else{
		sprite_index = spr_player_red
	}
}

if (x_bomb && global.xBombs > 0){
	global.xBombs --;
	scr_kill_enemies_on_screen()	
}

if (hp <= 0){
	instance_destroy(id, true);	
}