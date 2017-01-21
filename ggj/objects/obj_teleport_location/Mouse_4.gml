/// @description Insert description here
var xPos = x;
var yPos = y;

with(obj_player){
	x = xPos;
	y = yPos;
}

global.waiting = false;
instance_destroy();