/// @description Select target

if (global.game_active) {
	var closest_enemy = 10000;
	
	var inst;
	for (i = 0; i < instance_number(obj_vehicle); i += 1) {
		inst = instance_find(obj_vehicle, i);
		if (inst.team == vehicle.team || inst.hp <= 0) continue;
		
		var d = point_distance(vehicle.x, vehicle.y, inst.x, inst.y);
		if (d < closest_enemy) {
			closest_enemy = d;
			target = inst;
		}
	}
	
	if (target) {
		targetX = target.x;
		targetY = target.y;
	}
	
	if (closest_enemy > 900 || closest_enemy < 100) {
		target = noone;
		targetX = random_range(500, room_width - 500);
		targetY = random_range(500, room_height - 500);
	}
}

alarm_set(0, 200);
