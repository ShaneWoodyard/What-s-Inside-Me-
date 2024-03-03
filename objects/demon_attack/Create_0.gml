image_angle = point_direction(obj_player_demon.x, obj_player_demon.y, mouse_x, mouse_y);

first_run = true;

sword_spd = 2;

loop_alarm_min = 3;
loop_alarm_max = 5;

color_01 = make_color_rgb(255, 0, 0);
color_02 = make_color_rgb(100, 0, 0);
color_03 = make_color_rgb(0, 0, 0);

particle_system = part_system_create_layer("particles", 0);

particle_trail = part_type_create();
particle_sword = part_type_create();

// particle trail 
part_type_sprite(particle_trail, movement_particle, 0, 0, 0);
part_type_life(particle_trail, 15, 20);
part_type_alpha3(particle_trail, 1, 1, 0);
part_type_size(particle_trail, 0.5, 1, 0, 0);
part_type_color3(particle_trail, color_01, color_02, color_03);
part_type_gravity(particle_trail, 0.01, 270);

// particle sword
part_type_sprite(particle_sword, sword, 0, 0, 0);
part_type_life(particle_sword, 300, 300);
part_type_size(particle_sword, 0.5, 0.5, 0, 0);
part_type_speed(particle_sword, sword_spd, sword_spd, 0, 0);
part_type_orientation(particle_sword, image_angle - 10, image_angle + 10, 0.1, 0, 0);
part_type_direction(particle_sword, image_angle, image_angle, 0, 0);

alarm[1] = 1;
alarm[2] = 300;