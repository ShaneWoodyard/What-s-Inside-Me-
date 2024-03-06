var rand_loop = irandom_range(1, 3);

repeat(rand_loop) {
	
	if (global.player_hp > 0) {
		var variance = irandom_range(-1.5, 1.5);
		var x_diff = x + variance - 0.5;
		var y_diff = y + variance - 2;
		part_particles_create(particle_system, x_diff, y_diff, particle_trail, 1);
	}
}

var loop_amount = random_range(loop_alarm_min, loop_alarm_max);
alarm_set(1, loop_amount);
