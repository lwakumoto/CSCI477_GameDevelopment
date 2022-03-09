/// @description Insert description here
// You can write your code in this editor
<<<<<<< HEAD
global.roomSequence = [Room1, rm_level2];
global.currentRoomIndex = 0;

global.playerLives = 3;
global.playerScore = 0;
global.playerCherries = 0;

enum gameState {
	LOSE,
	WIN,
	DEAD,
	PLAYING
}

global.currentGameState = gameState.PLAYING;
=======

// rotation rate of astronaut
#macro ROT_RATE 3

// thrust of astronaut
#macro THRUST 0.15


// gravitation pull from sun
#macro GRAV 1000

// gives the sun a twinkling affect
#macro SUNCYCLE 0.2

// how close astronaut can be to sun before explosion
#macro SUNDESTROY 10

// TODO: Play backgounrd music for the whole game

<<<<<<< HEAD
// Save the one instance of the sun in a global variable
global.instSun = instance_find(obj_sun,1)
=======
>>>>>>> 559c2e6edcf2778a56c74007923fb975b75a8227
>>>>>>> 0d73626fc8615e3368b523d5a3619f26e8dacb33
