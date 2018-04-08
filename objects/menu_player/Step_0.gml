/// @description Controls

if (vehicle != noone) {
	vehicle.turn_left = false;
	vehicle.turn_right = false;
	vehicle.shoot = false;
	
	if (vehicle.image_alpha > 0) {
		if (human) {			
			vehicle.turn_left = keyboard_check(lk);
			vehicle.turn_right = keyboard_check(rk);
			vehicle.shoot = keyboard_check(sk);
		} else {
			if (target || targetX > 0 || targetY > 0) {
				// find dir to it
				dir = angle_difference(vehicle.turret_direction, point_direction(vehicle.x, vehicle.y, targetX, targetY));
				if (dir < 0) vehicle.turn_left = true;
				if (dir > 0) vehicle.turn_right = true;
				if (abs(dir) < 10 && target) vehicle.shoot = true;
			}
		}
	} else {
		// player is dead!
	}
}
