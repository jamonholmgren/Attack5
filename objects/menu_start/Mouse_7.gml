/// @description Start countdown.

if (countdown > 0) {
	countdown = 0;
} else {
	countdown = 5;
}

alarm_set(0, 60);
