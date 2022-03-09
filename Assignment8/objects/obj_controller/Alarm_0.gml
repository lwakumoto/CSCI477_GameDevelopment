/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_playerStart)){
	var startx = obj_playerStart.x
	var starty = obj_playerStart.y
}else{
	var startx = 0
	var starty = 0
}


instance_create_layer(startx,starty,"Instances",obj_player)