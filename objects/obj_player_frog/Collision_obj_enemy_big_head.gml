if (current_invincible_cooldown <= 0) {
	with (other) {
		global.player_hp -= attack;
	}
	current_invincible_cooldown = invincible_cooldown;
	blend = c_red; 
	blendtime = 30;	
}

