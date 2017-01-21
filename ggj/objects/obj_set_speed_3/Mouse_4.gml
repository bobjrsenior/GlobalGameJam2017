if global.waiting {
	with(obj_player){
		move_multiplier = 3;
	}

	global.dir_var += 1 + global.spd_var;
	global.spd_var = 0;
	
	if global.dir_var > 3 {
		global.dir_var = 3;
	}
	global.waiting = false;
}