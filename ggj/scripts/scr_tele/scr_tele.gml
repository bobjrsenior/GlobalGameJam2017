///scr_tele()
with(obj_player){
	var xPos = x;
	var xPos = y;

	var continue_loop = true;
			
	var iterations = 0;
	
	while continue_loop && iterations < 10 {
		var teleport_dir = random(1);
				
		// if horizontal teleport
		if teleport_dir > 0.5 {
			xPos = x + 64 * (irandom_range(-1, 1));
			yPos = y;
		}
		else{
			xPos = x;
			yPos = y + 64 * (irandom_range(-1, 1));
		}

		if xPos != x || yPos != y {
			continue_loop = place_meeting(xPos, yPos, obj_solid) || place_meeting(xPos, yPos, obj_border);
			iterations++;
		}
	}
	
	x = xPos;
	y = yPos;
	
	if !continue_loop {
		audio_play_sound(snd_teleport, 0, false);
	}
}
