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
	vsp = movespeed * move_multiplier * sin(m_direction);
	hsp = movespeed * move_multiplier * cos(m_direction);


	if place_meeting(x+hsp,y,obj_solid) || place_meeting(x+hsp,y,obj_fmc_hor) || place_meeting(x+hsp,y,obj_fmc_vert){
		while !place_meeting(x+sign(hsp),y,obj_solid) && !place_meeting(x+sign(hsp),y,obj_fmc_hor) && !place_meeting(x+sign(hsp),y,obj_fmc_vert) {
			x += sign(hsp);
		}
		hsp = -hsp;
		m_direction += pi;
		scr_add_var_to_min();
	}

	x += hsp;

	if place_meeting(x,y+vsp,obj_solid) || place_meeting(x,y+vsp,obj_fmc_hor) || place_meeting(x,y+vsp,obj_fmc_vert){
		while !place_meeting(x,y+sign(vsp),obj_solid) && !place_meeting(x,y+sign(vsp),obj_fmc_hor) && !place_meeting(x,y+sign(vsp),obj_fmc_vert){
			y += sign(vsp);
		}
		vsp = -vsp;
		m_direction += pi;
		scr_add_var_to_min();
	}

	y += vsp;
}
else{
	if x % 64 != 0 {
		if x % 64 > 31 {
			x += (64 - x % 64);
		}
		else{
			x -= x % 64;
		}
	}
	
	if y % 64 != 0 {
		if y % 64 > 31 {
			y += (64 - y % 64);
		}
		else{
			y -= y % 64;
		}
	}
}