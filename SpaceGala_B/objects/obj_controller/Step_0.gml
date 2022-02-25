/// @description 

// Gameover if no more enemies.
if (!instance_exists(obj_enemy_red)) {
	global.game_state = states.gameover;
}