/// @description Insert description here
// You can write your code in this editor

// CHECK IF PLAYER WINS OR LOSES
if (!instance_exists(obj_enemy)){
	global.gameState = state.WIN
}

for (var i = 0; i < instance_number(obj_enemy); i ++)
{
   var enemy = instance_find(obj_enemy,i);
   if ((enemy.y + sprite_get_height(enemy.sprite_index)/2) >= room_height){
		global.gameState = state.LOSE
   }
}
if (global.playerLives <= 0){
	global.gameState = state.LOSE	
}

// handle general key inputs (restart, pause, and exit)
var pause_button = keyboard_check_pressed(vk_escape)



if (pause_button){
	if (global.gameState == state.PLAYING){
		global.gameState = state.PAUSED	
		menu = instance_create_layer(0,0,"Instances",obj_menu) // create menu
	}
	else if (global.gameState == state.PAUSED){
		global.gameState = state.PLAYING
		instance_destroy(menu.id,true);
		with (obj_enemy){
			alarm[1] = rand_fire_delay // reset the enemie's fire alarm when unpaused
			alarm[0] = room_speed*5 // reset move timer as well
		}
	}
}


