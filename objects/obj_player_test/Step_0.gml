// input variables
var right_key = keyboard_check(ord("D"));
var left_key = keyboard_check(ord("A"));
var up_key = keyboard_check(ord("W"));
var down_key = keyboard_check(ord("S"));

// determine what direction to move based on input
x_spd = (right_key - left_key) * move_spd;
y_spd = (down_key - up_key) * move_spd;

// if you hit a wall, don't move
if place_meeting(x + x_spd, y, obj_wall) == true {
	x_spd = 0;
}

if place_meeting(x, y + y_spd, obj_wall) == true {
	y_spd = 0;
}

if (x_spd != 0 && y_spd != 0) {
	x_spd *= diag_move_spd_mult;
	y_spd *= diag_move_spd_mult;
}

// actually move player
x += x_spd;
y += y_spd;
