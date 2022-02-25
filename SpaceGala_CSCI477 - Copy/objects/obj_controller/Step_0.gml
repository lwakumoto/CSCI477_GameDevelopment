/// @description Insert description here
// You can write your code in this editor

// CHECK IF PLAYER WINS OR LOSES
if (!instance_exists(obj_enemy_red)){
	global.gameState = state.WIN
}

for (var i = 0; i < instance_number(obj_enemy_red); i ++)
{
   var enemy = instance_find(obj_enemy_red,i);
   if ((enemy.y + sprite_get_height(enemy.sprite_index)/2) >= room_height){
		global.gameState = state.LOSE
   }
}
if (global.lives <= 0){
	global.gameState = state.LOSE	
}


// handle general key inputs (restart, pause, and exit)
var restart_button = keyboard_check_pressed(ord("R"))
var pause_button = keyboard_check_pressed(vk_escape)
var exit_button = keyboard_check_pressed(ord("X"))

if (restart_button && global.gameState != state.PLAYING){
	game_restart()
}

if (pause_button){
	if (global.gameState == state.PLAYING){
		global.gameState = state.PAUSED	
		menu = instance_create_layer(0,0,"Instances",obj_menu) // create menu
	}
	else{
		global.gameState = state.PLAYING
		instance_destroy(menu.id)
		with (obj_enemy_red){
			alarm[1] = rand_fire_delay // reset the enemie's fire alarm when unpaused
			alarm[0] = room_speed*5 // reset move timer as well
		}
	}
}

if (exit_button){
	if (global.gameState != state.PLAYING){
		game_end()	
	}
}