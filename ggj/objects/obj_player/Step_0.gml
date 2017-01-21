///Movement
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);

// Change direction based on what is pressed
/*if key_right {
	m_direction = 0
}
else if key_up {
	m_direction = 3 * pi / 2;
}
else if key_left {
	m_direction = pi;
}
else if key_down {
	m_direction = pi / 2;
}*/


if global.play {
	// Set speed based on movement direction
	vsp = movespeed * sin(m_direction);
	hsp = movespeed * cos(m_direction);

	if place_meeting(x+hsp,y,obj_solid) {
		while !place_meeting(x+sign(hsp),y,obj_solid) {
			x += sign(hsp);
		}
		hsp = 0;
	}

	x += hsp;

	if place_meeting(x,y+vsp,obj_solid) {
		while !place_meeting(x,y+sign(vsp),obj_solid) {
			y += sign(vsp);
		}
		vsp = 0;
	}

	y += vsp;
}