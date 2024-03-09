// get camera variables
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_width = camera_get_view_width(view_camera[0]);
var cam_height = camera_get_view_height(view_camera[0]);

var health_string = string_concat("HP: ", string(global.player_hp));
var kill_string = string_concat("Kills: ", string(global.kills));

draw_text_ext(cam_x + 8, cam_y + 6, health_string, 16, 180);
draw_text_ext(cam_x + 8, cam_y + 22, kill_string, 16, 180);

