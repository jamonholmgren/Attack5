/// @description Main control

// check for boundary
if (x < 0) x = 0;
if (x > room_width) x = room_width;
if (y < 0) y = 0;
if (y > room_height) y = room_height;

turn_left = keyboard_check(ord(key_left));
turn_right = keyboard_check(ord(key_right));
shoot = keyboard_check(ord(key_shoot));

if (hp < 0) hp = 0;
if (hp > 0) hp += 0.01; // regenerate HP if not dead
disabled = hp == 0;

// ai control turns back on if they don't press something in 100 steps
ai_control_countdown -= 1;
if (ai_control_countdown <= 0) {
	ai_control = true;
	ai_control_countdown = 0;
}

// if they press something, turn off AI control
if (turn_left || turn_right || shoot) {
	ai_control = false;
	// set an alarm to turn it back on if they don't control it in 100 steps
	ai_control_countdown = 400;
}

if (ai_control) {
	turn_left = true;
	shoot = true;
}

if (turn_left) {
	turret_direction += turret_turn_rate;
}

if (turn_right) {
	turret_direction -= turret_turn_rate;
}

need_turn = angle_difference(direction, turret_direction);

if (!disabled) {
	if (abs(need_turn) < 2) {
		direction = turret_direction;
	} else {
		direction -= sign(need_turn) * turn_rate;
	}
}

image_angle = direction - 90;

// shooting
if (cooldown > 0) cooldown -= 1;
if (cooldown <= 0 && shoot) {
	bx = x + lengthdir_x(10, turret_direction);
	by = y + lengthdir_y(10, turret_direction);
	
	bullet = instance_create_layer(bx, by, layer, obj_bullet);
	bullet.direction = turret_direction;
	bullet.owner = self
		
	effect_create_above(ef_smoke, bx, by, 1, c_gray);
	
	cooldown = reload_time;
}

// health
if (hp <= 0) {
	// ded
	speed = 0;
	image_alpha -= 0.001;
	effect_create_above(ef_smokeup, x + random_range(-10, 10), y + random_range(0, -5), 0, c_yellow);
	effect_create_above(ef_smokeup, x + random_range(-10, 10), y + random_range(0, -5), 1, c_black);
	if (image_alpha <= 0.001) {
		instance_destroy();
	}
} else if(hp <= 30) {
	// smoking and slow
	speed = 1;
	effect_create_above(ef_smokeup, x + random_range(-10, 10), y + random_range(0, -5), 0, c_gray);
} else if(hp <= 50) {
	// lightly smoking and slightly slower
	speed = 2;
	effect_create_above(ef_smokeup, x + random_range(-5, 5), y + random_range(0, -2), 0, c_white);
} else {
	speed = max_speed;
}
