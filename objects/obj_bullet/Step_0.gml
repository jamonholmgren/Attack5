/// @description Trail of smoke.

if (weapon == "88mm") {
	effect_create_above(ef_spark, x, y, 0.1, c_gray);
} else if (weapon == "20mm") {
	effect_create_above(ef_spark, x, y, 0.1, c_yellow);	
}

if (armed > 0) armed -= 1;
