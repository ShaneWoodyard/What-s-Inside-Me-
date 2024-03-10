draw_set_font(fnt_open_sans_PX_bold);
draw_set_color(c_black);
draw_set_halign(fa_left);

leveled_up = "You Leveled Up!";
upgrade_text = "HP\nAttack\nFire Rate\nMove Speed\nDash Speed\nDash Cooldown\nInvinciblity";
upgrade_numbers = string_concat(string(global.hp_upgrades), "\n", string(global.attack_upgrades), "\n",
								string(global.fire_rate_upgrades), "\n", string(global.move_speed_upgrades),
								"\n", string(global.dash_speed_upgrades), "\n", string(global.dash_cooldown_upgrades),
								"\n", string(global.invincible_cooldown_upgrades));
