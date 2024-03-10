global.pause = !global.pause;

if (global.pause) {
	// get camera variables
	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);
	var cam_width = camera_get_view_width(view_camera[0]);
	var cam_height = camera_get_view_height(view_camera[0]);
	instance_create_layer(cam_x + (cam_width / 2), (cam_y + (cam_height / 2)) - 32, "UI_Menu", obj_paused_sprite);
	instance_create_layer(cam_x + (cam_width / 2), (cam_y + (cam_height / 2)) + 16, "UI_Menu", obj_menu_button);
	if (!global.music_off) {
		instance_create_layer(cam_x + (cam_width - 20), (cam_y + (cam_height / 2)) + 15, "UI_Menu", mute_music);
	} else {
		instance_create_layer(cam_x + (cam_width - 20), (cam_y + (cam_height / 2)) + 15, "UI_Menu", turn_on_music);
	}
} else {
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
}