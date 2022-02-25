// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_kill_enemies_on_screen(){
	for (var i = 0; i < instance_number(obj_enemy); i ++){
		var curr_instance = instance_find(obj_enemy,i);
		if (curr_instance.y > camera_get_view_y(global.camera)){
			instance_destroy(curr_instance);	
			i--;
		}
	}
}