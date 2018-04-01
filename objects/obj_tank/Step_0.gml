/// @description Main control

// check for boundary
if (x < 0) x = 0;
if (x > room_width) x = room_width;
if (y < 0) y = 0;
if (y > room_height) y = room_height;

turn_left = keyboard_check(ord(key_left));
turn_right = keyboard_check(ord(key_right));
shoot = keyboard_check(ord(key_shoot));

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

if (abs(need_turn) < 2) {
	direction = turret_direction;
} else {
	direction -= sign(need_turn) * turn_rate;
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
