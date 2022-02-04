// Game controller.
// Oversees the game and rules.

enum states {
	PAUSED,
	PLAYING,
	WON,
	LOST
};
global.game_state = states.PAUSED;
global.player_picks = [noone, noone];

cards_number = 8;
global.deck = ds_list_create();

play_time = 60; // total time we can play the game
cur_time = 60;  // the time at any moment in the game

var deck_size = cards_number * 2;

// Create 16 obj_card instances.
for (var i = 0; i < deck_size; i++) {
	var card = instance_create_layer(0, 0, "Instances", obj_card);
	ds_list_add(global.deck, card);
}

// Initialize all the cards in our deck.
for (var i = 0; i < deck_size; i++) {
	global.deck[| i].face = 0;
	global.deck[| i].index = i;
	global.deck[| i].type = i % cards_number;
	global.deck[| i].visible = false;
}

shuffle_cards(global.deck);

alarm[0] = play_time * room_speed;