if global.waiting {
	with(obj_player){
		move_multiplier = 3;
	}

	global.waiting = false;
}