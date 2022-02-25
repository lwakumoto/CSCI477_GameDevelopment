/// @description Movement and collisoin

var keyleft = keyboard_check(vk_left)
var keyright = keyboard_check(vk_right)
var keyup = keyboard_check(vk_up)
var keydown = keyboard_check(vk_down)

var move = keyright - keyleft
var jumping = keyboard_check_pressed(vk_space)
var vmove = keydown - keyup

hsp = move * spd;
vsp += grv


if (move != 0){
	if (grounded) {
		sprite_index = spr_player_walk	
	}
	image_xscale = move
}
else if (!climbing){
	sprite_index = spr_player_idle
}

// jumping
if (grounded && jumping){
	vsp -= jspd;	
	grounded = false;
	sprite_index = spr_player_idle
}

// Climbing 
if (place_meeting(x,y+1,obj_ladder)) {
	if (vmove < 0 || (vmove == 0 && climbing) || (vmove > 0 && place_meeting(x, y + sprite_height, obj_ladder))){
		climbing = true;
	}
	else{
		climbing = false;	
	}
} else {
	climbing = false;	
}

if (climbing) {
	vsp = vmove * spd;
	sprite_index = spr_player_climb
	
}

// Horizontal collision with blocks.
if (place_meeting(x + hsp, y, obj_block)){
	while (!place_meeting(x + sign(hsp), y, obj_block)){
		x += sign(hsp)	
	}
	hsp = 0
	
}

x += hsp	

// Vertical collision with blocks
if (place_meeting(x, y + vsp, obj_block)) {
	if (!climbing ) { 
			while (!place_meeting(x,y + sign(vsp), obj_block)){
			y += sign(vsp)	
		}
		vsp = 0;
		grounded = true
	}
}
else {
	grounded = false
}


y += vsp;

