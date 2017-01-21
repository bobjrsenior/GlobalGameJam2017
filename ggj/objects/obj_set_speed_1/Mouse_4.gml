if global.waiting {
	with(obj_player){
		move_multiplier = 1;
	}

	audio_play_sound(snd_spd_1, 0, false);
	scr_var(1);
	global.waiting = false;
}