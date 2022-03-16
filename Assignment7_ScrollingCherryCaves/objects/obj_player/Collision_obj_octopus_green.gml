/// @description Insert description here
// You can write your code in this editor

if ((y + sprite_height/4) < other.y || frenzy_mode) {
	scr_killEnemy(other)
	if (!frenzy_mode) {
		force_jump = true
	}
	
} else{
	scr_killPlayer(id)
}