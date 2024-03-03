if (current_damage_cooldown <= 0) {
	with (other){
		hp -= (global.player_atk - defense);
	}
	current_damage_cooldown = damage_cooldown;
}


