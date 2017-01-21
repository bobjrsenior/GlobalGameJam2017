if global.waiting {
	with(obj_player){
		move_multiplier = 1;
	}

	global.waiting = false;
}