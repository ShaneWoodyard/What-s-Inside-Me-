if (!global.pause && instance_exists(obj_player_controller)) {
	if (global.kills >= number_of_enemies) {
		for (var i = 0; i < new_enemies; i++) {
			var enemy_type = 1;
			if (global.wave_number >= 7) {
				enemy_type = irandom_range(1, 4);
			} else if (global.wave_number >= 5) {
				enemy_type = irandom_range(1, 3);
			} else if (global.wave_number >= 3) {
				enemy_type = irandom_range(1, 2);
			}
			var location = irandom_range(1, 4);
			switch (location) {
				case 1:
					loc_x = 160;
					loc_y = 304;
					break;
				case 2:
					loc_x = 160;
					loc_y = 96;
					break;
				case 3:
					loc_x = 448;
					loc_y = 96;
					break;
				case 4:
					loc_x = 448;
					loc_y = 288;
					break;
			}
			
			var x_variance = irandom_range(-variance, variance);
			var y_variance = irandom_range(-variance, variance);
			if (enemy_type == 1){
				instance_create_layer(loc_x + x_variance, loc_y + y_variance, "Spawners", obj_spawner_enemy_demon);
			} else if (enemy_type == 2) {
				instance_create_layer(loc_x + x_variance, loc_y + y_variance, "Spawners", obj_spawner_enemy_haunted_sword);
			} else if (enemy_type == 3) {
				instance_create_layer(loc_x + x_variance, loc_y + y_variance, "Spawners", obj_spawner_enemy_big_head);
			} else if (enemy_type == 4) {
				instance_create_layer(loc_x + x_variance, loc_y + y_variance, "Spawners", obj_spawner_enemy_wizard);
			}
		}
		number_of_enemies += new_enemies;
		new_enemies++;
		global.wave_number++;
	}
}

