// particle colors
color_01 = make_color_rgb(215, 215, 215);
color_02 = make_color_rgb(149, 149, 149);
color_03 = make_color_rgb(99, 99, 99);

loop_alarm_min = 3;
loop_alarm_max = 5;

particle_system = part_system_create_layer("above_player_particles", 0);

particle_trail = part_type_create();

part_type_sprite(particle_trail, movement_particle, 0, 0, 0);
part_type_life(particle_trail, 30, 60);
part_type_alpha3(particle_trail, 1, 1, 0);
part_type_size(particle_trail, 0.5, 2, 0, 0);
part_type_color3(particle_trail, color_01, color_02, color_03);
part_type_gravity(particle_trail, 0.03, 90);

alarm[1] = 1;
alarm[2] = 150;



