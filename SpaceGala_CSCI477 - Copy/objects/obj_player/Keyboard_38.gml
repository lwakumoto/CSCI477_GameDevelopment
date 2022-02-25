/// @description Insert description here
// You can write your code in this editor

var cam = view_camera[0];
var cam_h = camera_get_view_width(cam);
if ((y - sprite_height/2) > 0 && global.gameState == state.PLAYING){
	y-=spd;	
}