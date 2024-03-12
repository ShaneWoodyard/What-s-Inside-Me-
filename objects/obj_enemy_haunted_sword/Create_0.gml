//stats
hp = 1;
attack = 3;
move_spd = 0.8;
is_dead = false;

killed_by_player = false;

// sprites
sprite[DOWN] = enemy_haunted_sword;
face = DOWN;

// ghostly particle colors
color_01 = make_color_rgb(238, 28, 36);
color_02 = make_color_rgb(127, 14, 19);
color_03 = make_color_rgb(12, 12, 12);

// particle system
loop_alarm_min = 3;
loop_alarm_max = 5;

particle_system = part_system_create_layer("above_player_particles", 0);

particle_ghostly = part_type_create();

// ghostly particle settings
part_type_sprite(particle_ghostly, movement_particle, 0, 0, 0);
part_type_life(particle_ghostly, 15, 30);
part_type_alpha3(particle_ghostly, 1, 1, 0);
part_type_size(particle_ghostly, 0.5, 1, 0, 0);
part_type_color3(particle_ghostly, color_01, color_02, color_03);
part_type_gravity(particle_ghostly, 0.05, 90);

alarm[1] = 5;