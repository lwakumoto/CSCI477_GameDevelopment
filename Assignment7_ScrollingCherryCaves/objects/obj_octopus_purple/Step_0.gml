/// @description Insert description here
// You can write your code in this editor
if (stable){
	if (!alarm_activated){
		alarm[0] = time_to_flip * room_speed	
		alarm_activated = true
	}

	
}else{
	var new_y = y + spd * orientation	
	
	if (place_meeting(x, new_y, obj_block)){
		stable = true
		image_yscale = orientation

	}
	
	y = new_y
	
}