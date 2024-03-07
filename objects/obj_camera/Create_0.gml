view_height = 768 / 4;
view_width = 1024 / 4;

view_scale = 1;

window_set_size(view_width * view_scale, view_height * view_scale);
alarm[0] = 1;

surface_resize(application_surface, view_width * view_scale, view_height * view_scale);

