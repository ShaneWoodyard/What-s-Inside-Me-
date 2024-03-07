if (hp <= 0) {
	instance_destroy();
}

current_invincible_cooldown--;
current_attack_cooldown--;
if (instance_exists(obj_player_controller)) {
	move_towards_point(obj_player_controller.x, obj_player_controller.y, speed);

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
	move_towards_point(x, y, 0);
}

sprite_index = sprite[face];