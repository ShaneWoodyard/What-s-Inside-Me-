if (global.pause) {
	speed = 0
} else {
	speed = spd;
	if (destroy_timer-- <= 0) {
		alarm_set(2, 1);
	}
}