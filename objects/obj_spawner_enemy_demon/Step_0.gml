if (!global.pause && instance_exists(obj_player_controller)) {
	if (current_spawn_timer-- <= 0) {
		instance_create_layer(x, y, "Instances", obj_enemy_demon);
		var rng = random_range(5, 10);
		current_spawn_timer = rng * ONE_SECOND;
	}
}

