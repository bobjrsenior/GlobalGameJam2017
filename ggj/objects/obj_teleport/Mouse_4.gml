if global.waiting {
	with(obj_player){
		var xPos = x;
		var yPos = y;
		
		// Set horizontal teleport locations
		xPos = x - 64 * move_multiplier;
		if(xPos != x){
			if !place_meeting(xPos, yPos, obj_solid) && !place_meeting(xPos, yPos, obj_border) {
				instance_create_depth(xPos, yPos, 0, obj_teleport_location);
			}
		}
		xPos = x + 64 * move_multiplier
		if(xPos != x){
			if !place_meeting(xPos, yPos, obj_solid) && !place_meeting(xPos, yPos, obj_border) {
				instance_create_depth(xPos, yPos, 0, obj_teleport_location);
			}
		}
		
		xPos = x;
		
		// Set vertical teleport locations
		yPos = y - 64 * move_multiplier;
		if(yPos != y){
			if !place_meeting(xPos, yPos, obj_solid) && !place_meeting(xPos, yPos, obj_border) {
				instance_create_depth(xPos, yPos, 0, obj_teleport_location);
			}
		}
		
		yPos = y + 64 * move_multiplier;
		if(yPos != y){
			if !place_meeting(xPos, yPos, obj_solid) && !place_meeting(xPos, yPos, obj_border) {
				instance_create_depth(xPos, yPos, 0, obj_teleport_location);
			}
		}
		
	}
}