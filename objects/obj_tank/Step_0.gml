/// @description Main control

// check for boundary
if (x < 0) x = 0;
if (x > room_width) x = room_width;
if (y < 0) y = 0;
if (y > room_height) y = room_height;

// check if we're disabled
if (hp < 0) hp = 0;
if (hp > 0) hp += 0.01; // regenerate HP if not dead
disabled = hp == 0;

// turn turret if commanded to do so by AI or human
if (turn_left) turret_direction += turret_turn_rate;
if (turn_right) turret_direction -= turret_turn_rate;

// align the main body with the turret
if (abs(speed) > 0) {
	need_turn = angle_difference(direction, turret_direction);
	if (abs(need_turn) < 2) {
		direction = turret_direction;
	} else {
		direction -= sign(need_turn) * turn_rate;
	}
}

// align the body sprite with the tank direction
image_angle = direction - 90;

// shooting
if (cooldown > 0) cooldown -= 1;
if (cooldown <= 0 && shoot) {
	bx = x + lengthdir_x(10, turret_direction);
	by = y + lengthdir_y(10, turret_direction);
	
	bullet = instance_create_layer(bx, by, "Bullets", obj_bullet);
	bullet.direction = turret_direction;
	bullet.owner = self;
		
	effect_create_above(ef_smoke, bx, by, 1, c_gray);
	
	cooldown = reload_time;
}

// health (only if the game is active)
if (global.game_active) {
	if (disabled) {
		// ded
		speed = 0;
		image_alpha -= 0.001;
		effect_create_above(ef_smokeup, x + random_range(-10, 10), y + random_range(0, -5), 0, c_yellow);
		effect_create_above(ef_smokeup, x + random_range(-10, 10), y + random_range(0, -5), 1, c_black);
		
		// if image_alpha <= 0, the controlling player will be dead
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
}
