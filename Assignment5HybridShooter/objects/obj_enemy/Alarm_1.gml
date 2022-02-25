/// @description Fire Bullet
var cam = view_camera[0]
var cam_y = camera_get_view_y(cam);
var cam_h = camera_get_view_height(cam);


if (global.gameState == state.PLAYING && y >= cam_y && y <= (cam_y + cam_h)){ // check for boundary condition as well as if the game is playing
	var bullet = instance_create_layer(x,y,"Instances",obj_bullet_enemy);

	bullet.atk = atk

	bullet.direction = 270
	bullet.image_angle = bullet.direction	
	if (sprite_index == spr_enemy_blue_0){
		bullet.sprite_index = spr_bullet_blue	
		bullet.is_blue = true
	}
	else if (sprite_index == spr_enemy_red){
		bullet.sprite_index = spr_bullet_red	
		bullet.is_blue = false
	}
	else{
		bullet.sprite_index = spr_bullet_green
		bullet.is_blue = false;
		bullet.direction = direction - 90 // offset the angle of the sprite
	}

	rand_fire_delay = room_speed * random_range(0.5, 5)
	alarm[1] = rand_fire_delay
}
else{
	alarm[1] = rand_fire_delay	
}

if (y > cam_y + cam_h){
	instance_destroy(id,false);
}