if global.waiting {
	with(obj_player){
		m_direction = 0;
	}

	scr_var(2);
	global.waiting = false;
}