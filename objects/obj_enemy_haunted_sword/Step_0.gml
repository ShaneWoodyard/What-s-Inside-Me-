if (!global.pause) {
if (instance_exists(obj_player_controller)) {
	move_towards_point(obj_player_controller.x, obj_player_controller.y, move_spd);
	image_angle = direction - 225;
	}
} else {
	face = DOWN;
	move_towards_point(x, y, 0);
	direction = 0;
}

if (hp <= 0) {
	instance_destroy();
}

sprite_index = sprite[face];
