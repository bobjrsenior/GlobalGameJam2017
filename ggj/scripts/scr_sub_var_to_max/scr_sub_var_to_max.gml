///scr_sub_var_to_max()
var max_var = 1;

if global.loc_var > max_var {
	max_var = global.loc_var;
}
if global.spd_var > max_var {
	max_var = global.spd_var;
}
if global.dir_var > max_var {
	max_var = global.dir_var;
}

if global.loc_var == max_var {
	global.loc_var -= 1;
}
if global.spd_var == max_var {
	global.spd_var -= 1;
}
if global.dir_var == max_var {
	global.dir_var -= 1;
}