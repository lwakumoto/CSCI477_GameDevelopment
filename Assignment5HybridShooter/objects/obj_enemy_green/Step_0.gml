/// @description Insert description here
// You can write your code in this editor
event_inherited()
if (instance_exists(obj_player)){
	image_angle = point_direction(x,y,obj_player.x,obj_player.y) + 90
	direction = image_angle;
}
