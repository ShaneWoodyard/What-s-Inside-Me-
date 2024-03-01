// actual speed
x_spd = 0;
y_spd = 0;

// speed multipliers
move_spd = 1;
diag_move_spd_mult = 0.707; // multiply by this when going diagonal
dash_spd = 2;

// ability cooldown 60 = 1 sec
dash_cooldown = 90; 
current_dash_cooldown = 0;

// sprites
sprite[RIGHT] = player_human_move_right;
sprite[UP] = player_human_move_up;
sprite[LEFT] = player_human_move_left;
sprite[DOWN] = player_human_move_down;
sprite[IDLE_RIGHT] = player_human_idle_right;
sprite[IDLE_UP] = player_human_idle_up;
sprite[IDLE_LEFT] = player_human_idle_left;
sprite[IDLE_DOWN] = player_human_idle_down;

face = IDLE_DOWN;

// walking particle colors
color_01 = make_color_rgb(215, 215, 215);
color_02 = make_color_rgb(149, 149, 149);
color_03 = make_color_rgb(99, 99, 99);

// particle system
is_moving = false;
dashing = false;

dash_offset = 3;

loop_alarm_min = 3;
loop_alarm_max = 5;

particle_system = part_system_create_layer("particle_trail", 0);

particle_trail = part_type_create();

part_type_sprite(particle_trail, movement_particle, 0, 0, 0);
part_type_life(particle_trail, 20, 25);
part_type_alpha3(particle_trail, 1, 1, 0);
part_type_size(particle_trail, 0.5, 2, 0, 0);
part_type_color3(particle_trail, color_01, color_02, color_03);
part_type_gravity(particle_trail, 0.01, 270);

alarm[1] = 5;

