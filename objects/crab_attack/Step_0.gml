if (!global.pause) {
	speed = bubble_spd;
	if (destroy_timer-- <= 0) {
		alarm_set(2, 1);
	}
	part_system_automatic_update(particle_system, true);
} else {
	speed = 0;
	part_system_automatic_update(particle_system, false);
}