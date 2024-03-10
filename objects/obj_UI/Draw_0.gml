// get camera variables
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_width = camera_get_view_width(view_camera[0]);
var cam_height = camera_get_view_height(view_camera[0]);

var level_string = string_concat("Level: ", string(global.player_level));
var exp_string = string_concat("Experience: ", string(global.player_exp), "/", string(global.player_level * global.req_exp));
var health_string = string_concat("HP: ", string(global.player_hp));
var kill_string = string_concat("Kills: ", string(global.kills));


draw_text_ext(cam_x + 6, cam_y + 2, health_string, 16, 180);
draw_text_ext(cam_x + 6, cam_y + 16, kill_string, 16, 180);
draw_text_ext(cam_x + 6, cam_y + cam_height - 30, level_string, 16, 180);
draw_text_ext(cam_x + 6, cam_y + cam_height - 16, exp_string, 16, 180);

