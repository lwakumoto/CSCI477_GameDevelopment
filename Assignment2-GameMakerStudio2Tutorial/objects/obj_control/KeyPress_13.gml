/// @description Proceed to gameplay

if (room == rm_mainTitle) {
	if (global.gameStart == false) {
		audio_stop_all();
		global.gameStart = true;
		room_goto(rm_gameMain); // go to the main room
	}
}