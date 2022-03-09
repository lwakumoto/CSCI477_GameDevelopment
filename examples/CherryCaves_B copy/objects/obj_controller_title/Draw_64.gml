/// @description Draw blinking text

var cam_w = display_get_gui_width();
var cam_h = display_get_gui_height();

x = (cam_w / 2) - 50;
y = cam_h - 100;

if (press_start) {
	draw_set_color(c_red);
	draw_set_font(fnt_title);
	draw_text(x, y, "PRESS START");
}