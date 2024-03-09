loop_alarm_min = 3;
loop_alarm_max = 5;

color_01 = make_color_rgb(0, 0, 0);
color_02 = make_color_rgb(102, 45, 145);
color_03 = make_color_rgb(96, 92, 169);

particle_system = part_system_create_layer("above_player_particles", 0);

particle_trail = part_type_create();

// particle trail 
part_type_sprite(particle_trail, movement_particle, 0, 0, 0);
part_type_life(particle_trail, 15, 30);
part_type_alpha3(particle_trail, 1, 1, 0);
part_type_size(particle_trail, 0.5, 1, 0, 0);
part_type_color3(particle_trail, color_01, color_02, color_03);
part_type_gravity(particle_trail, 0.05, 90);

alarm[1] = 1;
destroy_timer = BULLET_DESTROY;