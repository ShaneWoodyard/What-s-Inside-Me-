// actual speed
x_spd = 0;
y_spd = 0;

// speed multipliers
move_spd = 1;
diag_move_spd_mult = 0.707; // multiply by this when going diagonal
dash_spd = 30;

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