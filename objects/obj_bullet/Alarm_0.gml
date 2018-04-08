/// @description Destruct.

instance_destroy();

if (weapon == "88mm") {
	effect_create_above(ef_explosion, x, y, 0, c_red);
	effect_create_below(ef_explosion, x, y, 1, c_white);
} else if (weapon == "20mm") {
	effect_create_above(ef_explosion, x, y, 0, c_black);
}