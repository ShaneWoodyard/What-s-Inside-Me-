if (!global.pause && instance_exists(obj_player_controller)) {
	if (global.kills >= number_of_enemies) {
		for (var i = 0; i < new_enemies; i++) {
			var enemy_type = irandom_range(1, 3);
			var x_variance = irandom_range(-variance, variance);
			var y_variance = irandom_range(-variance, variance);
			if (enemy_type == 1 || global.wave_number < 3){
				instance_create_layer(x + x_variance, y + y_variance, "Spawners", obj_spawner_enemy_demon);
			} else if (enemy_type == 2 || global.wave_number < 5) {
				instance_create_layer(x + x_variance, y + y_variance, "Spawners", obj_spawner_enemy_big_head);
			} else if (enemy_type == 3) {
				instance_create_layer(x + x_variance, y + y_variance, "Spawners", obj_spawner_enemy_wizard);
			}
		}
		number_of_enemies += new_enemies;
		new_enemies++;
		global.wave_number++;
	}
}

