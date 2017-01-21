///scr_var(type)
var move_type = argument0;

// Not Location
if move_type != 0 {
	if global.loc_var == 2 {
		if random(1) > 0.5 {
			with(obj_player){
				scr_tele();
			}
			global.loc_var = 0;
		}
	}
	else if global.loc_var == 3 {
		with(obj_player){
			scr_tele();
		}
		global.loc_var = 0;
	}
}
else{
	global.spd_var += 1 + global.loc_var;
	global.loc_var = 0;
	
	if global.spd_var > 3 {
		global.spd_var = 3;
	}
}

// Not Speed
if move_type != 1 {
	if global.spd_var == 2 {
		if random(1) > 0.5 {
			with(obj_player){
				move_multiplier = irandom_range(1, 3);
			}
			global.spd_var = 0;
		}
	}
	else if global.spd_var == 3 {
		with(obj_player){
			move_multiplier = irandom_range(1, 3);
		}
		global.spd_var = 0;
	}
}
else{
	global.dir_var += 1 + global.spd_var;
	global.spd_var = 0;
	
	if global.dir_var > 3 {
		global.dir_var = 3;
	}
}

// Not Direction
if move_type != 2 {
	if global.dir_var == 2 {
		if random(1) > 0.5 {
			with(obj_player){
				m_direction = irandom(4) * (pi / 2);
			}
			global.dir_var = 0;
		}
	}
	else if global.dir_var == 3 {
		with(obj_player){
			m_direction = irandom(4) * (pi / 2);
		}
		global.dir_var = 0;
	}
}
else{
	global.loc_var += 1 + global.dir_var;
	global.dir_var = 0;
	
	if global.loc_var > 3 {
		global.loc_var = 3;
	}
}
