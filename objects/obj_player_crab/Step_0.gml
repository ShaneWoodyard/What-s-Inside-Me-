// input variables
var right_key = keyboard_check(ord("D"));
var left_key = keyboard_check(ord("A"));
var up_key = keyboard_check(ord("W"));
var down_key = keyboard_check(ord("S"));
var shift_key = keyboard_check(vk_shift);
var left_click = mouse_check_button_pressed(mb_left);

// make sure player is alive
if (global.player_hp <= 0) {
	instance_destroy();
}

// lower cooldowns
current_dash_cooldown--;
current_attack_cooldown--;

// determine what direction to move based on input
x_spd = (right_key - left_key) * move_spd;
y_spd = (down_key - up_key) * move_spd;

// normalize diagonal speed
if (x_spd != 0 && y_spd != 0) {
	x_spd *= diag_move_spd_mult;
	y_spd *= diag_move_spd_mult;
}

// if you dash, calculate dash
if (shift_key != 0 && current_dash_cooldown <= 0 && is_moving) {
	current_dash_cooldown = dash_cooldown;
	dashing = true;
} else if (current_dash_cooldown < dash_cooldown / 2) {
	dashing = false;
}

if (dashing) {
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

//determine which sprite to use
if (y_spd == 0){
	if (x_spd > 0) {face = RIGHT;}
	if (x_spd < 0) {face = LEFT;}
	is_moving = true;
}
if (x_spd == 0){
	if (y_spd > 0) {face = DOWN;}
	if (y_spd < 0) {face = UP;}
	is_moving = true;
}

// check if player idle
if (x_spd == 0 && y_spd == 0) {
	if (face == RIGHT) {face = IDLE_RIGHT;}
	if (face == LEFT) {face = IDLE_LEFT;}
	if (face == DOWN) {face = IDLE_DOWN;}
	if (face == UP) {face = IDLE_UP;}
	is_moving = false;
}

// attack check
if (left_click && current_attack_cooldown <= 0) {
	var shoot_direction = point_direction(x, y, mouse_x, mouse_y);
	if ((shoot_direction > 44 && shoot_direction < 135) || (shoot_direction > 224 && shoot_direction < 315)){
		instance_create_layer(x - 4, y - 4, layer, crab_attack);
		instance_create_layer(x, y - 4, layer, crab_attack);
		instance_create_layer(x + 4, y - 4, layer, crab_attack);
	} else {
		instance_create_layer(x, y - 8, layer, crab_attack);
		instance_create_layer(x, y - 4, layer, crab_attack);
		instance_create_layer(x, y, layer, crab_attack);
	}
	
	current_attack_cooldown = attack_cooldown;
}

//set sprite
sprite_index = sprite[face];

// actually move player
x += x_spd;
y += y_spd;
