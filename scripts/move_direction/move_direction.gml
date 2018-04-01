///move_direction(obj, dir, dist)

obj = argument0;
dir = argument1;
dist = argument2;

with (obj) {
	x += lengthdir_x(dist, dir);
	y += lengthdir_y(dist, dir);
}
