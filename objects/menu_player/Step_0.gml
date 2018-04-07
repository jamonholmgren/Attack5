/// @description Controls

if (vehicle != noone) {
	vehicle.turn_left = false;
	vehicle.turn_right = false;
	vehicle.shoot = false;
	
	if (image_alpha > 0) {	
		if (human) {
			vehicle.turn_left = keyboard_check(ord(left_key));
			vehicle.turn_right = keyboard_check(ord(right_key));
			vehicle.shoot = keyboard_check(ord(shoot_key));
		} else {
			vehicle.turn_left = true;
			vehicle.shoot = true;
		}
	} else {
		// player is dead!
	}
}
