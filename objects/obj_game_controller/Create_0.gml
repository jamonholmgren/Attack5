/// @description Game creation.
show_debug_overlay(true);

global.game_active = false;
menu_players = [
	instance_find(menu_player, 0),
	instance_find(menu_player, 1),
	instance_find(menu_player, 2),
	instance_find(menu_player, 3)
]

full_width = window_get_width();
full_height = window_get_height();

alarm_set(0, 1000);
