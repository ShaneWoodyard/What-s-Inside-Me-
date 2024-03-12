function enemy_death(exp_min, exp_max){
	global.kills++;
	var experience = irandom_range(exp_min, exp_max);
	global.player_exp += experience;
	check_level_up();
}

function check_level_up() {
	var req_exp = (global.req_exp * global.player_level);
	if (global.player_exp >= req_exp) {
		global.player_level++;
		global.req_exp += 10;
		global.pause = true;
		var cam_x = camera_get_view_x(view_camera[0]);
		var cam_y = camera_get_view_y(view_camera[0]);
		var cam_width = camera_get_view_width(view_camera[0]);
		var cam_height = camera_get_view_height(view_camera[0]);
		instance_deactivate_object(obj_UI);
		instance_create_layer(cam_x + (cam_width / 2), cam_y + (cam_height / 2), "UI_Menu", level_up_menu);
		// hp upgrade
		if (global.hp_upgrades < 15) {
			instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 42, "UI_Menu_2", level_up_hp);
		} else {
			instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 42, "UI_Menu_2", no_more_level_up);
		}
		// attack upgrade
		if (global.attack_upgrades < 10) {
			instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 58, "UI_Menu_2", level_up_attack);
		} else {
			instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 58, "UI_Menu_2", no_more_level_up);
		}
		// fire rate upgrade
		if (global.fire_rate_upgrades < 5) {
			instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 74, "UI_Menu_2", level_up_fire_rate);
		} else {
			instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 74, "UI_Menu_2", no_more_level_up);
		}
		// move speed upgrade
		if (global.move_speed_upgrades < 10) {
			instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 90, "UI_Menu_2", level_up_move_speed);
		} else {
			instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 90, "UI_Menu_2", no_more_level_up);
		}
		// dash speed upgrade
		if (global.dash_speed_upgrades < 10) {
			instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 106, "UI_Menu_2", level_up_dash_speed);
		} else {
			instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 106, "UI_Menu_2", no_more_level_up);
		}
		// dash cooldown upgrade
		if (global.dash_cooldown_upgrades < 15) {
			instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 122, "UI_Menu_2", level_up_dash_cooldown);
		} else {
			instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 122, "UI_Menu_2", no_more_level_up);
		}
		// invincibility upgrades
		if (global.invincible_cooldown_upgrades < 15) {
			instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 138, "UI_Menu_2", level_up_invincible_cooldown);
		} else {
			instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 138, "UI_Menu_2", no_more_level_up);
		}
	} 
}

function done_leveling_up() {
	instance_destroy(level_up_menu);
	instance_destroy(level_up_attack);
	instance_destroy(level_up_dash_cooldown);
	instance_destroy(level_up_dash_speed);
	instance_destroy(level_up_fire_rate);
	instance_destroy(level_up_hp);
	instance_destroy(level_up_invincible_cooldown);
	instance_destroy(level_up_move_speed);
	instance_destroy(no_more_level_up);
	
	instance_activate_object(obj_UI);
	
	global.player_hp = global.player_max_hp;
	
	global.pause = false;
}