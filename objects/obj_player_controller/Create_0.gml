// player main stats
global.player_max_hp = 25;
global.player_hp = 25;
global.player_atk = 5;
global.player_level = 1;
global.player_exp = 0;
global.kills = 0;

// player upgrades
global.hp_upgrades = 0;
global.attack_upgrades = 0;
global.fire_rate_upgrades = 0;
global.dash_cooldown_upgrades = 0;
global.dash_speed_upgrades = 0;
global.move_speed_upgrades = 0;
global.invincible_cooldown_upgrades = 0;

// set base exp per level
global.req_exp = 25;

player_change_timer = 15 * ONE_SECOND;

instance_create_layer(x, y, layer, obj_player_human);