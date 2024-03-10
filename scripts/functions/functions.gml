function enemy_death(exp_min, exp_max){
	global.kills++;
	var experience = irandom_range(exp_min, exp_max);
	global.player_exp += experience;
	check_level_up();
}

function check_level_up() {
	var req_exp = (global.req_exp * global.player_level);
	if (global.player_exp >= req_exp) {
		global.player_level++;
		global.req_exp += 5;
	} 
}