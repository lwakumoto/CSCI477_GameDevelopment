/// @description Initialize game variables

// Game variables
global.playerControl = true;
global.gameOver = false;
global.gameStart = false;

// Player states
enum playerState{
	idle = 0,
	walking = 1,
	pickingUp = 2,
	carrying = 3,
	carryIdle = 4,
	puttingDown = 5,
}

// Item states
enum itemState{
	idle,
	taken,
	used,
	puttingBack,
}

// Sequence states
enum seqState {
	notPlaying,
	waiting,
	playing,
	finished,
}

// Sequence variabels
sequenceState = seqState.notPlaying;
curSeqLayer = noone; // the layer the current sequence is on
curSeq = noone; // current playing sequence

// NPC states 
enum npcState {
	normal, 
	done,
}