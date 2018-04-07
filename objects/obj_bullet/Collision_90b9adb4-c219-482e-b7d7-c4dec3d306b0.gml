/// @description Hit tank!

if (other != owner && armed <= 0) {
	instance_destroy();
	effect_create_above(ef_explosion, x, y, 0, c_red);
	effect_create_below(ef_explosion, x, y, 1, c_white);
	
	// only hurt the other tank if we're actually playing
	if (global.game_active) other.hp -= damage;
}
