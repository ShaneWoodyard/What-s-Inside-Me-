var rand_loop = irandom_range(1, 3);

repeat(rand_loop) {
	
	var variance = irandom_range(-1.5, 1.5);
	var x_diff = x + variance - 0.5;
	var y_diff = y + variance - 2;

	if (is_moving) {
		part_particles_create(particle_system, x_diff, y_diff, particle_trail, 1);
	}
	if (dashing) {
		if (face == RIGHT) {
			x_diff = x_diff - dash_offset;
		} else if (face == LEFT) {
			x_diff = x_diff + dash_offset;
		} else if (face == UP) {
			y_diff = y_diff + dash_offset;
		} else if (face == DOWN) {
			y_diff = y_diff - dash_offset;
		}
		
		for (var i = 0; i < 5; i++;) {
			randomize();
			var offset_x = random_range(-2, 2);
			var offset_y = random_range(-2, 2);
			part_particles_create(particle_system, x_diff + offset_x, y_diff + offset_y, particle_trail, 1);
		}
		
	
	}

}

var loop_amount = random_range(loop_alarm_min, loop_alarm_max);
alarm_set(1, loop_amount);