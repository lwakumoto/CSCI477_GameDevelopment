/// @description Title screen controller, listen for key presses

if (keyboard_check_pressed(vk_enter)) {
	room_goto_next();
	audio_play_sound(snd_menu, 1, false);
}

if (keyboard_check_pressed(vk_escape)) {
	game_end();
}