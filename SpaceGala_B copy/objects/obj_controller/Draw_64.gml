/// @description 

// Draw score text in top left corner.

// Draw PAUSE or GAMEOVER text in top right corner.

// Player health.
if (instance_exists(obj_player)) {
	var xhp = 30;
	repeat(obj_player.hp) {
		draw_sprite(spr_life, 0, xhp, 750);
		xhp += 30
	}
}