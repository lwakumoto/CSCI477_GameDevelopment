/// @description Insert description here
// You can write your code in this editor
cam = view_camera[0]
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

for (var i = 0; i < array_length(menu_items); i ++){
	draw_set_font(fnt_messages);
	if (selected_index != i){
		draw_set_color(c_gray)
	}
	else{
		draw_set_color(c_white)	
	}

	draw_text(cam_w/2, cam_h/2 + i * string_height("Test"), menu_items[i])
}

draw_set_color(c_white)