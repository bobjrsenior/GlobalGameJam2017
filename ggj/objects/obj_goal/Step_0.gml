/// @description Insert description here
if place_meeting(x, y, obj_player) {
	room_goto_next();
}

x_diff = x - camera_get_view_x(view_camera[0]);
y_diff = y - camera_get_view_y(view_camera[0]);
