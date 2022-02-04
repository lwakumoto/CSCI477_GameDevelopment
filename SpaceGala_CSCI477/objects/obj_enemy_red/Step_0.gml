/// @description Insert description here
// You can write your code in this editor

if (x <= start_x || x >= end_x){
 // Reverse direction;
 dir *= -1
}


if (hp <= 0){
	instance_destroy();	
}
x += spd * dir