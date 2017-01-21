if global.waiting {
	with(obj_player){
		m_direction = pi / 2;
	}

	global.loc_var += 1 + global.dir_var;
	global.dir_var = 0;
	
	if global.loc_var > 3 {
		global.loc_var = 3;
	}
	global.waiting = false;
}