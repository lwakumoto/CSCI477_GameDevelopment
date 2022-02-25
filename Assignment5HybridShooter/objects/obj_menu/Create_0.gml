/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_esc,1,0);
menu_items = ["Restart", "Exit"]
selected_index = 0

if (global.gameState == state.WIN || global.gameState == state.LOSE){
	audio_play_sound(snd_gameover,1,0)	
}