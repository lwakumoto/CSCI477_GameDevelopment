/// @description Insert description here
// You can write your code in this editor

// Health, damage, speed, and direction (left or right)
hp = 2;
atk = 2;
spd = 1;
dir = 1;

// "Bounds" of movement for enemy
start_x = x - 25;
end_x = x + 25;

move_down_speed = room_speed * 3

alarm[0] = move_down_speed

// firing variables
rand_fire_delay = room_speed * random_range(0.5, 5)
alarm[1] = rand_fire_delay
direction = 270