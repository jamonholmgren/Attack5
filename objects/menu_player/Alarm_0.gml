/// @description Select target

if (global.game_active) {
	origx = vehicle.x;
	vehicle.x = -10000;
	target = instance_nearest(origx, vehicle.y, obj_vehicle);
	vehicle.x = origx;

	targetX = target.x;
	targetY = target.y;

	dist = point_distance(vehicle.x, vehicle.y, target.x, target.y);
	if (dist > 900 || dist < 100) {
		target = noone;
		targetX = random_range(500, room_width - 500);
		targetY = random_range(500, room_height - 500);
	}
}
alarm_set(0, 500);
