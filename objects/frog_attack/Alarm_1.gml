var rand_loop = irandom_range(1, 3);

repeat(rand_loop) {
	var variance = irandom_range(-1.5, 1.5);
	var x_diff = x + variance;
	var y_diff = y + variance;
	
	part_particles_create(particle_system, x_diff, y_diff, particle_trail, 1);
}

var loop_amount = random_range(loop_alarm_min, loop_alarm_max);
alarm_set(1, loop_amount);