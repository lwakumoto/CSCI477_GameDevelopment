/// @description Insert description here
// You can write your code in this editor

if (global.currentGameState == gameState.PLAYING){
	x += spd * dir
	
	if (place_meeting(x,y,obj_block)){
		dir *= -1	
		image_xscale *= -1
	}
	
}

if (place_meeting(x,y-1, obj_player)){
	obj_player.x += spd * dir
	
}