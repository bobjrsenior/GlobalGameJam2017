/// @description Insert description here
var xPos = x;
var yPos = y;

with(obj_player){
	x = xPos;
	y = yPos;
}

scr_var(0);
global.waiting = false;
instance_destroy();