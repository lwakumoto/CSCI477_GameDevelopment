/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_score)
draw_text(0,0, "Score: " + string(global.score))

var start_x = 15
var start_y = room_height - 15

for (var i = 0; i < global.lives; i ++){
	draw_sprite(spr_life,0,start_x + i * sprite_get_width(spr_life),start_y)
}




if (global.gameState != state.PLAYING){
	if (global.gameState = state.WIN){
		draw_set_font(fnt_messages)
		draw_text(room_width/2, room_height/2, "YOU WIN");	
	}
	else if (global.gameState = state.LOSE){
		draw_set_font(fnt_messages)
		draw_text(room_width/2, room_height/2, "YOU LOSE");	
	}
	
	draw_text(room_width/2, room_height/2 + string_height("YOU WIN"), "PRESS R TO PLAY AGAIN");
	draw_text(room_width/2, room_height/2 + string_height("YOU WIN") * 2, "PRESS X TO EXIT");
}