/// @description Look for obj_player on the tramp.

if (place_meeting(x, y-1, obj_player)) {
	// Tell the player to jump.
	obj_player.force_jump = true;
	
	if (keyboard_check(vk_space)) {
		obj_player.jspd_bounce = jump_force;
	}
}
