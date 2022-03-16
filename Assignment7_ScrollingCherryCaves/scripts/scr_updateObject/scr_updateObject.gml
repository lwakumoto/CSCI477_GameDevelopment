// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_updateObject(acc_x, acc_y){
	// Calculate the gravitational pull from the sun
	// TODO Get the vectpr from the sun to the astronaut
	sun_to_astronaut = [ global.instSun.x - x
							,global.instSun.y - y ]
							
	// TODO: Calculate the magnitude of that vector.
	// Might need to cap this to avoid Division by Zero error
	var sun_to_astronaut_length = sqrt(power(sun_to_astronaut[0],2) + power(sun_to_astronaut[1],2))
	sun_to_astronaut_length = max(sun_to_astronaut_length,0.1) // avoid div/0 errors

	
	// TODO: normalize the vector so we can know the direction to the sun
	var sun_to_astronaut_normalized = [sun_to_astronaut[0]/sun_to_astronaut_length,
						sun_to_astronaut[1]/sun_to_astronaut_length]
	
	// TODO: Use GRAV and hte above info to add to ax and ay
	// Add acceleration to object's velocity
	vx += acc_x
	vy += acc_y
	
	// Update the positoin of the object
	x += vx
	y += vy
	
	// TODO: return distance to sun
	return sun_to_astronaut_length
}