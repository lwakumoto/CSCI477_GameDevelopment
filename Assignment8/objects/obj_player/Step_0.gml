/// @description Movement and collisoin


var keyleft = keyboard_check(vk_left) || keyboard_check(ord("A"))
var keyright = keyboard_check(vk_right) || keyboard_check(ord("D"))
var keyup = keyboard_check(vk_up) || keyboard_check(ord("W"))
var keydown = keyboard_check(vk_down) || keyboard_check(ord("S"))

var move = keyright - keyleft
var jumping = keyboard_check_pressed(vk_space)
var vmove = keydown - keyup

if (global.currentGameState != gameState.PLAYING){
	move = 0;
}

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
if (grounded && jumping || force_jump){
	force_jump = 0
	vsp = -(jspd + jspd_bounce);
	jspd_bounce = 0
	grounded = false;
	sprite_index = spr_player_idle
	audio_play_sound(snd_jump,1,false);
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

if (y - sprite_height/2 > room_height){
	scr_killPlayer(id);	
}


// ball collision
if (place_meeting(x,y,obj_ball)){
	scr_killPlayer(id);
}

// cherry collision
if (place_meeting(x,y,obj_cherry)){
	frenzy_mode = true
	frenzy_timer = frenzy_timer_max

	
	with (instance_nearest(x,y,obj_cherry)){
		global.playerScore += ptsGained;
		audio_play_sound(snd_cherry,1,false);
		global.playerCherries ++;
		
		audio_play_sound(snd_frenzy,1,true)
		instance_destroy(id);
	}
	if (instance_exists(obj_goal)){ // if there are no more cherries, make the goal visible
		if (instance_number(obj_cherry) == 0){
			obj_goal.visible = true;
		}
	}

	
}

// goal collision
var goal = instance_place(x,y,obj_goal);
if (goal != noone){
	if (goal.visible == true){
		if (global.currentGameState = gameState.PLAYING){
			audio_play_sound(snd_goal,1,false); // so it doesn't loop infinitely
		}
		// the game will only enter the win state if the current level is the last level of the game
	/*	if (global.currentRoomIndex != array_length(global.roomSequence) - 1){
			scr_advanceLevel();	
		}
		else{
			global.currentGameState = gameState.WIN;
		}*/
		global.currentGameState = gameState.WIN
	}
}

var room_advance = keyboard_check_pressed(vk_shift);

if (room_advance){
	scr_advanceLevel();	
}

if (frenzy_mode){
	frenzy_timer--

	if (frenzy_timer <= 0){
		audio_stop_sound(snd_frenzy)
		frenzy_mode = false	
	}
	
}