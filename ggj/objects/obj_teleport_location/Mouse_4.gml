/// @description Insert description here
var xPos = x;
var yPos = y;

with(obj_player){
	x = xPos;
	y = yPos;
}

audio_play_sound(snd_teleport, 0, false);
scr_var(0);
global.waiting = false;
instance_destroy();