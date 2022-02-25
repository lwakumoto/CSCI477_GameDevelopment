/// @description Move ship right

// Move right until the ship hits
// the right wall.
// Since pivot position is in the 
// middle, take that into account
// in the math.
if (global.game_state == states.playing && x < room_width - sprite_width / 2) {
	x += spd;
}