/// @description Destruct.

instance_destroy();

effect_create_above(ef_explosion, x, y, 0, c_red);
effect_create_below(ef_explosion, x, y, 1, c_white);
