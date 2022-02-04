/// @description Fadein Effects

// bob up and down
y += shift;

switch fadeMe {
	// fade in
	case "fadeIn": {
		if (image_alpha < 1){
			image_alpha += fadeSpeed;
		}
		else if (image_alpha == 1){
			fadeMe = "fadeVisible";
		}
		
	}; break;
	// Fade out
	case "fadeOut": {
		if (image_alpha > 0){
			image_alpha -= fadeSpeed;
		}
		else if (image_alpha == 0){
			fadeMe = "fadeDone"
			alarm[0] = 2; // destroy self
		}
		
		
	}; break;
	
	
}