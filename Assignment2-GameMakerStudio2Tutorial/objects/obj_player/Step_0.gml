/// @description Player movement

// Check keys for movement
if (global.playerControl){ // the player can only move if they have control
	moveRight = keyboard_check(vk_right);
	moveLeft = keyboard_check(vk_left);
	moveUp = keyboard_check(vk_up);
	moveDown = keyboard_check(vk_down);
}
else{
	moveRight = 0;
	moveLeft = 0;
	moveUp = 0;
	moveDown = 0;
}

// Run with shift key
running = keyboard_check(vk_shift);

// Speed up if running
if (running){
	// Ramp up to speed
	if (runSpeed < runMax){
		runSpeed +=2;	
	}
	if (startDust == 0){ // start the timer to create the dust
		alarm[0] = 2;
		startDust = 1;
	}
}
// Slow down if not running
else {
	// Ramp down to speed
	if (runSpeed > 0){
		runSpeed = -1;	
	}
	startDust = 0;
}

// calculate movement
vx = ((moveRight - moveLeft) * (walkSpeed + runSpeed) * (1-carryLimit));
vy = ((moveDown - moveUp) * (walkSpeed + runSpeed) * (1-carryLimit));

// If idle
if (vx == 0 && vy == 0){ // change the idle sprite depending on the direction
	// if we're not picking up or putting down an item
	if (myState != playerState.pickingUp && myState != playerState.puttingDown){
		if (hasItem == noone){
			myState = playerState.idle;	
		}
		// If i'm carrying an item
		else {
			myState = playerState.carryIdle;
		}
	}
}



else{ // If moving, change the sprite of the player
	
	// check for collision
	if (!collision_point(x + vx,y,obj_par_environment, true, true)){
		x += vx;
	}
	if (!collision_point(x,y + vy,obj_par_environment, true, true)){
		y += vy;
	}

	// change direction based off of movement
	if (vx > 0){
	//	sprite_index = spr_player_walk_right;	
		dir = 0;
	}
	else if (vx < 0){
	//	sprite_index = spr_player_walk_left;
		dir = 2;
	}
	
	if (vy > 0){
		//sprite_index = spr_player_walk_down;
		dir = 3;
	}
	else if (vy < 0){
		//sprite_index = spr_player_walk_up;
		dir = 1;	
	}
	
	// Set state
	// If we don't have an item
	if (hasItem = noone){
		myState = playerState.walking;
	}
	else{
		myState = playerState.carrying	
	}

}

// Set listener if sequence is playing
if (instance_exists(obj_control) && obj_control.sequenceState == seqState.playing) {
	var _camX = camera_get_view_x(view_camera[0]) + floor(camera_get_view_width(view_camera[0]) * 0.5);
	var _camY = camera_get_view_y(view_camera[0]) + floor(camera_get_view_height(view_camera[0]) * 0.5);
	
	audio_listener_set_position(0,_camX,_camY, 0);
}
// otherwise, move audio listener with me
else {
	audio_listener_set_position(0,x,y,0);
}


// Depth sorting
depth = -y;


// check for collisions with NPCs
nearbyNPC = collision_rectangle(x - lookRange, y - lookRange, x + lookRange, y + lookRange, obj_par_NPC, false, true);
if (nearbyNPC){
	// Play greeting sound
	if (!hasGreeted) { 
		audio_play_sound(snd_greeting01,1,false);
		hasGreeted = true;
	};
	
	// Popup pompt
	if (npcPrompt == noone || npcPrompt == undefined){
		npcPrompt = scr_showPrompt(nearbyNPC, nearbyNPC.x, nearbyNPC.y - 450);	
	}
	//show_debug_message("detecting NPC");
} else{
	hasGreeted = false; // make the player only greet the npc once
	
	// Get rid of prompt
	scr_dismissPrompt(npcPrompt, 0);
	//show_debug_message("not detecting NPC");
}

// check for collisions with items
nearbyItem = collision_rectangle(x - lookRange, y - lookRange, x + lookRange, y + lookRange, obj_par_item, false, true);
if (nearbyItem && !nearbyNPC){

	// Popup pompt
	if (itemPrompt == noone || itemPrompt == undefined){
		itemPrompt = scr_showPrompt(nearbyItem, nearbyItem.x, nearbyItem.y - 300);	
	}
}  else{
	// Get rid of prompt
	scr_dismissPrompt(itemPrompt, 1);
}  



// If picking up an item
if (myState == playerState.pickingUp){
	if (image_index >= image_number -1){
		myState = playerState.carrying;
		global.playerControl = true;
		image_index = 0;
	}
}

// IF putting down an item
if (myState == playerState.puttingDown){
	// Reset weight
	carryLimit = 0;
	// Reset my state once animation finishes
	if (image_index >= image_number - 1){
		myState = playerState.idle;
		global.playerControl = true;
	}
}

// Depth sorting
depth = -y;

// Auto-choose sprite based on state and direction
sprite_index = playerSpr[myState][dir];
