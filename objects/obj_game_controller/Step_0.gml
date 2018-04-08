/// @description Camera code

if (global.game_active) {
	// find borders of all vehicles
	minX = min(
		menu_players[0].vehicle.x,
		menu_players[1].vehicle.x,
		menu_players[2].vehicle.x,
		menu_players[3].vehicle.x,
	);
	maxX = max(
		menu_players[0].vehicle.x,
		menu_players[1].vehicle.x,
		menu_players[2].vehicle.x,
		menu_players[3].vehicle.x,
	);
	minY = min(
		menu_players[0].vehicle.y,
		menu_players[1].vehicle.y,
		menu_players[2].vehicle.y,
		menu_players[3].vehicle.y,
	);
	maxY = max(
		menu_players[0].vehicle.y,
		menu_players[1].vehicle.y,
		menu_players[2].vehicle.y,
		menu_players[3].vehicle.y,
	);

	padding = 1000;

	cw = max(400, (maxX - minX) + padding);
	ch = max(300, (maxY - minY) + padding);
	
	cx = mean(maxX, minX) - (cw / 2);
	cy = mean(maxY, minY) - (ch / 2);
	
	newRatio = max(cw / full_width, ch / full_height);
	ratio += (newRatio - ratio) * 0.01;

	camera_set_view_pos(view_camera[0], cx, cy);
	camera_set_view_size(view_camera[0], full_width * ratio, full_height * ratio);
}
