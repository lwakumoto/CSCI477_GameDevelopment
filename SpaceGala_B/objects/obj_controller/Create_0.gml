/// @description 

// Seed random number generator.
randomize();

// Game state.
enum states {
	playing,
	paused,
	gameover
};

global.game_state = states.playing;