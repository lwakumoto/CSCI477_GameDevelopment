// When a card is clicked, flip its face.

if (visible && global.game_state == states.PAUSED) {
	face = 1;
	
	if (global.player_picks[0] == noone) {
		global.player_picks[0] = self;
	} else {
		global.player_picks[1] = self;
		
		global.game_state = states.PLAYING;
		alarm[0] = 0.5 * room_speed;
	}

}