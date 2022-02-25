/// @description Insert description here
// You can write your code in this editor
other.hp -= atk;
var sound = audio_play_sound(snd_damage,1,0);
audio_sound_pitch(sound,0.5); // make it sound a little different from when the player is hit

instance_destroy(id,true)
