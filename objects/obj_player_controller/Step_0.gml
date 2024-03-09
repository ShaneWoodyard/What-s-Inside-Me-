if (!global.pause) {
if (instance_exists(obj_player_human)) {
	x = obj_player_human.x;
	y = obj_player_human.y;
} else if (instance_exists(obj_player_chicken)) {
	x = obj_player_chicken.x;
	y = obj_player_chicken.y;
} else if (instance_exists(obj_player_crab)) {
	x = obj_player_crab.x;
	y = obj_player_crab.y;
} else if (instance_exists(obj_player_frog)) {
	x = obj_player_frog.x;
	y = obj_player_frog.y;
} else if (instance_exists(obj_player_demon)) {
	x = obj_player_demon.x;
	y = obj_player_demon.y;
}

// if player change timer has ended
if (player_change_timer-- <= 0) {
	
	// create old player variable
	var old_player = 1;
	
	// check what type of player the player is and destroy that
	if (instance_exists(obj_player_human)) {
		instance_destroy(obj_player_human);
		old_player = 1;
	} else if (instance_exists(obj_player_chicken)) {
		instance_destroy(obj_player_chicken);
		old_player = 2;
	} else if (instance_exists(obj_player_crab)) {
		instance_destroy(obj_player_crab);
		old_player = 3;
	} else if (instance_exists(obj_player_frog)) {
		instance_destroy(obj_player_frog);
		old_player = 4;
	} else if (instance_exists(obj_player_demon)) {
		instance_destroy(obj_player_demon);
		old_player = 5;
	}
	
	// choose the next type of player
	var rng = irandom_range(1, 5);
	
	// make sure it isn't the same as the old player
	while (old_player == rng) {
		rng = irandom_range(1, 5);
	}
	
	switch (rng) {
		case 1:
			instance_create_layer(x, y, layer, obj_player_human);
			break;
		case 2:
			instance_create_layer(x, y, layer, obj_player_chicken);
			break;
		case 3:
			instance_create_layer(x, y, layer, obj_player_crab);
			break;
		case 4:
			instance_create_layer(x, y, layer, obj_player_frog);
			break;
		case 5:
			instance_create_layer(x, y, layer, obj_player_demon);
			break;
	}
	
	instance_create_layer(x, y, layer, obj_player_switch_particles);
	
	rng = irandom_range(10, 15);
	player_change_timer = rng * ONE_SECOND;
}

if (global.player_hp <= 0) {
	global.player_hp = 0;
	instance_destroy();
}
}



