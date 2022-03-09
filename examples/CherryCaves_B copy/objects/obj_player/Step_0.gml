/// @description Movement and collision

var keyleft = keyboard_check(vk_left);
var keyright = keyboard_check(vk_right);
var keyup = keyboard_check(vk_up);
var keydown = keyboard_check(vk_down);

var move = keyright - keyleft;
var jumping = keyboard_check(vk_space);
var vmove = keydown - keyup;

hsp = spd * move;
vsp += grv;

// Walking
if (move != 0) {
	image_xscale = move;
	if (grounded) {
		sprite_index = spr_player_walk;
	}
} else if (!climbing) {
	sprite_index = spr_player_idle;
}

// Jumping
if (grounded && jumping || force_jump) {
	force_jump = false;
	vsp = -(jspd + jspd_bounce);
	jspd_bounce = 0;
	grounded = false;
	sprite_index = spr_player_idle;
}

// Climbing
if (place_meeting(x, y+1, obj_ladder)) {
	if (vmove < 0 || (vmove == 0 && climbing) || (vmove > 0 && place_meeting(x, y+sprite_height, obj_ladder))) {
		climbing = true;
	} else {
		climbing = false;
	}
} else {
	climbing = false;
}

if (climbing) {
	vsp = vmove * spd;
	sprite_index = spr_player_climb;
}


// Horizontal collision with blocks.
if (place_meeting(x + hsp, y, obj_block)) {
	while (!place_meeting(x + sign(hsp), y, obj_block)) {
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

// Vertical collision with blocks.
if (place_meeting(x, y + vsp, obj_block)) {
	if (!climbing) {
		while (!place_meeting(x, y + sign(vsp), obj_block)) {
			y += sign(vsp);
		}
		vsp = 0;
		grounded = true;
	}
} else {
	grounded = false;
}


y += vsp;

if (y > room_height) {
	global.game_state = states.dead;
	instance_destroy();
}

