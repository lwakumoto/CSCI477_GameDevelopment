/// @description Textbox test


var _text, _seq; // temp var for text


// Create a textbox if the player is near an npc and the player has control
if (global.playerControl){
	// If near an NPC
	if (nearbyNPC){
		// If NPC is still available
		if (nearbyNPC.myState == npcState.normal){
			// If the player does not have an item
			if(hasItem == noone || hasItem == undefined){
				_text = nearbyNPC.myText;
				if (!instance_exists(obj_textbox)){ // if there isn't a textbox, create one
					iii = instance_create_depth(x,y,-10000,obj_textbox); // always draw textbox above everything else
					iii.textToShow = _text;
				} 
			}
			// If player has item (and it exists)
			if (hasItem != noone && instance_exists(hasItem)){
			
				// If player has correct item
				if (hasItem.object_index == nearbyNPC.myItem){
					_text = nearbyNPC.itemTextHappy;	
					_seq = nearbyNPC.sequenceHappy;
					// Check if we should remove the item, mark the npc
					alarm[1] = 10;
				}
			
				// If player hs incorrect item
				else{
					_text = nearbyNPC.itemTextSad;		
					_seq = nearbyNPC.sequenceSad;
				}

			
				// create textbox
				if (!instance_exists(obj_textbox)){ // if there isn't a textbox, create one
					iii = instance_create_depth(x,y,-10000,obj_textbox); // always draw textbox above everything else
					iii.textToShow = _text;
					iii.sequenceToShow = _seq;
				
				} 
			}
		}
		// If the NPC is "done"
		else{
			_text = nearbyNPC.itemTextDone;
			if (!instance_exists(obj_textbox)){ // if there isn't a textbox, create one
				iii = instance_create_depth(x,y,-10000,obj_textbox); // always draw textbox above everything else
				iii.textToShow = _text;
			} 
		}
	}
	// If near an item
	if (nearbyItem && !nearbyNPC){
		// If the player does not have an item
		if(hasItem == noone || hasItem == undefined){
		    global.playerControl = false;
			myState = playerState.pickingUp;
			image_index = 0;
			image_speed = 1;
			hasItem = nearbyItem;
			// Take into account weight of the item we're picking up
			carryLimit = hasItem.itemWeight * 0.1 // heavier items increase carry limit
			// Change state of item we're picking up
			with (hasItem){
				myState = itemState.taken;
			}
			audio_play_sound(snd_itemPickup,1,false);
			}
		}

	// If not near an npc or another item
	if (!nearbyItem && !nearbyNPC){
			// if not near an NPC or another item
		if (hasItem != noone) {
			// put down the item
			myState = playerState.puttingDown;
			image_index = 0;
			global.playerControl = false;
			// Change the state of the item we were carrying
			with (hasItem){
				putDownY = obj_player.y+5;
				myState = itemState.puttingBack;
			}
			// Play the sound effect for putting an item down
			audio_play_sound(snd_itemPutDown,1,false);
			// Reset item
			hasItem = noone;
		}	
	}
}


// Allow the player 