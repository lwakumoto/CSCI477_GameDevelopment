// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// show the prompt
function scr_showPrompt(_object,_x,_y){
	if (instance_exists(_object)){
		if (obj_player.myState != playerState.puttingDown) { // dont allow the prompt to appear immediately after the player drops the item
			if (!instance_exists(obj_textbox) && !instance_exists(obj_prompt)){
				iii = instance_create_depth(_x,_y,-10000,obj_prompt);	
				return iii;
			}
		}
	}
}

// fade out prompt
function scr_dismissPrompt(_whichPrompt,_toReset){
	if (_whichPrompt != undefined){
		if (instance_exists(_whichPrompt)) {
			// Tell prompt object to fade out
			with (_whichPrompt){
				fadeMe = "fadeOut";		
			}
			// Reset appropriate prompt variable
			if (instance_exists(obj_player)){
				with (obj_player) {
					switch (_toReset) {
						// Reset npcPrompt
						case 0: npcPrompt = noone; break;	
						// Reset itemPrompt
						case 1: itemPrompt = noone; break;
					}
				}
			}
		}
	}
		
}