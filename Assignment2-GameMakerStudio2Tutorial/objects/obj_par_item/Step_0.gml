/// @description sorting

// Depth and animation
switch(myState){
	// If item is sitting on the ground	
	case itemState.idle: {
		depth = -y;	
	}; break;
	
	// If the item has been taken
	case itemState.taken: {
		var _result = scr_itemPosition(); // return the x,y,and depth values
		x = _result[0];
		y = _result[1];
		depth = _result[2];
	}; break;
	
	// if the item is being put back down
	case itemState.puttingBack: {
		y = putDownY;
		myState = itemState.idle;
	}; break;
}
