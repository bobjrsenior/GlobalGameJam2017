if global.waiting {
	with(obj_player){
		if move_multiplier != 0 {
			var new_xPos = x;
			var new_xPos = y;

			var num_positions = 1 + (2 * move_multiplier);
			var num_positions = num_positions * num_positions;
	
			var continue_loop = true;
			
			while continue_loop {
				var teleport_dir = random(1);
			
				// if horizontal teleport
				if teleport_dir > 0.5 {
					xPos = x + 64 * (irandom_range(-move_multiplier, move_multiplier));
					yPos = y;
				}
				else{
					xPos = x;
					yPos = y + 64 * (irandom_range(-move_multiplier, move_multiplier));
				}

				if xPos != x || yPos != y {
					continue_loop = place_meeting(xPos, yPos, obj_solid);
				}
			}
	
			x = xPos;
			y = yPos;
		}
	}
	
	global.waiting = false;
}