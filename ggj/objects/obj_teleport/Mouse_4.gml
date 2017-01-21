if global.waiting {
	with(obj_player){
		var xPos = x;
		var yPos = y;
		
		// Set horizontal teleport locations
		for(xPos = x - 64 * move_multiplier; xPos <= x + 64 * move_multiplier; xPos += 64){
			if(xPos != x){
				if !place_meeting(xPos, yPos, obj_solid) && !place_meeting(xPos, yPos, obj_border) {
					instance_create_depth(xPos, yPos, 0, obj_teleport_location);
				}
			}
		}
		
		xPos = x;
		
		// Set vertical teleport locations
		for(yPos = y - 64 * move_multiplier; yPos <= y + 64 * move_multiplier; yPos += 64){
			if(yPos != y){
				if !place_meeting(xPos, yPos, obj_solid) && !place_meeting(xPos, yPos, obj_border) {
					instance_create_depth(xPos, yPos, 0, obj_teleport_location);
				}
			}
		}
			
		
	}
}