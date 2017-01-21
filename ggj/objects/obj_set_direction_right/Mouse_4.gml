if global.waiting {
	with(obj_player){
		m_direction = 0;
	}

	global.waiting = false;
}