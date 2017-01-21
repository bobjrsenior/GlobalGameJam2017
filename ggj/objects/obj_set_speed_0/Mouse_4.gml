if global.waiting {
	with(obj_player){
		move_multiplier = 0;
	}

	global.waiting = false;
}