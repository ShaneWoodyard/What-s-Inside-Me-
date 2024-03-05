if (hp <= 0) {
	instance_destroy();
}

current_invincible_cooldown--;

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

sprite_index = sprite[face];