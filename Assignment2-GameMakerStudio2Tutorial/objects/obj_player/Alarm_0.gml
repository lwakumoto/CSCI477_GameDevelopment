/// @description Deal with dust

// Create dust cloud
var _dustX, _dustY;
_dustX = obj_player.x - (vx*4);
_dustY = irandom_range(obj_player.y - 10, obj_player.y + 10);
if (running){ // only create dust clouds if the player is running and moving
	if (vx != 0 || vy != 0){
		instance_create_depth(_dustX,_dustY,depth+2,obj_dust);
	}
		
	// Reset alarm
	alarm[0] = 8 + (1+carryLimit); 
}