damage = 5;
spd = 0.5;

speed = spd;


loop_alarm_min = 3;
loop_alarm_max = 5;

color_01 = make_color_rgb(238, 28, 36);
color_02 = make_color_rgb(68, 7, 10);
color_03 = make_color_rgb(16, 16, 16);

particle_system = part_system_create_layer("particles", 0);

particle_trail = part_type_create();

// particle trail 
part_type_sprite(particle_trail, movement_particle, 0, 0, 0);
part_type_life(particle_trail, 25, 30);
part_type_alpha3(particle_trail, 1, 1, 0);
part_type_size(particle_trail, 0.5, 1, 0, 0);
part_type_color3(particle_trail, color_01, color_02, color_03);
part_type_gravity(particle_trail, 0.01, 270);

alarm[1] = 1;
alarm[2] = 480;