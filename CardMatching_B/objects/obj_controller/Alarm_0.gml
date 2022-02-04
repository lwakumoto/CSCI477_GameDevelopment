// When the alarm goes off, the timer is down to zero.
// Check if player wins or loses.

cur_time = 0;

var deck_size = ds_list_size(global.deck);

for (var i = 0; i < deck_size; i++) {
	if (global.deck[| i].visible == true) {
		global.game_state = states.LOST;
	}
}

if (global.game_state != states.LOST) {
	global.game_state = states.WON;
}