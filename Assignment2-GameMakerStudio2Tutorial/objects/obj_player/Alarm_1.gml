/// @description Deal w/ objects & NPC states

// Remove object
if (hasItem != noone && instance_exists(hasItem)){
	// Destroy the item
	with (hasItem) {
		instance_destroy();	
	}
	// Reset my item variables
	hasItem = noone;
	carryLimit = 0;
}

if (nearbyNPC != noone && instance_exists(nearbyNPC)){
	// Set the NPC as done
	with (nearbyNPC) {
		myState = npcState.done;
		show_debug_message("FUCK YOU");
	}

}
