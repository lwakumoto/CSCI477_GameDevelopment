// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_killEnemy(enemy){
	instance_destroy(enemy)
	effect_create_above(ef_explosion,enemy.x, enemy.y, 20, c_red)
}