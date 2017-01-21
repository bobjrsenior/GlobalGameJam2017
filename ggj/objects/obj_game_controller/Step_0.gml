play_countdown -= 1;

if play_countdown == 0 {
	global.play = false;
	global.waiting = true;
}

if global.waiting == false && global.play = false {
	global.play = true;
	play_countdown = turn_step_count;
}

show_debug_message(global.loc_var);