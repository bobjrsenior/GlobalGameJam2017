if global.waiting {
	with(obj_player){
		move_multiplier = 3;
	}

	scr_var(1);
	global.waiting = false;
}