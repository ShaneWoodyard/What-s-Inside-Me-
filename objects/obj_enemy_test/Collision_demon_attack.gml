invincible_cooldown = 60;

if (current_invincible_cooldown <= 0) {
	hp -= (global.player_atk - defense);
	current_invincible_cooldown = invincible_cooldown;
}