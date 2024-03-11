// chicken stats
global.player_atk = 5  + (global.attack_upgrades * 1);

// invincible cooldown
invincible_cooldown = 60 + (global.invincible_cooldown_upgrades * 1);
current_invincible_cooldown = 0;

// stuff for player turning red when hurt
blend = image_blend;
blendtime = 0;

// actual speed
x_spd = 0;
y_spd = 0;

// speed multipliers
move_spd = 1 + (global.move_speed_upgrades * 0.01);
diag_move_spd_mult = 0.707; // multiply by this when going diagonal
dash_spd = 2 + (global.dash_speed_upgrades * 0.02);

// ability cooldown 60 = 1 sec
dash_cooldown = 90 - (global.dash_cooldown_upgrades * 1); 
current_dash_cooldown = 0;
attack_cooldown = 20 - (global.fire_rate_upgrades * 1);
current_attack_cooldown = 0;

// sprites
sprite[RIGHT] = player_chicken_move_right;
sprite[UP] = player_chicken_move_up;
sprite[LEFT] = player_chicken_move_left;
sprite[DOWN] = player_chicken_move_down;
sprite[IDLE_RIGHT] = player_chicken_idle_right;
sprite[IDLE_UP] = player_chicken_idle_up;
sprite[IDLE_LEFT] = player_chicken_idle_left;
sprite[IDLE_DOWN] = player_chicken_idle_down;

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

particle_system = part_system_create_layer("particles", 0);

particle_trail = part_type_create();

part_type_sprite(particle_trail, movement_particle, 0, 0, 0);
part_type_life(particle_trail, 20, 25);
part_type_alpha3(particle_trail, 1, 1, 0);
part_type_size(particle_trail, 0.5, 2, 0, 0);
part_type_color3(particle_trail, color_01, color_02, color_03);
part_type_gravity(particle_trail, 0.01, 270);

alarm[1] = 5;

