if (!global.pause && instance_exists(obj_player_controller)) {
	if (current_spawn_timer-- <= 0) {
		instance_create_layer(x, y, "Instances", obj_enemy_big_head);
		var	rng = random_range(10, 20);
		current_spawn_timer = rng * ONE_SECOND;
	}
}

