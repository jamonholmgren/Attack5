
lid = layer_get_id("Tanks");

p = [];
num_players = 0;

for (i = 0; i < 4; i += 1) {
	p[i] = instance_find(menu_player, i);
	pv = p[i].vehicle;
	if (p[i].human) num_players += 1;
	pv.x = 500;
	pv.y = 500;
	if (i == 1 || i == 2) pv.x = room_width - 500;
	if (i == 3 || i == 2) pv.y = room_height - 500;
	pv.turret_direction = (-90 * i) - 45;
	pv.direction = (-90 * i) - 45;
	layer_add_instance(lid, p[i].vehicle)
}

// full screen
full_width = window_get_width();
full_height = window_get_height();
half_width = full_width / 2;
half_height = full_height/ 2;

global.game_active = true;
