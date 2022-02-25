/// @description Insert description here
// You can write your code in this editor

// Built-in particle system
// Make a firework effect at the enemie's location
effect_create_above(ef_firework,x,y,0.1,c_yellow);
global.playerScore += 100


/*

instance_create_layer(random_range(0,room_width), random_range(0,room_height), "Instances",obj_enemy)
instance_create_layer(random_range(0,room_width), random_range(0,room_height), "Instances",obj_enemy)