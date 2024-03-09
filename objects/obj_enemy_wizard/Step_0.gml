if (!global.pause)  {	
current_invincible_cooldown--;
current_attack_cooldown--;
if (instance_exists(obj_player_controller)) {
	if (calc_path_timer-- <= 0) {
		calc_path_timer = calc_path_delay;
		
		var player_found = mp_grid_path(global.mp_grid, path, x, y, 
										obj_player_controller.x, obj_player_controller.y, true);
		if (player_found) {
			path_start(path, move_spd, path_action_stop, false);
		}
	}

	var move_direction = point_direction(x, y, obj_player_controller.x, obj_player_controller.y);

	if (move_direction > 44 && move_direction < 135) {
		face = UP; // 45-134
	} else if (move_direction > 134 && move_direction < 225) {
		face = LEFT; // 135-224
	} else if (move_direction > 224 && move_direction < 315) {
		face = DOWN; // 225-314
	} else {
		face = RIGHT; // 315-359, 0-44
	}
	
	if (current_attack_cooldown <= 0) {
		var rng = random_range(120, 240);
		var bullet1 = instance_create_layer(x, y, "lower_attacks", wizard_orb_attack);
		var bullet2 = instance_create_layer(x, y, "lower_attacks", wizard_orb_attack);
		var bullet3 = instance_create_layer(x, y, "lower_attacks", wizard_orb_attack);
		var bullet4 = instance_create_layer(x, y, "lower_attacks", wizard_orb_attack);
		
		if (attack_pattern) {
			bullet1.direction = 0;
			bullet2.direction = 90;
			bullet3.direction = 180;
			bullet4.direction = 270;
		} else {
			bullet1.direction = 45;
			bullet2.direction = 135;
			bullet3.direction = 225;
			bullet4.direction = 315;
		}
		attack_pattern = !attack_pattern;
		current_attack_cooldown = rng;
	}
} else {
	face = DOWN;
	path_end();
}

if (hp <= 0) {
	instance_destroy();
}

sprite_index = sprite[face];
} else { 
	path_end(); 
	calc_path_timer = 0;
}