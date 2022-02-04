// Draw the card.
// Recurring event that happens once per frame.

if (face == 0) {
	sprite_index = spr_cardback;
} else {
	switch (type) {
		case 0:
			sprite_index = spr_afternoon;
			break;
		case 1:
			sprite_index = spr_fire;
			break;
		case 2:
			sprite_index = spr_moon;
			break;
		case 3:
			sprite_index = spr_morning;
			break;
		case 4:
			sprite_index = spr_mountain;
			break;
		case 5:
			sprite_index = spr_rain;
			break;
		case 6:
			sprite_index = spr_river;
			break;
		case 7:
			sprite_index = spr_sun;
			break;
	}
}