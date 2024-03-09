if (!global.pause) {
	if (destroy_timer-- <= 0) {
		alarm_set(2, 1);
	}
}

