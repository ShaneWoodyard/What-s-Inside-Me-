// human stats
max_hp = 100;
global.player_atk = 5;

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
attack_cooldown = 15;
current_attack_cooldown = 0;

// sprites
sprite[RIGHT] = player_demon_idle_right;
sprite[UP] = player_demon_idle_up;
sprite[LEFT] = player_demon_idle_left;
sprite[DOWN] = player_demon_idle_down;
sprite[IDLE_RIGHT] = player_demon_idle_right;
sprite[IDLE_UP] = player_demon_idle_up;
sprite[IDLE_LEFT] = player_demon_idle_left;
sprite[IDLE_DOWN] = player_demon_idle_down;

face = IDLE_DOWN;

// ghostly particle colors
color_01 = make_color_rgb(96, 92, 169);
color_02 = make_color_rgb(66, 63, 117);
color_03 = make_color_rgb(12, 12, 12);

// particle system
is_moving = false;
dashing = false;

dash_offset = 3;

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

