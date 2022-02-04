/// @description Variables and setupo

// Textbox variables
textToShow = "I am Error";
textWidth = 450; // width of text
lineHeight = 28; // seperation between lines

// fadein variables
fadeMe = 0;
fadeSpeed = 0.1;
image_alpha = 0;

// sequence
sequenceToShow = noone

// Play UI sound
audio_play_sound(snd_pop01, 1, false);
global.playerControl = false; // if the dialogue box exists, the player can't move

scr_dismissPrompt(obj_prompt,0);

