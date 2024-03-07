//stats
hp = 25;
attack = 10;
move_spd = 0.3;

// only for the demon and chicken attacks, cooldown set inside each since they are different
invincible_cooldown = 60;
current_invincible_cooldown = 0; // if 0 or less they AREN'T invincible

// attack cooldown
attack_cooldown = 120;
current_attack_cooldown = 180;

// sprites
sprite[RIGHT] = enemy_big_head_right;
sprite[UP] = enemy_big_head_up;
sprite[LEFT] = enemy_big_head_left;
sprite[DOWN] = enemy_big_head_down;

face = DOWN;

// create path
path = path_add();
calc_path_delay = 30;
calc_path_timer = irandom(60);

// ghostly particle colors
color_01 = make_color_rgb(105, 45, 145);
color_02 = make_color_rgb(53, 23, 76);
color_03 = make_color_rgb(16, 16, 16);

// particle system
loop_alarm_min = 3;
loop_alarm_max = 5;

particle_system = part_system_create_layer("particles", 0);

particle_trail = part_type_create();

// particle settings
part_type_sprite(particle_trail, movement_particle, 0, 0, 0);
part_type_life(particle_trail, 30, 35);
part_type_alpha3(particle_trail, 1, 1, 0);
part_type_size(particle_trail, 0.5, 2, 0, 0);
part_type_color3(particle_trail, color_01, color_02, color_03);
part_type_gravity(particle_trail, 0.01, 270);

alarm[1] = 5;