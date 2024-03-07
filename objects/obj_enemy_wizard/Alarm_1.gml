var rand_loop = irandom_range(1, 3);

repeat(rand_loop) {
	
	var variance = irandom_range(-1.5, 1.5);
	var x_diff = x + variance - 0.5;
	var y_diff = y + variance - 2;
	
	for (var i = 0; i < 5; i++;) {
		randomize();
		var offset_x = random_range(-3, 3);
		var offset_y = random_range(-3, 3);
		part_particles_create(particle_system, x_diff + offset_x, y_diff + offset_y, particle_ghostly, 1);
	}

	

}

var loop_amount = random_range(loop_alarm_min, loop_alarm_max);
alarm_set(1, loop_amount);
