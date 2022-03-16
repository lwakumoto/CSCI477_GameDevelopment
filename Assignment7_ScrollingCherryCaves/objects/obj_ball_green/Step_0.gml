/// @description Insert description here
// You can write your code in this editor
x += spd;
y = ystart + sin(x/wavelength)* magnitude;

if (x > room_width || x < 0){
	instance_destroy(id);	
}