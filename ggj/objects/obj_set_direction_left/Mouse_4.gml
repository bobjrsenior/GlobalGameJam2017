if global.waiting {
	with(obj_player){
		m_direction = pi;
	}

	global.waiting = false;
}