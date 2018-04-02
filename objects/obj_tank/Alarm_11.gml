/// @description Drop tank tracks
if (speed > 0) {
	new_track = instance_create_layer(x, y, layer, obj_track);
	new_track.direction = direction;
	new_track.image_angle = image_angle;
	new_track.depth = 1;
}

alarm_set(11, 20);
