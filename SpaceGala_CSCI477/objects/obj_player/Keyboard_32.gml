/// @description Insert description here
// You can write your code in this editor
if (global.gameState = state.PLAYING){
	if (curr_fire_delay <= 0){
		var bullet = instance_create_layer(x,y,"Instances",obj_bullet_player);

		bullet.atk = atk

		bullet.direction = 90
		bullet.speed = bullet.spd
		bullet.image_angle = bullet.direction	
		curr_fire_delay = fire_delay
	}
	curr_fire_delay --
}