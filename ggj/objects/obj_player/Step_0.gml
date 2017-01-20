///Movement
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_jump = keyboard_check(ord("W"));

move = key_right + key_left;

hsp = move * movespeed;

if vsp < 20 {
	vsp += grav;
}

if place_meeting(x,y+1,obj_solid) {
	vsp = key_jump * -jumpspeed;
}

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