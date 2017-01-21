if global.waiting {
	with(obj_player){
		m_direction = 3 * pi / 2;
	}

	global.waiting = false;
}