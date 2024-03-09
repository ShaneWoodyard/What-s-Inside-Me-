var rand_loop = irandom_range(1, 3);

repeat(rand_loop) {
	for (var i = 0; i < 20; i++;) {
		var x_variance = irandom_range(-5, 5);
		var y_variance = irandom_range(-5, 5);
		var x_diff = x + x_variance - 0.5;
		var y_diff = y + y_variance - 2;

		part_particles_create(particle_system, x_diff, y_diff, particle_trail, 1);
	}
}