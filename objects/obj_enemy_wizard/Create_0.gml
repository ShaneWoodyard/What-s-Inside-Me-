//stats
hp = 15;
attack = 5;
speed = 0.1;

// only for the demon and chicken attacks, cooldown set inside each since they are different
invincible_cooldown = 60;
current_invincible_cooldown = 0; // if 0 or less they AREN'T invincible

// attack cooldown
attack_cooldown = 120;
current_attack_cooldown = 180;

// attack switch (this just decides if the attack pattern is on axis or diagonals)
attack_pattern = true;

// sprites
sprite[RIGHT] = enemy_wizard_right;
sprite[UP] = enemy_wizard_up;
sprite[LEFT] = enemy_wizard_left;
sprite[DOWN] = enemy_wizard_down;

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