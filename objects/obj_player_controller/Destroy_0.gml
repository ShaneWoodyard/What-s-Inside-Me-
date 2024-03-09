global.pause = true;

// get camera variables
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_width = camera_get_view_width(view_camera[0]);
var cam_height = camera_get_view_height(view_camera[0]);

instance_create_layer(cam_x + (cam_width / 2), (cam_y + (cam_height / 2)) - 32, "UI_Menu", obj_game_over_sprite);
instance_create_layer(cam_x + (cam_width / 2), (cam_y + (cam_height / 2)) + 16, "UI_Menu", obj_menu_button);


