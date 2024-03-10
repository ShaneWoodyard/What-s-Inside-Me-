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
		global.req_exp += 5;
		global.pause = true;
		var cam_x = camera_get_view_x(view_camera[0]);
		var cam_y = camera_get_view_y(view_camera[0]);
		var cam_width = camera_get_view_width(view_camera[0]);
		var cam_height = camera_get_view_height(view_camera[0]);
		instance_deactivate_object(obj_UI);
		instance_create_layer(cam_x + (cam_width / 2), cam_y + (cam_height / 2), "UI_Menu", level_up_menu);
		instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 42, "UI_Menu_2", level_up_hp);
		instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 58, "UI_Menu_2", level_up_attack);
		instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 74, "UI_Menu_2", level_up_fire_rate);
		instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 90, "UI_Menu_2", level_up_move_speed);
		instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 106, "UI_Menu_2", level_up_dash_speed);
		instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 122, "UI_Menu_2", level_up_dash_cooldown);
		instance_create_layer(cam_x + (cam_width / 2) + 40, cam_y + 138, "UI_Menu_2", level_up_invincible_cooldown);
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
	
	instance_activate_object(obj_UI);
	
	global.player_hp = global.player_max_hp;
	
	global.pause = false;
}