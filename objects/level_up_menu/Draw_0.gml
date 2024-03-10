var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_width = camera_get_view_width(view_camera[0]);
var cam_height = camera_get_view_height(view_camera[0]);

draw_self();
draw_text_ext(cam_x + (cam_width / 2) - 52, cam_y + 18, leveled_up, 16, 180);
draw_text_ext(cam_x + (cam_width / 2) - 72, cam_y + 34, upgrade_text, 16, 180);
draw_text_ext(cam_x + (cam_width / 2) + 52, cam_y + 34, upgrade_numbers, 16, 180);


