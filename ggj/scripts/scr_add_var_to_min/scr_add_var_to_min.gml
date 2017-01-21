///scr_add_var_to_min()
var min_var = 2;

if global.loc_var < min_var {
	min_var = global.loc_var;
}
if global.spd_var < min_var {
	min_var = global.spd_var;
}
if global.dir_var < min_var {
	min_var = global.dir_var;
}

if global.loc_var == min_var {
	global.loc_var += 1;
}
if global.spd_var == min_var {
	global.spd_var += 1;
}
if global.dir_var == min_var {
	global.dir_var += 1;
}