/// @description Insert description here
// You can write your code in this editor

var cam_w = display_get_gui_width();
var cam_h = display_get_gui_height();



draw_set_color(c_black);
draw_rectangle(0, 0, room_width, 40, false);
draw_set_color(c_white);
draw_set_font(fnt_score);
draw_text(20, 10, "SCORE: " + string(score));

draw_set_color(c_white);
draw_sprite_ext(spr_player_idle, -1, cam_w-100, 20, 0.5, 0.5, 0, c_white, 1);
draw_text(cam_w-100, 10, " X " + string(lives));