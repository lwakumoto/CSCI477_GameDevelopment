// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_killPlayer(playerID){
	/*
	if (playerID != noone){
			global.playerLives --;	
		if (instance_exists(obj_playerStart)){
			playerID.x = obj_playerStart.x;
			playerID.y = obj_playerStart.y;
		}
		else{
			playerID.x = 0;
			playerID.y = 0;
		}	
		audio_play_sound(snd_damage,1,false);
		
	}
	*/
	audio_play_sound(snd_damage,1,false);
	global.currentGameState = gameState.DEAD
	effect_create_above(ef_explosion,playerID.x, playerID.y, 20, c_red)
	instance_destroy()
}