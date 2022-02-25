/// @description Insert description here
// You can write your code in this editor


// Move left until the ship hits 
// the left wall
// Since pivot position is in the middle,
// take that into account in the map
if (global.gameState == state.PLAYING){
	if ((x - sprite_width/2) > 0){
		x-=spd;	
	}
}