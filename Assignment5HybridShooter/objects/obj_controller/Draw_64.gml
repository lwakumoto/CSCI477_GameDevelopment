/// @description Insert description here
// You can write your code in this editor


cam = view_camera[0]
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);
		
		
draw_set_font(fnt_score)
draw_text(0,0, "playerScore: " + string(global.playerScore))

var start_x = 15
var start_y = cam_h - 15

// draw hearts to represent the number of playerLives the player has
for (var i = 0; i < global.playerLives; i ++){
	draw_sprite(spr_life,0,start_x + i * sprite_get_width(spr_life),start_y)
}

// draw bombs to represent the number of xBombs the player has
var start_x = cam_w - 15;
var start_y = cam_h - 15;
for (var i = 0; i < global.xBombs; i ++){
	draw_sprite(spr_xbomb,0,start_x - i * sprite_get_width(spr_xbomb),start_y);	
}


if (global.gameState != state.PLAYING){
	if (global.gameState = state.WIN){
		draw_set_font(fnt_messages)
		draw_text(cam_w/2, cam_h/2 - string_height("YOU WIN"), "YOU WIN");	
		if (!instance_exists(obj_menu)){
			instance_create_layer(0,0,"Instances",obj_menu)
		}
		/*
		draw_text(cam_w/2, cam_h/2 + string_height("YOU WIN"), "PRESS R TO PLAY AGAIN");
		draw_text(cam_w/2, cam_h/2 + string_height("YOU WIN") * 2, "PRESS E TO EXIT"); */
	}
	else if (global.gameState == state.LOSE){
		draw_set_font(fnt_messages)
		draw_text(cam_w/2, cam_h/2 - string_height("YOU WIN"), "YOU LOSE");	
		if (!instance_exists(obj_menu)){
			instance_create_layer(0,0,"Instances",obj_menu)
		}
	}
	
	
	
}