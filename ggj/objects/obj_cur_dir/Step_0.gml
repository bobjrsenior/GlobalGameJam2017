var index = 0;
with(obj_player){
	if m_direction == 0 {
		index = 0;
	}
	else if m_direction < .75 * pi {
		index = 3;
	}
	else if m_direction < 1.25 * pi {
		index = 2;
	}
	else {
		index = 1;
	}
}
image_index = index;

x = x_diff + camera_get_view_x(view_camera[0]);
y = y_diff + camera_get_view_y(view_camera[0]);
