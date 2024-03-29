if (instance_exists(obj_player_crab)) {
	image_angle = point_direction(obj_player_crab.x, obj_player_crab.y, mouse_x, mouse_y);
	direction = image_angle;
}

first_run = true;

bubble_spd = 1;

loop_alarm_min = 3;
loop_alarm_max = 5;

color_01 = make_color_rgb(0, 130, 196);
color_02 = make_color_rgb(0, 174, 240);
color_03 = make_color_rgb(150, 230, 255);

particle_system = part_system_create_layer("particles", 0);

particle_trail = part_type_create();
particle_bubble = part_type_create();

// particle trail 
part_type_sprite(particle_trail, movement_particle, 0, 0, 0);
part_type_life(particle_trail, 15, 20);
part_type_alpha3(particle_trail, 1, 1, 0);
part_type_size(particle_trail, 0.5, 1, 0, 0);
part_type_color3(particle_trail, color_01, color_02, color_03);
part_type_gravity(particle_trail, 0.01, 270);

// particle sword
part_type_sprite(particle_bubble, bubble, 0, 0, 0);
part_type_life(particle_bubble, 300, 300);
part_type_size(particle_bubble, 1, 1, 0, 0);
part_type_speed(particle_bubble, bubble_spd, bubble_spd, 0, 0);
part_type_orientation(particle_bubble, image_angle - 10, image_angle + 10, 0.1, 0, 0);
part_type_direction(particle_bubble, image_angle, image_angle, 0, 0);

alarm[1] = 1;
destroy_timer = BULLET_DESTROY;