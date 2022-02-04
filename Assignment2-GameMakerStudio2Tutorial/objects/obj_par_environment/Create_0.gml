/// @description Variables and setup

myEmitter = 0;

if (useSound != noone){
	if (!audio_is_playing(useSound)) {
		myEmitter = audio_emitter_create();	
		audio_falloff_set_model(audio_falloff_exponent_distance);
		audio_emitter_falloff(myEmitter,fallStart,maxDist,1);
		audio_play_sound_on(myEmitter,useSound,1,1);
	}
}
