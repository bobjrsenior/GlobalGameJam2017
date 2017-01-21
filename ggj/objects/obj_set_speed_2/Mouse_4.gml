if global.waiting {
	with(obj_player){
		move_multiplier = 2;
	}

	global.waiting = false;
}