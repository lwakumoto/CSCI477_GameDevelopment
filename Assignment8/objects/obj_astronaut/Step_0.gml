/// @description Insert description here
// You can write your code in this editor
var acc_x = 0
var acc_y = 0

var rotateRight = keyboard_check(vk_right)
var rotateLeft = keyboard_check(vk_left)
var thrustKey = keyboard_check(vk_space)

// TODO: check for rotation left
if (rotateLeft){
	image_angle += ROT_RATE
}
// TODO: rheck for totation right
if (rotateRight){
	image_angle -= ROT_RATE	
}

direction = image_angle

// TODO check for thrust key press
var max_acc = 2
if (thrustKey){
	image_speed = 1
	audio_play_sound(snd_thruster,1,true)
	acc_x += THRUST * cos((image_angle + 90) * pi/180 )
	acc_y += THRUST * sin((image_angle - 90) * pi/180)
	
	acc_x = clamp(acc_x,-max_acc,max_acc)
	acc_y = clamp(acc_y,-max_acc,max_acc)
	
}
else{
	audio_stop_sound(snd_thruster)
	image_speed = 0
}	


//TODO: play thrust sound and flicker image

// TODO: call updateObject script
scr_updateObject(acc_x, acc_y)

if (x < 0){
	x = room_width	
} else if (x > room_width){
	x -= room_width	
}

if (y < 0){
	y += room_height
} else if (y > room_height){
	y -= room_width	
}