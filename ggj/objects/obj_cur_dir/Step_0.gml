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