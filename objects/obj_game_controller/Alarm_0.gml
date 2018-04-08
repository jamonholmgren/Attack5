/// @description Check for end game scenario.

if (global.game_active) {
	var alive_team = -1;
	var teams = [0, 0, 0, 0];
	var p;
	for (p = 0; p < 4; p += 1) {
		v = menu_players[p].vehicle;
		teams[v.team] = (v.hp > 0) ? 1 : 0;
		if (v.hp > 0) alive_team = v.team;
	}

	if (teams[0] + teams[1] + teams[2] + teams[3] > 1) {
		// ignore, more than one alive
		alarm_set(0, 200);
	} else {
		show_message_async("Team " + string(alive_team) + " won!");
		game_restart();
	}
}
