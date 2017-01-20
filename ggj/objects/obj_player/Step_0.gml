///Movement
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));

move = key_right + key_left;

hsp = move * movespeed;

if place_meeting(x+hsp,y,obj_solid) {
	while !place_meeting(x+sign(hsp),y,obj_solid) {
		x += sign(hsp);
	}
	x = 0;
}

x += hsp;

if place_meeting(x,y,obj_solid) {
	while !place_meeting(x,y+sign(hsp),obj_solid) {
		x += sign(hsp);
	}
	x = 0;
}

x += hsp;