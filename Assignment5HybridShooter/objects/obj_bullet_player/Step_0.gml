/// @description Insert description here
// You can write your code in this editor
if (global.gameState == state.PLAYING){
	y += spd * -sin(direction * (pi/180))
}
if (y < camera_get_view_y(global.camera)){ // destroy bullets if the exit the screen
	instance_destroy(id);	
}