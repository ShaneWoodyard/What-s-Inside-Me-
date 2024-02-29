// input variables
var right_key = keyboard_check(ord("D"));
var left_key = keyboard_check(ord("A"));
var up_key = keyboard_check(ord("W"));
var down_key = keyboard_check(ord("S"));
var shift_key = keyboard_check(vk_shift);

// lower cooldowns
current_dash_cooldown--;

// determine what direction to move based on input
x_spd = (right_key - left_key) * move_spd;
y_spd = (down_key - up_key) * move_spd;

// normalize diagonal speed
if (x_spd != 0 && y_spd != 0) {
	x_spd *= diag_move_spd_mult;
	y_spd *= diag_move_spd_mult;
}

// if you dash, calculate dash
if (shift_key != 0 && current_dash_cooldown <= 0) {
	current_dash_cooldown = dash_cooldown;
	x_spd *= dash_spd;
	y_spd *= dash_spd;
}

// if you hit a wall, don't move
if place_meeting(x + x_spd, y, obj_wall) == true {
	x_spd = 0;
}

if place_meeting(x, y + y_spd, obj_wall) == true {
	y_spd = 0;
}





// actually move player
x += x_spd;
y += y_spd;
