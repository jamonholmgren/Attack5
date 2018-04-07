
lid = layer_get_id("Tanks");

p = [];
num_players = 0;

for (i = 0; i < 4; i += 1) {
	p[i] = instance_find(menu_player, i);
	if (p[i].human) num_players += 1;
	layer_add_instance(lid, p[i].vehicle)
}

// full screen
full_width = window_get_width();
full_height = window_get_height();
half_width = full_width / 2;
half_height = full_height/ 2;

obj_camera_1.follow = p[0].vehicle;
obj_camera_2.follow = p[1].vehicle;
obj_camera_3.follow = p[2].vehicle;
obj_camera_4.follow = p[3].vehicle;

global.game_active = true;
