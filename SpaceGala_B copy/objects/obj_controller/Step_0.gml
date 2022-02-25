/// @description 

// Gameover if no more enemies.
if (!instance_exists(obj_enemy_red)) {
	global.game_state = states.gameover;
	
	if (room_exists(room_next(room))) {
		room_goto_next();
	}
}