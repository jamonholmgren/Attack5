/// @description Hit vehicle!

if (other.team != owner.team && armed <= 0) {
	effect_create_above(ef_explosion, x, y, 0, c_red);
	effect_create_below(ef_explosion, x, y, 1, c_white);
	
	// only hurt the other tank if we're actually playing
	if (global.game_active) other.hp -= max(5, damage - other.armor);
	
	// the other tank will now target me
	other.target = owner;
	other.targetX = owner.x;
	other.targetY = owner.y;
	
	instance_destroy();
}
