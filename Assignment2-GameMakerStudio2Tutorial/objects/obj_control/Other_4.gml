/// @description Deal with music

// Play with music based on Room

switch room{
	case rm_gameMain: {
		audio_play_sound(snd_townBGM,1,true);	
		audio_play_sound(snd_townAmbience,1,true);	
	}; break;
}

// Mark sequences layer
if (layer_exists("Cutscenes")){
	curSeqLayer = "Cutscenes";	
}
else {
	curSeqLayer = "Instances";	
}