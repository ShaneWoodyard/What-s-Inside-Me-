#macro view view_camera[0]

camera_set_view_size(view, view_width, view_height);

if (instance_exists(obj_player_controller)) {
	var _x = clamp(obj_player_controller.x - view_width / 2, 0, room_width - view_width);
	var _y = clamp(obj_player_controller.y - view_height / 2, 0, room_height - view_height);
	camera_set_view_pos(view, _x, _y);
}




