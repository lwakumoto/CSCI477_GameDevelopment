// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_updateObject(acc_x, acc_y){
	// Calculate the gravitational pull from the sun
	// TODO Get tje vectpr fpr, tje sim tp tje astronaut
	
	// TODO: Calculate the magnitude of that vector.
	// Might need to cap this to avoid Division by Zero error
	
	// TODO: normalize the vector so we can know the direction to the sun
	
	
	// TODO: Use GRAV and hte above info to add to ax and ay
	// Add acceleration to object's velocity
	vx += acc_x
	vy += acc_y
	
	// Update the positoin of the object
	x += vx
	y += vy
	
	// TODO: return distance to sun
}