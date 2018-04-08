/// @description Acquire target

if (target) {
	targetX = target.x + lengthdir_x(target.speed * 30, target.direction);
	targetY = target.y + lengthdir_y(target.speed * 30, target.direction);
}

alarm_set(1, 5);
