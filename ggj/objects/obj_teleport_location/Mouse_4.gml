/// @description Insert description here
var xPos = x;
var yPos = y;

with(obj_player){
	x = xPos;
	y = yPos;
}

global.spd_var += 1 + global.loc_var;
global.loc_var = 0;
	
if global.spd_var > 3 {
	global.dir_var = 3;
}
global.waiting = false;
instance_destroy();