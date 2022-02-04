/// @description Insert description here
// You can write your code in this editor
var move_up = keyboard_check_pressed(vk_up)
var move_down = keyboard_check_pressed(vk_down)
var select = keyboard_check_pressed(vk_enter)

if (move_up) selected_index = (selected_index + 1) % array_length(menu_items)
if (move_down) selected_index = (selected_index - 1 + array_length(menu_items)) % array_length(menu_items)
if (select){
	switch(menu_items[selected_index]){
		case "Restart": 
			game_restart();
			break;
		case "Exit":
			game_end();
			break;
		default:
			break;
	}
}