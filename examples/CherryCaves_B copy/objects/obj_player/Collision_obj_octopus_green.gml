/// @description If player bonks on the head, kill enemy, otherwise kill player

if ((y + sprite_height/2) < other.y) {
	instance_destroy(other);
	force_jump = true;
} else {
	global.game_state = states.dead;
	instance_destroy();
}