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
		var rng = random_range(90, 180);
		instance_create_layer(x, y, "lower_attacks", red_orb_attack);
		current_attack_cooldown = rng;
	}
} else {
	face = DOWN;
	move_towards_point(x, y, 0);
}

sprite_index = sprite[face];