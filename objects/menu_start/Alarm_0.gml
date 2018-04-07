/// @description Countdown.

if (countdown == 0) {
	// do nothing, clear it
} else {
	countdown -= 1;
	if (countdown <= 0) {
		// start the game
		start_game();
	} else {
		alarm_set(0, 60);
	}
}
