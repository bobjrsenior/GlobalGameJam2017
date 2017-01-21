/// @description Teleport
var new_xPos = x;
var new_xPos = y;

var continue_loop = true;
			
while continue_loop {
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
		continue_loop = place_meeting(xPos, yPos, obj_solid);
	}
}
	
x = xPos;
y = yPos;