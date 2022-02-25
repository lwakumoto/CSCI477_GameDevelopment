/// @description Insert description here
// You can write your code in this editor
if (hp <= 0){
	instance_destroy();	
}
if (y - sprite_height/2 >= camera_get_view_y(global.camera) + camera_get_view_height(global.camera)){
	instance_destroy(id, false);	
}
