/// @description Insert description here
// You can write your code in this editor
var cam = view_camera[0];
var cam_w = camera_get_view_width(cam);

if (x < cam_w - sprite_width / 2 && global.gameState == state.PLAYING){
	x += spd;	

}