/// @description Insert description here
// You can write your code in this editor
if (global.gameState == state.PLAYING){
	if (instance_exists(obj_player)){
		var cam_x = camera_get_view_x(cam);	
		var cam_y = camera_get_view_y(cam);	
		var cam_w = camera_get_view_width(cam);	
		var cam_h = camera_get_view_height(cam);	
		
		if (cam_y <= 0){
			spd = 0;	
		}
	
		// Make sure the player stas in the camera view
		if (obj_player.x - obj_player.sprite_width / 2 <= cam_x) {
			obj_player.x = cam_x + obj_player.sprite_width/2	
		}
		if (obj_player.x + obj_player.sprite_width / 2 - cam_w >= cam_x) {
			obj_player.x = cam_x + obj_player.sprite_width/2	
		}
				// Make sure the player stas in the camera view
		if (obj_player.y - obj_player.sprite_height / 2 <= cam_y) {
			obj_player.y = cam_y + obj_player.sprite_height/2	
		}
		if (obj_player.y + obj_player.sprite_height / 2 - cam_h >= cam_y) {
			obj_player.y = cam_y + obj_player.sprite_height/2	
		}
		
		// Set the player and the camera speed to the same
		speed = spd;
		obj_player.speed = spd;
	}
	else {
		speed = 0;
		obj_player.speed = 0;
	}
}