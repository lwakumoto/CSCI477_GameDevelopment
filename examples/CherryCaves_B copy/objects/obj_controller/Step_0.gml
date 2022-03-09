/// @description 

if (global.game_state == states.dead) {
	global.game_state = states.playing;
	alarm[0] = room_speed * 1;
}

if (global.game_state == states.gameover) {
	instance_deactivate_all(1);
	
	if (keyboard_check_pressed(vk_enter)) {
		game_restart();
	}
}