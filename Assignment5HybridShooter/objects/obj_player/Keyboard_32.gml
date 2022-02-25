/// @description Insert description here
// You can write your code in this editor
if (global.gameState = state.PLAYING){
	if (curr_fire_delay <= 0){
		var bullet = instance_create_layer(x,y,"Instances",obj_bullet_player);
		bullet.atk = atk
		bullet.direction = 90
		bullet.image_angle = bullet.direction	
		if (is_blue){
			bullet.sprite_index = spr_bullet_blue	
		}
		else{
			bullet.sprite_index = spr_bullet_red	
		}
		
		curr_fire_delay = fire_delay
		audio_play_sound(snd_shoot,1,0);
	}
	curr_fire_delay --
}