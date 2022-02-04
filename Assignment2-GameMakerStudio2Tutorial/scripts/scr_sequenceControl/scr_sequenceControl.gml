// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playSequence(_seqToPlay){
if (_seqToPlay != noone) {
	// Set seqeuence to center of camera view
	var _camX = camera_get_view_x(view_camera[0]) + floor(camera_get_view_width(view_camera[0]) * 0.5);
	var _camY = camera_get_view_y(view_camera[0]) + floor(camera_get_view_height(view_camera[0]) * 0.5);

	// Create sequence on the proper layer
	if (instance_exists(obj_control) && !layer_sequence_exists(obj_control.curSeqLayer,_seqToPlay)){
		if (layer_exists(obj_control.curSeqLayer)){
			layer_sequence_create(obj_control.curSeqLayer,_camX,_camY,_seqToPlay);	
			// make sure cutscenes layer is above the action
			layer_depth(obj_control.curSeqLayer, -10000);
		}
	}
}
}