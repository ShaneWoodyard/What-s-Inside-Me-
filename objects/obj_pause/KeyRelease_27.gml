global.pause = !global.pause;

if (global.pause) {
	if (instance_exists(obj_player_controller)){
		instance_create_layer(obj_player_controller.x, obj_player_controller.y - 32, "UI_Menu", obj_paused_sprite);
		instance_create_layer(obj_player_controller.x, obj_player_controller.y + 16, "UI_Menu", obj_menu_button);
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
}