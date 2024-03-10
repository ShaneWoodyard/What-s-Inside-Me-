global.pause = false;

if (instance_exists(obj_paused_sprite)) {
	instance_destroy(obj_paused_sprite);
}
if (instance_exists(obj_menu_button)) {
	instance_destroy(obj_menu_button);
}
if (instance_exists(obj_menu_no)) {
	instance_destroy(obj_menu_no);
}
if (instance_exists(obj_menu_yes)) {
	instance_destroy(obj_menu_yes);
}
if (instance_exists(mute_music)) {
	instance_destroy(mute_music);
}
if (instance_exists(turn_on_music)) {
	instance_destroy(turn_on_music);
}

