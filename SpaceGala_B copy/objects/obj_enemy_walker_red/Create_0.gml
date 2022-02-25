/// @description Red enemy on a path

event_inherited();
color = colors.red;

// Attach it to our path0.
spd = 3;
path_start(Path1, spd, path_action_reverse, false);