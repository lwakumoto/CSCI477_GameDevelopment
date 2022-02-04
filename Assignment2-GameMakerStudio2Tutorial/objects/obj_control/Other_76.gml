/// @description Deal with Sequences

// Listen for broadcast messages
switch (event_data[? "message"]){
	
	case "sequenceStart": {
	// Set our state
		show_debug_message("obj_control has heard that sequence " + string(curSeq) + " is playing");
	sequenceState = seqState.playing;
	// Figure out which sequence just broadcast this message and mark it
	if (layer_get_element_type(event_data[? "element_id"]) == layerelementtype_sequence) {
		curSeq = event_data[? "element_id"];
		show_debug_message("obj_control has heard that sequence " + string(curSeq) + " is playing");
		
		}
	}; break;
	case "sequenceEnd":{
		// Set our state
		sequenceState = seqState.finished;
		show_debug_message("obj_control has heard that sequence " + string(curSeq) + " has ended");
	}; break;
}