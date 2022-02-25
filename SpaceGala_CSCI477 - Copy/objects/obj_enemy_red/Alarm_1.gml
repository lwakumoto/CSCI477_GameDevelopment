/// @description Fire Bullet
if (global.gameState == state.PLAYING){
	var bullet = instance_create_layer(x,y,"Instances",obj_bullet_enemy);

	bullet.atk = atk

	bullet.direction = 270
	bullet.image_angle = bullet.direction	

	rand_fire_delay = room_speed * random_range(0.5, 5)
	alarm[1] = rand_fire_delay
}
