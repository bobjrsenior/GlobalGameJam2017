/// @description Insert description here

if position_meeting(mouse_x, mouse_y, id) {
	image_index = 1;
}
else{
	image_index = 0;
}

x = x_diff + camera_get_view_x(view_camera[0]);
y = y_diff + camera_get_view_y(view_camera[0]);
