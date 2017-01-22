/// @description Insert description here
var index = 0;
with(obj_player){
	if m_direction == 0 {
		index = 0;
	}
	else if m_direction < 0.75 * pi {
		index = 1;
	}
	else if m_direction < 1.25 * pi {
		index = 2;
	}
	else {
		index = 3;
	}
}
image_index = index;