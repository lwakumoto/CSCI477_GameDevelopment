/// @description Move enemy


event_inherited();

// Everytime we hit start_x/end_x bounded
// box, reverse direction.
if (x <= start_x || x >= end_x) {
	// Reverse direction.
	dir *= -1;
}

x += spd * dir;
