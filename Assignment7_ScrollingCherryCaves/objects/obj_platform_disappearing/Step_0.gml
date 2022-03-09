/// @description Insert description here
// You can write your code in this editor

// fall one second after the player steps on it
if (place_meeting(x,y-1, obj_player) && !triggered){
	triggered = true
	alarm[0] = room_speed * 1
	
}