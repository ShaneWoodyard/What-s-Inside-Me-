if (!global.pause) {
	speed = bubble_spd;
	if (destroy_timer-- <= 0) {
		alarm_set(2, 1);
	}
} else {
	speed = 0;
}