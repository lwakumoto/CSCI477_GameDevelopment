/// @description Shooting

// Create and shoot a bullet down from this enemy.
// Reset alarm for random shooting.
var bullet = instance_create_layer(x, y, "Instances", obj_bullet_enemy);
bullet.atk = atk;
bullet.direction = point_direction(x, y, x, y+1);
bullet.speed = bullet.spd;
alarm[1] = room_speed * random_range(0.5, 5);