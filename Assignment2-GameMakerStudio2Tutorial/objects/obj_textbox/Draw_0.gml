/// @description Draw textbox

draw_self(); // draw textbox

// draw text
draw_set_font(font_textbox); // set the font
draw_set_halign(fa_center); // center the text
draw_set_valign(fa_middle);
draw_text_ext_color(x,y,textToShow,lineHeight, textWidth,c_black,c_black,c_black,c_black,image_alpha);

