invincible_cooldown = 30;

if (current_invincible_cooldown <= 0) {
	hp -= global.player_atk;
	current_invincible_cooldown = invincible_cooldown;
}