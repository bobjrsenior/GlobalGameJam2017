/// @description Insert description here
if !global.waiting {
	instance_destroy();
}

if position_meeting(mouse_x, mouse_y, id) {
	image_index = 1;
}
else{
	image_index = 0;
}