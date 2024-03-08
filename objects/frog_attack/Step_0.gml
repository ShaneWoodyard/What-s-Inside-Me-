if (instance_exists(obj_player_frog)) {
	image_angle = point_direction(obj_player_frog.x, obj_player_frog.y, mouse_x, mouse_y);
}
direction = image_angle;
speed = fly_spd;