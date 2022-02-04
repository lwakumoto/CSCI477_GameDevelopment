/// @description Destroy self and do other stuff

// destroy self
if (sequenceToShow = noone) {
	global.playerControl = true;	
}
// create sequencei f appropriate
else {
	// play NPC sequence
	scr_playSequence(sequenceToShow);
}

// destroy self
instance_destroy();