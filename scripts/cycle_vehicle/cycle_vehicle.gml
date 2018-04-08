mp = argument0;

with (mp) {
	vehicles = [
		obj_hotchkiss,
		obj_t34,
		obj_panzer4
	];

	if (vehicle == noone) {
		new_vehicle = vehicles[0];
	} else {
		for (i = 0; i < array_length_1d(vehicles); i += 1) {
			if (vehicle.object_index == vehicles[i]) {
				if (i == array_length_1d(vehicles) - 1) {
					new_vehicle = vehicles[0];
				} else {
					new_vehicle = vehicles[i + 1];
				}
				break;
			}
		}
		// get rid of old vehicle
		instance_destroy(vehicle);
	}

	vehicle = instance_create_layer(x + (sprite_width / 2), y + (sprite_height - 50), layer, new_vehicle);
	vehicle.direction = 90;
	vehicle.speed = 0;
	vehicle.depth = -10;
	vehicle.persistent = true;
}