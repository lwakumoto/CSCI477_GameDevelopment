// This alarm went off, check if the cards match
// or not.

if (global.player_picks[0].type == global.player_picks[1].type) {
	global.player_picks[0].visible = false;
	global.player_picks[1].visible = false;
}
		
global.player_picks[0].face = 0;
global.player_picks[1].face = 0;
global.player_picks[0] = noone;
global.player_picks[1] = noone;

global.game_state = states.PAUSED;