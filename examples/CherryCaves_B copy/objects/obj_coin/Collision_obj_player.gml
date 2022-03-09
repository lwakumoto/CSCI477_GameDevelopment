/// @description Give player a score, float upwards, then disappear

if (can_score) {
	can_score = false;
	score += value;
	
	image_speed = 0;
	image_index = 2;
	image_xscale = 0.5;
	move_towards_point(x, y-1, 10);
	alarm[0] = room_speed * 0.1;
	audio_play_sound(snd_coin, 1, false);
}