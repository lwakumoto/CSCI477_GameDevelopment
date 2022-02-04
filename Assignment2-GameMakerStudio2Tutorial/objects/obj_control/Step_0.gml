/// @description Deal with sequences by state

switch sequenceState {
	case seqState.playing: {
		global.playerControl = false;	
	}; break;
	case seqState.finished: {
		// remove sequence if it exists
		if (layer_sequence_exists(curSeqLayer,curSeq)){
			layer_sequence_destroy(curSeq);	
		}
		// Restore control to player, reset
		global.playerControl = true;
		sequenceState = seqState.notPlaying;
		curSeq = noone;
		
		// CHeck if NPCs are "done"
		if (instance_exists(obj_npc_baker) && instance_exists(obj_npc_teacher) &&
		 instance_exists(obj_npc_grocer)){
			 if (obj_npc_baker.myState == npcState.done && obj_npc_teacher.myState == npcState.done &&
				obj_npc_grocer.myState == npcState.done){
					// Queue up "game over" sequence
					global.playerControl = false;
					alarm[0] = 60;
					// Mark game as won
					global.gameOver = true;
			}
		 }
	}; break;

		
}