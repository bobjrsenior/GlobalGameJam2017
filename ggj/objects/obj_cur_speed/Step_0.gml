var index = 0;
with(obj_player){
	index = move_multiplier - 1;
}
image_index = index;

x = x_diff + camera_get_view_x(view_camera[0]);
y = y_diff + camera_get_view_y(view_camera[0]);
