/// @description Insert description here
// You can write your code in this editor

if (global.currentGameState == gameState.PLAYING){
	if (place_meeting(x,y,obj_block)){
		dir *= -1	
		image_xscale *= -1
	}
	
	x += spd*dir
}