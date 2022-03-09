/// @description Insert description here
// You can write your code in this editor

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

// Save the one instance of the sun in a global variable
global.instSun = instance_find(obj_sun,1)