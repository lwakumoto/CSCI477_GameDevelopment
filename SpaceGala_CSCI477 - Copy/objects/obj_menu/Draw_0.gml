/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < array_length(menu_items); i ++){
	draw_set_font(fnt_messages);
	if (selected_index != i){
		draw_set_color(c_gray)
	}
	else{
		draw_set_color(c_white)	
	}

	draw_text(room_width/2, room_height/2 + i * string_height("Test"), menu_items[i])
}

draw_set_color(c_white)