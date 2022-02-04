/// @description Animation

// Rotate cloud
image_angle += rotSpeed;
y -= driftSpeed; // make the dust "rise" into the air

// Fade out
if (image_alpha > 0){
	image_alpha -= fadeSpeed;	
}
else {
	instance_destroy();	
}
