if (!global.pause) {
	speed = gust_spd;
	if (destroy_timer-- <= 0) {
		alarm_set(2, 1);
	}
} else {
	speed = 0;
}