if global.waiting {
	with(obj_player){
		m_direction = pi / 2;
	}

	scr_var(2);
	global.waiting = false;
}