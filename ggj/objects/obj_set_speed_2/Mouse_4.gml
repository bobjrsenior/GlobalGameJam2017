if global.waiting {
	with(obj_player){
		move_multiplier = 2;
	}

	audio_play_sound(snd_spd_2, 0, false);
	scr_var(1);
	global.waiting = false;
}